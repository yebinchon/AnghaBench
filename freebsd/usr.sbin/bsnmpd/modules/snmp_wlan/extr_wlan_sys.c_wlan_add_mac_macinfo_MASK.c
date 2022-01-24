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
struct wlan_mac_mac {int /*<<< orphan*/  mac_status; } ;
struct wlan_iface {int dummy; } ;
struct ieee80211req_maclist {int /*<<< orphan*/  ml_macaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  RowStatus_active ; 
 scalar_t__ FUNC0 (struct wlan_iface*,struct wlan_mac_mac*) ; 
 int /*<<< orphan*/  FUNC1 (struct wlan_mac_mac*) ; 
 struct wlan_mac_mac* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct wlan_iface *wif,
    const struct ieee80211req_maclist *ml)
{
	struct wlan_mac_mac *mmac;

	if ((mmac = FUNC2(ml->ml_macaddr)) == NULL)
		return (-1);

	mmac->mac_status = RowStatus_active;
	if (FUNC0(wif, mmac) < 0) {
		FUNC1(mmac);
		return (-1);
	}

	return (0);
}