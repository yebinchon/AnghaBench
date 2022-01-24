#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int csum_flags; void* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211com {int ic_lintval; int /*<<< orphan*/  ic_stageq; } ;
struct ieee80211_node {int ni_intval; int /*<<< orphan*/  ni_macaddr; struct ieee80211com* ni_ic; } ;

/* Variables and functions */
 int CSUM_SND_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct mbuf*,int) ; 
 scalar_t__ FUNC2 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 

void
FUNC4(struct ieee80211_node *ni, struct mbuf *m)
{
	struct ieee80211com *ic = ni->ni_ic;

	/*
	 * Save the frame with an aging interval 4 times
	 * the listen interval specified by the station. 
	 * Frames that sit around too long are reclaimed
	 * using this information.
	 * XXX handle overflow?
	 * XXX per/vap beacon interval?
	 */
	FUNC0((m->m_pkthdr.csum_flags & CSUM_SND_TAG) == 0);
	m->m_pkthdr.rcvif = (void *)(uintptr_t)
	    FUNC2(ic, ni->ni_macaddr);
	(void) FUNC1(&ic->ic_stageq, m,
	    ((ni->ni_intval * ic->ic_lintval) << 2) / 1024);
	FUNC3(ni);
}