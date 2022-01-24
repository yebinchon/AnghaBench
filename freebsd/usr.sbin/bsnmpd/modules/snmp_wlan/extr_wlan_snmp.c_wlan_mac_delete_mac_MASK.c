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
struct wlan_mac_mac {scalar_t__ mac_status; } ;
struct wlan_iface {int /*<<< orphan*/  mac_maclist; } ;

/* Variables and functions */
 scalar_t__ RowStatus_active ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct wlan_mac_mac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_mac_mac*) ; 
 scalar_t__ FUNC2 (struct wlan_iface*,struct wlan_mac_mac*) ; 
 int /*<<< orphan*/  wlan_mac_mac ; 
 int /*<<< orphan*/  wm ; 

__attribute__((used)) static int
FUNC3(struct wlan_iface *wif, struct wlan_mac_mac *wmm)
{
	if (wmm->mac_status == RowStatus_active &&
	    FUNC2(wif, wmm) < 0)
		return (-1);

	FUNC0(&wif->mac_maclist, wmm, wlan_mac_mac, wm);
	FUNC1(wmm);

	return (0);
}