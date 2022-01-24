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
struct sta_table {int /*<<< orphan*/  st_entry; } ;
struct ieee80211_scan_state {struct sta_table* ss_priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int IEEE80211_M_NOWAIT ; 
 int IEEE80211_M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (struct sta_table*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sta_table*,char*) ; 
 int /*<<< orphan*/  M_80211_SCAN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nrefs ; 

__attribute__((used)) static int
FUNC4(struct ieee80211_scan_state *ss)
{
	struct sta_table *st;

	st = (struct sta_table *) FUNC0(sizeof(struct sta_table),
		M_80211_SCAN,
		IEEE80211_M_NOWAIT | IEEE80211_M_ZERO);
	if (st == NULL)
		return 0;
	FUNC2(st, "scantable");
	FUNC1(st, "scangen");
	FUNC3(&st->st_entry);
	ss->ss_priv = st;
	nrefs++;			/* NB: we assume caller locking */
	return 1;
}