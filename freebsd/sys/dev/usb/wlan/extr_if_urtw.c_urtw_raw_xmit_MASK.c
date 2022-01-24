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
struct urtw_softc {int sc_flags; int sc_txtimer; int /*<<< orphan*/  sc_tx_inactive; } ;
struct urtw_data {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct urtw_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct urtw_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urtw_softc*) ; 
 int /*<<< orphan*/  URTW_PRIORITY_LOW ; 
 int URTW_RUNNING ; 
 int /*<<< orphan*/  FUNC2 (struct urtw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  next ; 
 struct urtw_data* FUNC4 (struct urtw_softc*) ; 
 scalar_t__ FUNC5 (struct urtw_softc*,struct ieee80211_node*,struct mbuf*,struct urtw_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct urtw_softc *sc = ic->ic_softc;
	struct urtw_data *bf;

	/* prevent management frames from being sent if we're not ready */
	if (!(sc->sc_flags & URTW_RUNNING)) {
		FUNC3(m);
		return ENETDOWN;
	}
	FUNC1(sc);
	bf = FUNC4(sc);
	if (bf == NULL) {
		FUNC3(m);
		FUNC2(sc);
		return (ENOBUFS);		/* XXX */
	}

	if (FUNC5(sc, ni, m, bf, URTW_PRIORITY_LOW) != 0) {
		FUNC0(&sc->sc_tx_inactive, bf, next);
		FUNC2(sc);
		return (EIO);
	}
	FUNC2(sc);

	sc->sc_txtimer = 5;
	return (0);
}