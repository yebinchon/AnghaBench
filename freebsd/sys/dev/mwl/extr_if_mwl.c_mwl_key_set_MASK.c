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
struct ieee80211vap {int dummy; } ;
struct ieee80211_key {int /*<<< orphan*/  wk_macaddr; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211vap*,struct ieee80211_key const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(struct ieee80211vap *vap, const struct ieee80211_key *k)
{
	return (FUNC0(vap, k, k->wk_macaddr));
}