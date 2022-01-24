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
struct ieee80211com {int /*<<< orphan*/  (* ic_node_cleanup ) (struct ieee80211_node*) ;} ;
struct ieee80211_node {int /*<<< orphan*/  ni_psq; int /*<<< orphan*/  ni_ies; struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_80211_NODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_node *ni)
{
	struct ieee80211com *ic = ni->ni_ic;

	FUNC3(ni);
	ic->ic_node_cleanup(ni);
	FUNC1(&ni->ni_ies);
	FUNC2(&ni->ni_psq);
	FUNC0(ni, M_80211_NODE);
}