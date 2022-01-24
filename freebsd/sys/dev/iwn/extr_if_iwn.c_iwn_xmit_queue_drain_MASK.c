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
struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct iwn_softc {int /*<<< orphan*/  sc_xmit_queue; } ;
struct ieee80211_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct iwn_softc *sc)
{
	struct mbuf *m;
	struct ieee80211_node *ni;

	FUNC0(sc);
	while ((m = FUNC3(&sc->sc_xmit_queue)) != NULL) {
		ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
		FUNC1(ni);
		FUNC2(m);
	}
}