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
struct gem_softc {scalar_t__ sc_rxptr; int /*<<< orphan*/  sc_dev; struct gem_rxsoft* sc_rxsoft; scalar_t__ sc_txwin; scalar_t__ sc_txnext; int /*<<< orphan*/  sc_txfree; TYPE_1__* sc_txdescs; } ;
struct gem_rxsoft {int /*<<< orphan*/ * rxs_mbuf; } ;
struct TYPE_2__ {scalar_t__ gd_addr; scalar_t__ gd_flags; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct gem_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEM_MAXTXFREE ; 
 int GEM_NRXDESC ; 
 int GEM_NTXDESC ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC4 (struct gem_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gem_softc*) ; 

__attribute__((used)) static int
FUNC6(struct gem_softc *sc)
{
	struct gem_rxsoft *rxs;
	int error, i;

	FUNC2(sc, MA_OWNED);

	/*
	 * Initialize the transmit descriptor ring.
	 */
	for (i = 0; i < GEM_NTXDESC; i++) {
		sc->sc_txdescs[i].gd_flags = 0;
		sc->sc_txdescs[i].gd_addr = 0;
	}
	sc->sc_txfree = GEM_MAXTXFREE;
	sc->sc_txnext = 0;
	sc->sc_txwin = 0;

	/*
	 * Initialize the receive descriptor and receive job
	 * descriptor rings.
	 */
	for (i = 0; i < GEM_NRXDESC; i++) {
		rxs = &sc->sc_rxsoft[i];
		if (rxs->rxs_mbuf == NULL) {
			if ((error = FUNC4(sc, i)) != 0) {
				FUNC3(sc->sc_dev,
				    "unable to allocate or map RX buffer %d, "
				    "error = %d\n", i, error);
				/*
				 * XXX we should attempt to run with fewer
				 * receive buffers instead of just failing.
				 */
				FUNC5(sc);
				return (1);
			}
		} else
			FUNC1(sc, i);
	}
	sc->sc_rxptr = 0;

	FUNC0(sc, BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);

	return (0);
}