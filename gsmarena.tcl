#######################################################################################################
## GsmArena.tcl 1.0  (26/11/2019)  			  Copyright 2008 - 2019 @ WwW.TCLScripts.NET ##
##                        _   _   _   _   _   _   _   _   _   _   _   _   _   _                      ##
##                       / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \                     ##
##                      ( T | C | L | S | C | R | I | P | T | S | . | N | E | T )                    ##
##                       \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/ \_/                     ##
##                                                                                                   ##
##                                      ® BLaCkShaDoW Production ®                                   ##
##                                                                                                   ##
##                                              PRESENTS                                             ##
##									                           ® ##
############################################  GSM ARENA TCL   #########################################
##									                             ##
##  DESCRIPTION: 							                             ##
##  Gives detailed information about mobile phones. You can view the whole information or by	     ##
##  using one or more options available								     ##
##									                             ##
##  Tested on Eggdrop v1.8.3 (Debian Linux 3.16.0-4-amd64) Tcl version: 8.6.6                        ##
##									                             ##
#######################################################################################################
##									                             ##
##  INSTALLATION: 							                             ##
##     ++ http & json packages are REQUIRED for this script to work.                                 ##
##     ++ Edit the gsmarena.tcl script and place it into your /scripts directory,           	     ##
##     ++ add "source scripts/gsmarena.tcl" to your eggdrop config and rehash the bot.       	     ##
##									                             ##
#######################################################################################################
##									                             ##
##  OFFICIAL LINKS:                                                                                  ##
##   E-mail      : BLaCkShaDoW[at]tclscripts.net                                                     ##
##   Bugs report : http://www.tclscripts.net                                                         ##
##   GitHub page : https://github.com/tclscripts/ 			                             ##
##   Online help : irc://irc.undernet.org/tcl-help                                                   ##
##                 #TCL-HELP / UnderNet        	                                                     ##
##                 You can ask in english or romanian                                                ##
##									                             ##
##     paypal.me/DanielVoipan = Please consider a donation. Thanks!                                  ##
##									                             ##
#######################################################################################################
##									                             ##
##                           You want a customised TCL Script for your eggdrop?                      ##
##                                Easy-peasy, just tell me what you need!                            ##
##                I can create almost anything in TCL based on your ideas and donations.             ##
##                  Email blackshadow@tclscripts.net or info@tclscripts.net with your                ##
##                    request informations and I'll contact you as soon as possible.                 ##
##									                             ##
#######################################################################################################
##									                             
##  COMMANDS, ACTIVATION and EXAMPLES                                                                             
##	To activate use : .set or .chanset #channel +gsmarena
##								                            
##	!gsm <mobile name> | <number> (taken from the list) | <slug> [options] | help
##
##
##If you dont want to see the whole specs of your desired phone,
##you can specify them after the <slug> or <number>
##
##Options available:
##network launch body display platform memory main_camera selfie_camera sound comms features battery misc camera
##
##Usage:
##
##[22:01:47] <@BLaCkShaDoW> !gsm samsung s10
##[22:01:52] <@BT> [GSM] #1.samsung_galaxy_s10_plus_-9535, #2.samsung_galaxy_s10-9536, #3.samsung_galaxy_s10e-9537, #4.samsung_galaxy_s10_lite-9917, #5.samsung_galaxy_s10_5g-9588, #6.samsung_s100-313
#[22:01:53] <@BT> [GSM] Use !gsm <slug> or <number> to get info about the phone.
##
##[22:02:36] <@BLaCkShaDoW> !gsm 1
##[22:02:39] <@BT> [PHONE] Samsung Galaxy S10+
##[22:02:40] <@BT> [IMG] https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-s10-plus-new.jpg
##[22:02:41] <@BT> [SOUND] loudspeaker_: Yes, with stereo speakers 35mm_jack_: Yes | 32-bit/384kHz audio  Active noise cancellation with dedicated mic  Dolby Atmos sound  Tuned by AKG
##[22:02:44] <@BT> [BATTERY] : Non-removable Li-Ion 4100 mAh battery charging: Fast battery charging 15W  USB Power Delivery 2.0  Fast Qi/PMA wireless charging 15W  Power bank/Reverse wireless charging 9W
##[22:02:47] <@BT> [DISPLAY] type: Dynamic AMOLED capacitive touchscreen, 16M colors size: 6.4 inches, 103.8 cm2 (~88.9% screen-to-body ratio) resolution: 1440 x 3040 pixels, 19:9 ratio (~522 ppi density) ##protection: Corning Gorilla Glass 6 | HDR10+  Always-on display
##.......
##[22:06:16] <@BLaCkShaDoW> !gsm 1 main_camera
##[22:06:18] <@BT> [PHONE] Samsung Galaxy S10+
##[22:06:19] <@BT> [IMG] https://fdn2.gsmarena.com/vv/bigpic/samsung-galaxy-s10-plus-new.jpg
##[22:06:20] <@BT> [MAIN CAMERA] triple: 12 MP, f/1.5-2.4, 26mm (wide), 1/2.55", 1.4µm, Dual Pixel PDAF, OIS  12 MP, f/2.4, 52mm (telephoto), 1/3.6", 1.0µm, AF, OIS, 2x optical zoom  16 MP, f/2.2, 12mm ##(ultrawide), 1.0µm, Super Steady video features: LED flash, auto-HDR, panorama video: 2160p@60fps (no EIS), 2160p@30fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, dual-video rec., stereo sound rec., gyro-EIS ##&OIS
##
##
##								BLaCkShaDoW Production
#######################################################################################################
##									                             ##
##  LICENSE:                                                                                         ##
##   This code comes with ABSOLUTELY NO WARRANTY.                                                    ##
##                                                                                                   ##
##   This program is free software; you can redistribute it and/or modify it under the terms of      ##
##   the GNU General Public License version 3 as published by the Free Software Foundation.          ##
##                                                                                                   ##
##   This program is distributed WITHOUT ANY WARRANTY; without even the implied warranty of          ##
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                                            ##
##   USE AT YOUR OWN RISK.                                                                           ##
##                                                                                                   ##
##   See the GNU General Public License for more details.                                            ##
##        (http://www.gnu.org/copyleft/library.txt)                                                  ##
##                                                                                                   ##
##  			          Copyright 2008 - 2019 @ WwW.TCLScripts.NET                         ##
##                                                                                                   ##
#######################################################################################################

