#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct urtw_softc {int sc_flags; int sc_txtimer; int /*<<< orphan*/  sc_watchdog_ch; int /*<<< orphan*/  sc_tx_inactive; int /*<<< orphan*/  sc_snd; } ;
struct urtw_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {TYPE_2__* ni_vap; } ;
struct TYPE_4__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct urtw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*) ; 
 int /*<<< orphan*/  URTW_PRIORITY_NORMAL ; 
 int URTW_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct urtw_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 struct urtw_data* FUNC7 (struct urtw_softc*) ; 
 scalar_t__ FUNC8 (struct urtw_softc*,struct ieee80211_node*,struct mbuf*,struct urtw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  urtw_watchdog ; 

__attribute__((used)) static void
FUNC9(struct urtw_softc *sc)
{
	struct urtw_data *bf;
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC1(sc);

	if ((sc->sc_flags & URTW_RUNNING) == 0)
		return;

	while ((m = FUNC5(&sc->sc_snd)) != NULL) {
		bf = FUNC7(sc);
		if (bf == NULL) {
			FUNC6(&sc->sc_snd, m);
			break;
		}

		ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
		m->m_pkthdr.rcvif = NULL;

		if (FUNC8(sc, ni, m, bf, URTW_PRIORITY_NORMAL) != 0) {
			FUNC4(ni->ni_vap->iv_ifp,
			    IFCOUNTER_OERRORS, 1);
			FUNC0(&sc->sc_tx_inactive, bf, next);
			FUNC3(ni);
			break;
		}

		sc->sc_txtimer = 5;
		FUNC2(&sc->sc_watchdog_ch, hz, urtw_watchdog, sc);
	}
}