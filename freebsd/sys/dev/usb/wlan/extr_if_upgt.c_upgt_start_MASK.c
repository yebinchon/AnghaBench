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
struct upgt_softc {int sc_flags; int sc_tx_timer; int /*<<< orphan*/  sc_tx_inactive; int /*<<< orphan*/  sc_snd; } ;
struct upgt_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211_node {TYPE_2__* ni_vap; } ;
struct TYPE_4__ {int /*<<< orphan*/  iv_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct upgt_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct upgt_softc*) ; 
 int UPGT_FLAG_INITDONE ; 
 int /*<<< orphan*/  FUNC2 (struct upgt_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  st_tx_inactive ; 
 struct upgt_data* FUNC7 (struct upgt_softc*) ; 
 scalar_t__ FUNC8 (struct upgt_softc*,struct mbuf*,struct ieee80211_node*,struct upgt_data*) ; 

__attribute__((used)) static void
FUNC9(struct upgt_softc *sc)
{
	struct upgt_data *data_tx;
	struct ieee80211_node *ni;
	struct mbuf *m;

	FUNC1(sc);

	if ((sc->sc_flags & UPGT_FLAG_INITDONE) == 0)
		return;

	while ((m = FUNC5(&sc->sc_snd)) != NULL) {
		data_tx = FUNC7(sc);
		if (data_tx == NULL) {
			FUNC6(&sc->sc_snd, m);
			break;
		}

		ni = (struct ieee80211_node *)m->m_pkthdr.rcvif;
		m->m_pkthdr.rcvif = NULL;

		if (FUNC8(sc, m, ni, data_tx) != 0) {
			FUNC4(ni->ni_vap->iv_ifp,
			    IFCOUNTER_OERRORS, 1);
			FUNC0(&sc->sc_tx_inactive, data_tx, next);
			FUNC2(sc, st_tx_inactive);
			FUNC3(ni);
			continue;
		}
		sc->sc_tx_timer = 5;
	}
}