#######################################################################################################
###                               CONFIGURATION FOR GSM ARENA TCL	                            ###
#######################################################################################################

#Set here the flags for cmd usage
#
##
set gsm(flags_needed) "mn|MN"


#Here you can set the maximum number of entries to show on search
#
##
set gsm(search_entries) "10"

#Uppon search the eggdrop will store the data for the current user
#for a couple of minutes so you can use !gsm <number> to get info
#about a phone. The data ofcourse will be replaced if another search is done
#Set here the userhost to use uppon search
#
###

#1 - *!*@host
#2 - *!user@host
#3 - nick!user@host
#4 - nick!*@*
#5 - *!user@*

set gsm(user_host) "1"

#How many minutes the data should be saved for the user ?
#Use 0 if you want to expire on restart or kill.
#
###
set gsm(expire_data) "5"

#######################################################################################################
###                       DO NOT MODIFY HERE UNLESS YOU KNOW WHAT YOU'RE DOING                      ###
#######################################################################################################


setudef flag gsmarena
package require http
package require json


bind pub $gsm(flags_needed) !gsm gsm:search


proc gsm:search {nick host hand chan arg} {
	global gsm
if {![channel get $chan gsmarena]} {
	return
}
	set search_text [lrange [split $arg] 0 end]
	set slug [lindex [split $arg] 0]
	set options [lrange [split $arg] 1 end]
	set mask [gsm:mask $gsm(user_host) $host $nick]
if {[string equal -nocase $slug "help"]} {
	putserv "PRIVMSG $chan :\[GSM\] Usage !gsm \002<mobile name>\002 | \002<number>\002 (taken from the list) | \002<slug>\002 \[options\]"
	putserv "PRIVMSG $chan :\[GSM\] Valid options : \002network launch body display platform memory main_camera selfie_camera sound comms features battery misc camera\002"
	return
}

if {[regexp {^[0-9]} $slug]} {
if {![info exists gsm(data_save:$mask)]} {	
	puthelp "PRIVMSG $chan :\[GSM\] You didnt search for anything or you search data expired."
	return	
}
	set slug_search [lsearch -nocase $gsm(data_save:$mask) "$slug:*"]
if {$slug_search == "-1"} {
	puthelp "PRIVMSG $chan :\[GSM\] The number is unavailable in your latest search."
	return
}
	set slug_entry [lindex $gsm(data_save:$mask) $slug_search]
	set split_entry [split $slug_entry ":"]
	set slug [lindex $split_entry 1]
	set data_slug [gsm:getdata $slug 1]
	gsm:slug_info $nick $chan $data_slug $slug $options
	return
} elseif {[regexp {[_]} $slug]} {
	set data_slug [gsm:getdata $slug 1]
	gsm:slug_info $nick $chan $data_slug $slug $options
	return
	}
	set counter 0
	set text ""
	set data_search [gsm:getdata $search_text 2]
	set json_data [gsm:getjson "data" $data_search]
	set llength [llength $json_data]
if {$llength == "1"} {
	set title [lindex $json_data 0]
	set slug [lindex $json_data 1]
} else {
if {[info exists gsm(data_save:$mask)]} {
	unset gsm(data_save:$mask)
}
	foreach line $json_data {
	set counter [expr $counter + 1]
if {$counter <= $gsm(search_entries)} {
	set title [lindex $line 1]
	set slug [lindex $line 3]
	lappend text \002\#$counter\002.$slug
	lappend gsm(data_save:$mask) $counter:$slug
			}
		}
foreach tmr [utimers] {
if {[string match "*gsm:unset_saved_data $mask*" [join [lindex $tmr 1]]]} {
	killutimer [lindex $tmr 2]
		}	
	}
if {[info exists gsm(data_save:$mask)]} {
if {$gsm(expire_data) > 0} {
	utimer [expr $gsm(expire_data) * 60] [list gsm:unset_saved_data $mask]
	}
}
	set text [join $text  ", "]
if {$text != ""} {
foreach w [gsm:wrap $text 440] {
	putserv "PRIVMSG $chan :\[GSM\] $w"
}
	putserv "PRIVMSG $chan :\[GSM\] Use \002!gsm <slug>\002 or \002<number>\002 to get info about the phone."
		} else {
	puthelp "PRIVMSG $chan :\[GSM\] Couldn't find anything related to \002$search_text\002"
		}
	}
}


