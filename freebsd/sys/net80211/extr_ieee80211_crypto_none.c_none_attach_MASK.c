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
typedef  void ieee80211vap ;
struct ieee80211_key {int dummy; } ;

/* Variables and functions */

__attribute__((used)) static void *
FUNC0(struct ieee80211vap *vap, struct ieee80211_key *k)
{
	return vap;		/* for diagnostics+stats */
}