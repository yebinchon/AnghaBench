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
struct ieee80211_dfs_state {int /*<<< orphan*/  cac_timer; int /*<<< orphan*/  nol_timer; } ;
struct ieee80211com {int /*<<< orphan*/  ic_set_quiet; struct ieee80211_dfs_state ic_dfs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_set_quiet ; 

void
FUNC2(struct ieee80211com *ic)
{
	struct ieee80211_dfs_state *dfs = &ic->ic_dfs;

	FUNC1(&dfs->nol_timer, FUNC0(ic), 0);
	FUNC1(&dfs->cac_timer, FUNC0(ic), 0);

	ic->ic_set_quiet = null_set_quiet;
}