# Credits
set gsm(projectName) "GsmArena.tcl"
set gsm(author) "BLaCkShaDoW"
set gsm(website) "wWw.TCLScriptS.NeT"
set gsm(email) "blackshadow\[at\]tclscripts.net"
set gsm(version) "v1.0"

###
proc gsm:slug_info {nick chan data slug options} {
	global gsm
if {[string match -nocase "*Fatal error*" $data]} {
	putserv "PRIVMSG $chan :\[GSM\] Couldn't find anything related to slug \002$slug\002. Did you typed it corectly ?"
	return
}
	array set data_list [list]
	set entries {network launch body display platform memory main_camera selfie_camera sound comms features battery misc camera}
	set phone_title [gsm:getjson "title" $data]
	set phone_data [gsm:getjson "data" $data]
	set phone_img [gsm:getjson "img" $data]

foreach e $entries {
if {$options != ""} {
if {[lsearch -nocase $options $e] < 0} {
	continue
	}
}
if {[string equal -nocase $e "main_camera"]} {
	set e "main camera"
} elseif {[string equal -nocase $e "main_camera"]} {
	set e "selfie camera"
}
	set get_item [gsm:get_it $e $phone_data]
if {$get_item != "-1"} {
	set data_list($e) $get_item
	}
}
if {$phone_title != "-1"} {
	putserv "PRIVMSG $chan :\[PHONE\] $phone_title"
}
if {$phone_img != "-1"} {
	putserv "PRIVMSG $chan :\[IMG\] $phone_img"
}
if  {[array size data_list] == "0"} {
	putserv "PRIVMSG $chan :\[GSM\] N/A (did you check if the option is correct ?)."
	putserv "PRIVMSG $chan :\[GSM\] End of phone info."
	return
}
foreach entry [array names data_list] {
	putserv "PRIVMSG $chan :\[[string toupper $entry]\] [gsm:filter [gsm:utf8 $data_list($entry)]]"
	}
	putserv "PRIVMSG $chan :\[GSM\] End of phone info."
}

