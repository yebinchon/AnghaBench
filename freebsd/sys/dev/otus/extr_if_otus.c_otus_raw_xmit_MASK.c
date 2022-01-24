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
struct otus_softc {int /*<<< orphan*/  sc_running; } ;
struct otus_data {int dummy; } ;
struct mbuf {int dummy; } ;
struct ieee80211com {struct otus_softc* ic_softc; } ;
struct ieee80211_node {struct ieee80211com* ni_ic; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENETDOWN ; 
 int ENOBUFS ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct otus_softc*,struct otus_data*) ; 
 struct otus_data* FUNC4 (struct otus_softc*) ; 
 scalar_t__ FUNC5 (struct otus_softc*,struct ieee80211_node*,struct mbuf*,struct otus_data*,struct ieee80211_bpf_params const*) ; 

__attribute__((used)) static int
FUNC6(struct ieee80211_node *ni, struct mbuf *m,
    const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic= ni->ni_ic;
	struct otus_softc *sc = ic->ic_softc;
	struct otus_data *bf = NULL;
	int error = 0;

	/* Don't transmit if we're not running */
	FUNC0(sc);
	if (! sc->sc_running) {
		error = ENETDOWN;
		goto error;
	}

	bf = FUNC4(sc);
	if (bf == NULL) {
		error = ENOBUFS;
		goto error;
	}

	if (FUNC5(sc, ni, m, bf, params) != 0) {
		error = EIO;
		goto error;
	}

	FUNC1(sc);
	return (0);
error:
	if (bf)
		FUNC3(sc, bf);
	FUNC1(sc);
	FUNC2(m);
	return (ENXIO);
}