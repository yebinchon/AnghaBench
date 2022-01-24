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
typedef  int uint32_t ;
typedef  int uint ;
struct wlan_iface {int* wname; struct ieee80211_channel const* chanlist; } ;
struct ieee80211_channel {int dummy; } ;
struct asn_oid {int len; int* subs; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 

__attribute__((used)) static void
FUNC1(struct asn_oid *oid, uint sub,
    const struct wlan_iface *wif, const struct ieee80211_channel *channel)
{
	uint32_t i;

	oid->len = sub + FUNC0(wif->wname) + 2;
	oid->subs[sub] = FUNC0(wif->wname);
	for (i = 1; i <= FUNC0(wif->wname); i++)
		oid->subs[sub + i] = wif->wname[i - 1];
	oid->subs[sub + FUNC0(wif->wname) + 1] = (channel - wif->chanlist) + 1;
}