###
proc gsm:get_it {type data} {
	global gsm
	set pos [lsearch -nocase $data $type]
if {$pos < 0} {
	return -1
}
	set pos_details [lindex $data [expr $pos + 1]]
	set llength [llength $pos_details]
for {set i 0} { $i < $llength } {incr i} {
if {[expr $i % 2] == 0} {
	lappend info \002[lindex $pos_details $i]:\002
		} else {
	lappend info [lindex $pos_details $i]
		}
	}
	return [string map {"<br>" "\002 | \002"} [join $info]]
}

###

proc gsm:utf8 {string} {
	global gsm 
   set map {}
    foreach {entity number} [regexp -all -inline {&#(\d+)} $string] {
        lappend map $entity [format \\u%04x [scan $number %d]]
    }
    set string [string map [subst -nocomm -novar $map] $string]
	return $string
 }


###
proc gsm:filter {string} {
	global gsm
	set text [string map {";&thinsp;" ""} $string]
	return $text
}


###
proc gsm:unset_saved_data {mask} {
	global gsm
if {[info exists gsm(data_save:$mask)]} {
	unset gsm(data_save:$mask)
	}
}

###
proc gsm:getdata {search type} {
	global gsm
switch $type {
	1 {
	set link "http://gsmarena-tcl.000webhostapp.com/index.php?slug=$search"
	}
	2 {
	set search [join $search "%20"]
	set link "http://gsmarena-tcl.000webhostapp.com/index.php?query=$search"
	}
}	
	set ipq [http::config -useragent "lynx"]
	set ipq [::http::geturl "$link" -timeout 100000] 
	set data [http::data $ipq]
	::http::cleanup $ipq
	return $data
}

###
proc gsm:getjson {get data} {
	global imdb
	set parse [::json::json2dict $data]
	set return ""
foreach {name info} $parse {
if {[string equal -nocase $name $get]} {
	set return $info
	break;
		}
	}
	return $return
}

###
proc gsm:wrap {str {len 100} {splitChr {,}}} { 
   set out [set cur {}]; set i 0 
   foreach word [split [set str][unset str] $splitChr] { 
     if {[incr i [string len $word]]>$len} { 
         lappend out [join $cur $splitChr] 
         set cur [list $word] 
         set i [string len $word] 
      } { 
         lappend cur $word 
      } 
      incr i 
   } 
   lappend out [join $cur $splitChr] 
}


###

proc gsm:mask {type uhost user} {
	global black
	set ident [lindex [split $uhost "@"] 0]
	set host [lindex [split $uhost @] 1]
switch $type {

1 {
	return "*!*@$host"
}
2 {
	return "*!$ident@$host"
}
3 {
	return "$user!$ident@$host"
}
4 {
	return "$user!*@*"
}
5 {
	return "*!$ident@*"
		}
	}
}

putlog "\002$gsm(projectName) $gsm(version)\002 coded by\002 $gsm(author)\002 ($gsm(website)): Loaded & initialised.."
