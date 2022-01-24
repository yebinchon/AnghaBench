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
struct gem_softc {int /*<<< orphan*/  sc_rdmatag; struct gem_rxsoft* sc_rxsoft; } ;
struct gem_rxsoft {int /*<<< orphan*/ * rxs_mbuf; int /*<<< orphan*/  rxs_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int GEM_NRXDESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct gem_softc *sc)
{
	struct gem_rxsoft *rxs;
	int i;

	for (i = 0; i < GEM_NRXDESC; i++) {
		rxs = &sc->sc_rxsoft[i];
		if (rxs->rxs_mbuf != NULL) {
			FUNC0(sc->sc_rdmatag, rxs->rxs_dmamap,
			    BUS_DMASYNC_POSTREAD);
			FUNC1(sc->sc_rdmatag, rxs->rxs_dmamap);
			FUNC2(rxs->rxs_mbuf);
			rxs->rxs_mbuf = NULL;
		}
	}
}