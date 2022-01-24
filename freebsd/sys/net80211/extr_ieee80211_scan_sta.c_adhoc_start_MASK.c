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
struct sta_table {int st_newscan; int /*<<< orphan*/  st_scangen; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211_scan_state {scalar_t__ ss_mindwell; scalar_t__ ss_maxdwell; struct sta_table* ss_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  adhocScanTable ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_scan_state*,struct ieee80211vap*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct ieee80211_scan_state *ss, struct ieee80211vap *vap)
{
	struct sta_table *st = ss->ss_priv;
	
	FUNC0(ss, vap, adhocScanTable);

	if (ss->ss_mindwell == 0)
		ss->ss_mindwell = FUNC1(200);	/* 200ms */
	if (ss->ss_maxdwell == 0)
		ss->ss_maxdwell = FUNC1(200);	/* 200ms */

	st->st_scangen++;
	st->st_newscan = 1;

	return 0;
}