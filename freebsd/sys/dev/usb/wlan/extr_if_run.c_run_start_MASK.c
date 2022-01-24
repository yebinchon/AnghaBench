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
struct run_softc {int sc_flags; int /*<<< orphan*/  sc_snd; } ;
struct TYPE_2__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (struct run_softc*,int /*<<< orphan*/ ) ; 
 int RUN_RUNNING ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 scalar_t__ FUNC3 (struct run_softc*,struct mbuf*,struct ieee80211_node*) ; 

__attribute__((used)) static void
FUNC4(struct run_softc *sc)
{
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC0(sc, MA_OWNED);

	if ((sc->sc_flags & RUN_RUNNING) == 0)
		return;

	while ((m = FUNC1(&sc->sc_snd)) != NULL) {
		ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
		if (FUNC3(sc, m, ni) != 0) {
			FUNC2(&sc->sc_snd, m);
			break;
		}
	}
}