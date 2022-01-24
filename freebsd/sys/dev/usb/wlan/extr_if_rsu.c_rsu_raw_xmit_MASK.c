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
struct rsu_softc {int /*<<< orphan*/  sc_running; } ;
struct rsu_data {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct rsu_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsu_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct rsu_softc*,struct rsu_data*) ; 
 struct rsu_data* FUNC4 (struct rsu_softc*) ; 
 scalar_t__ FUNC5 (struct rsu_softc*,struct ieee80211_node*,struct mbuf*,struct rsu_data*) ; 

__attribute__((used)) static int	
FUNC6(struct ieee80211_node *ni, struct mbuf *m, 
    const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = ni->ni_ic;
	struct rsu_softc *sc = ic->ic_softc;
	struct rsu_data *bf;

	/* prevent management frames from being sent if we're not ready */
	if (!sc->sc_running) {
		FUNC2(m);
		return (ENETDOWN);
	}
	FUNC0(sc);
	bf = FUNC4(sc);
	if (bf == NULL) {
		FUNC2(m);
		FUNC1(sc);
		return (ENOBUFS);
	}
	if (FUNC5(sc, ni, m, bf) != 0) {
		FUNC2(m);
		FUNC3(sc, bf);
		FUNC1(sc);
		return (EIO);
	}
	FUNC1(sc);

	return (0);
}