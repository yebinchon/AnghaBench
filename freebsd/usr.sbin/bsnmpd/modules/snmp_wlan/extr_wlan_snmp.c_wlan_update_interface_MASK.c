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
struct wlan_iface {scalar_t__ mode; } ;

/* Variables and functions */
 int LEAF_wlanHWMPMaxHops ; 
 int LEAF_wlanHWMPRootMode ; 
 int LEAF_wlanIfacePacketBurst ; 
 int LEAF_wlanIfaceTdmaBeaconInterval ; 
 int LEAF_wlanMeshPath ; 
 int LEAF_wlanMeshTTL ; 
 scalar_t__ WlanIfaceOperatingModeType_meshPoint ; 
 int /*<<< orphan*/  FUNC0 (struct wlan_iface*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_iface*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC3 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC5 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC6 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC7 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC8 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC9 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC10 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC11 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC12 (struct wlan_iface*) ; 
 int /*<<< orphan*/  FUNC13 (struct wlan_iface*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct wlan_iface*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wlan_iface*) ; 

__attribute__((used)) static int
FUNC16(struct wlan_iface *wif)
{
	int i;

	(void)FUNC1(wif, 0);
	(void)FUNC3(wif);
	for (i = LEAF_wlanIfacePacketBurst;
	    i <= LEAF_wlanIfaceTdmaBeaconInterval; i++)
		(void)FUNC0(wif, i);
	(void)FUNC9(wif);
	/*
	 * XXX: wlan_get_channel_list() not needed -
	 * fetched with wlan_get_driver_caps()
	 */
	(void)FUNC2(wif);
	(void)FUNC7(wif);
	(void)FUNC10(wif);
	(void)FUNC8(wif);
	(void)FUNC11(wif);
	(void)FUNC12(wif);
	(void)FUNC5(wif);
	(void)FUNC4(wif);
	(void)FUNC6(wif);

	if (wif->mode == WlanIfaceOperatingModeType_meshPoint) {
		for (i = LEAF_wlanMeshTTL; i <= LEAF_wlanMeshPath; i++)
			(void)FUNC14(wif, i);
		(void)FUNC15(wif);
		for (i = LEAF_wlanHWMPRootMode; i <= LEAF_wlanHWMPMaxHops; i++)
			(void)FUNC13(wif, i);
	}

	return (0);
}