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
struct ieee80211com {int dummy; } ;
struct ieee80211_node_table {int /*<<< orphan*/  nt_count; int /*<<< orphan*/ * nt_hash; int /*<<< orphan*/  nt_node; struct ieee80211com* nt_ic; } ;
struct ieee80211_node {struct ieee80211_node_table* ni_table; int /*<<< orphan*/  ni_macaddr; } ;

/* Variables and functions */
 int FUNC0 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node_table*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ieee80211_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ieee80211_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ni_hash ; 
 int /*<<< orphan*/  ni_list ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_node_table *nt,
    struct ieee80211_node *ni)
{
	struct ieee80211com *ic = nt->nt_ic;
	int hash;

	FUNC1(nt);

	hash = FUNC0(ic, ni->ni_macaddr);
	(void) ic;	/* XXX IEEE80211_NODE_HASH */
	FUNC3(&nt->nt_node, ni, ni_list);
	FUNC2(&nt->nt_hash[hash], ni, ni_hash);
	nt->nt_count++;
	ni->ni_table = nt;
}