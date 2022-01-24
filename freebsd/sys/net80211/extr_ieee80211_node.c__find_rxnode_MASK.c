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
struct ieee80211_node_table {int dummy; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_frame_min {int /*<<< orphan*/  i_addr2; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee80211_frame_min const*) ; 
 struct ieee80211_node* FUNC1 (struct ieee80211_node_table*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline struct ieee80211_node *
FUNC2(struct ieee80211_node_table *nt,
    const struct ieee80211_frame_min *wh)
{
	if (FUNC0(wh))
		return NULL;		/* spam bcast probe req to all vap's */
	return FUNC1(nt, wh->i_addr2);
}