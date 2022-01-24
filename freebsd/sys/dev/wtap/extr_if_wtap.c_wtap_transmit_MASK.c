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
struct wtap_vap {int dummy; } ;
struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {int dummy; } ;
struct ieee80211_node {struct ieee80211vap* ni_vap; } ;

/* Variables and functions */
 int M_TXCB ; 
 struct wtap_vap* FUNC0 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*,struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (struct wtap_vap*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC7(struct ieee80211com *ic, struct mbuf *m)
{
	struct ieee80211_node *ni =
	    (struct ieee80211_node *) m->m_pkthdr.rcvif;
	struct ieee80211vap *vap = ni->ni_vap;
	struct wtap_vap *avp = FUNC0(vap);

	if(ni == NULL){
		FUNC5("m->m_pkthdr.rcvif is NULL we cant radiotap_tx\n");
	}else{
		if (FUNC3(vap))
			FUNC4(vap, m);
	}
	if (m->m_flags & M_TXCB)
		FUNC2(ni, m, 0);
	FUNC1(ni);
	return FUNC6(avp, m);
}