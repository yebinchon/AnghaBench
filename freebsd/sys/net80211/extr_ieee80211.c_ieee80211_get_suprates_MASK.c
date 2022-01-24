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
struct ieee80211com {struct ieee80211_rateset const* ic_sup_rates; } ;
struct ieee80211_rateset {int dummy; } ;
struct ieee80211_channel {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct ieee80211_channel const*) ; 

const struct ieee80211_rateset *
FUNC1(struct ieee80211com *ic, const struct ieee80211_channel *c)
{
	/* XXX does this work for 11ng basic rates? */
	return &ic->ic_sup_rates[FUNC0(c)];
}