#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct wlan_iface {int reg_domain; char* country_code; } ;

/* Variables and functions */
#define  LEAF_wlanIfaceCountryCode 132 
#define  LEAF_wlanIfaceDesiredBssid 131 
#define  LEAF_wlanIfaceDesiredChannel 130 
#define  LEAF_wlanIfaceDesiredSsid 129 
#define  LEAF_wlanIfaceRegDomain 128 
 int FUNC0 (struct wlan_iface*,char*) ; 
 int FUNC1 (struct wlan_iface*,char*,int) ; 
 int FUNC2 (struct wlan_iface*,int) ; 
 int FUNC3 (struct wlan_iface*,char*,int) ; 
 int FUNC4 (struct wlan_iface*,int,int) ; 
 int FUNC5 (int) ; 

int
FUNC6(struct wlan_iface *wif, int which, int val,
    char *strval, int len)
{
	int op;

	switch (which) {
		case LEAF_wlanIfaceCountryCode:
			return (FUNC1(wif, strval,
			    wif->reg_domain));
		case LEAF_wlanIfaceRegDomain:
			return (FUNC1(wif, wif->country_code,
			    val));
		case LEAF_wlanIfaceDesiredSsid:
			return (FUNC3(wif, strval, len));
		case LEAF_wlanIfaceDesiredChannel:
			return (FUNC2(wif, val));
		case LEAF_wlanIfaceDesiredBssid:
			return (FUNC0(wif, strval));
		default:
			op = FUNC5(which);
			return (FUNC4(wif, op, val));
	}

	return (-1);
}