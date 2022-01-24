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
struct wlan_iface {int /*<<< orphan*/  roamparams; int /*<<< orphan*/  wname; } ;
struct ieee80211_roamparams_req {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_IOC_ROAM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 

int
FUNC1(struct wlan_iface *wif)
{
	int val = 0;
	size_t argsize;

	argsize = sizeof(struct ieee80211_roamparams_req);
	if (FUNC0(wif->wname, IEEE80211_IOC_ROAM, &val,
	    &wif->roamparams, &argsize, 0) < 0)
		return (-1);

	return (0);
}