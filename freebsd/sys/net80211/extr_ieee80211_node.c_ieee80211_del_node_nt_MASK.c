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
struct ieee80211_node_table {scalar_t__ nt_count; int /*<<< orphan*/  nt_node; } ;
struct ieee80211_node {int /*<<< orphan*/ * ni_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node_table*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct ieee80211_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ni_hash ; 
 int /*<<< orphan*/  ni_list ; 

__attribute__((used)) static void
FUNC4(struct ieee80211_node_table *nt,
    struct ieee80211_node *ni)
{

	FUNC0(nt);

	FUNC3(&nt->nt_node, ni, ni_list);
	FUNC2(ni, ni_hash);
	nt->nt_count--;
	FUNC1(nt->nt_count >= 0,
	    ("nt_count is negative (%d)!\n", nt->nt_count));
	ni->ni_table = NULL;
}