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
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211com {int /*<<< orphan*/  (* ic_node_getsignal ) (struct ieee80211_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  ic_stageq; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_vap; int /*<<< orphan*/  ni_macaddr; struct ieee80211com* ni_ic; } ;
typedef  int /*<<< orphan*/  int8_t ;

/* Variables and functions */
 int /*<<< orphan*/  IEEE80211_MSG_WDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_node*,char*,char*) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ieee80211com*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211_node*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211_node *ni)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct mbuf *m, *next;
	int8_t rssi, nf;

	m = FUNC1(&ic->ic_stageq,
	    (void *)(uintptr_t) FUNC3(ic, ni->ni_macaddr));
	if (m == NULL)
		return;

	FUNC0(ni->ni_vap, IEEE80211_MSG_WDS, ni,
	    "%s", "flush wds queue");
	ic->ic_node_getsignal(ni, &rssi, &nf);
	for (; m != NULL; m = next) {
		next = m->m_nextpkt;
		m->m_nextpkt = NULL;
		FUNC2(ni, m, rssi, nf);
	}
}