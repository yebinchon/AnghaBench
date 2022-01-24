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
struct wlan_iface {scalar_t__ status; } ;

/* Variables and functions */
 scalar_t__ RowStatus_active ; 
 scalar_t__ WLAN_LIST_MAXAGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ wlan_chanlist_age ; 
 struct wlan_iface* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct wlan_iface*) ; 
 struct wlan_iface* FUNC3 (struct wlan_iface*) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct wlan_iface *wif;

	if ((FUNC0(NULL) - wlan_chanlist_age) <= WLAN_LIST_MAXAGE)
		return;

	for (wif = FUNC1(); wif != NULL;
	    wif = FUNC3(wif)) {
		if (wif->status != RowStatus_active)
			continue;
		(void)FUNC2(wif);
	}
	wlan_chanlist_age = FUNC0(NULL);
}