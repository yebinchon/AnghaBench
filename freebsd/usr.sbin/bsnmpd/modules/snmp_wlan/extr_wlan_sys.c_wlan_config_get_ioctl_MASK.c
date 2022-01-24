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
struct wlan_iface {int dummy; } ;

/* Variables and functions */
#define  LEAF_wlanIfaceCountryCode 132 
#define  LEAF_wlanIfaceDesiredBssid 131 
#define  LEAF_wlanIfaceDesiredChannel 130 
#define  LEAF_wlanIfaceDesiredSsid 129 
#define  LEAF_wlanIfaceRegDomain 128 
 int FUNC0 (struct wlan_iface*) ; 
 int FUNC1 (struct wlan_iface*) ; 
 int FUNC2 (struct wlan_iface*) ; 
 int FUNC3 (struct wlan_iface*) ; 
 int FUNC4 (struct wlan_iface*,int) ; 
 int FUNC5 (int) ; 

int
FUNC6(struct wlan_iface *wif, int which)
{
	int op;

	switch (which) {
		case LEAF_wlanIfaceCountryCode:
			/* FALLTHROUGH */
		case LEAF_wlanIfaceRegDomain:
			return (FUNC1(wif));
		case LEAF_wlanIfaceDesiredSsid:
			return (FUNC3(wif));
		case LEAF_wlanIfaceDesiredChannel:
			return (FUNC2(wif));
		case LEAF_wlanIfaceDesiredBssid:
			return (FUNC0(wif));
		default:
			op = FUNC5(which);
			return (FUNC4(wif, op));
	}

	return (-1);
}