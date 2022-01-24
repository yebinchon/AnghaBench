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
struct ifnet {int dummy; } ;
struct gem_softc {int /*<<< orphan*/  sc_pdmatag; int /*<<< orphan*/  sc_rdmatag; int /*<<< orphan*/  sc_tdmatag; int /*<<< orphan*/  sc_cdmatag; int /*<<< orphan*/  sc_cddmamap; int /*<<< orphan*/  sc_control_data; TYPE_2__* sc_txsoft; TYPE_1__* sc_rxsoft; int /*<<< orphan*/  sc_miibus; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_rx_ch; int /*<<< orphan*/  sc_tick_ch; struct ifnet* sc_ifp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * txs_dmamap; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rxs_dmamap; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct gem_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gem_softc*) ; 
 int GEM_NRXDESC ; 
 int GEM_TXQUEUELEN ; 
 int /*<<< orphan*/  FUNC2 (struct gem_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 

void
FUNC12(struct gem_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	int i;

	FUNC9(ifp);
	FUNC1(sc);
	FUNC10(ifp, 1);
	FUNC2(sc);
	FUNC7(&sc->sc_tick_ch);
#ifdef GEM_RINT_TIMEOUT
	callout_drain(&sc->sc_rx_ch);
#endif
	FUNC11(ifp);
	FUNC8(sc->sc_dev, sc->sc_miibus);

	for (i = 0; i < GEM_NRXDESC; i++)
		if (sc->sc_rxsoft[i].rxs_dmamap != NULL)
			FUNC4(sc->sc_rdmatag,
			    sc->sc_rxsoft[i].rxs_dmamap);
	for (i = 0; i < GEM_TXQUEUELEN; i++)
		if (sc->sc_txsoft[i].txs_dmamap != NULL)
			FUNC4(sc->sc_tdmatag,
			    sc->sc_txsoft[i].txs_dmamap);
	FUNC0(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC5(sc->sc_cdmatag, sc->sc_cddmamap);
	FUNC6(sc->sc_cdmatag, sc->sc_control_data,
	    sc->sc_cddmamap);
	FUNC3(sc->sc_cdmatag);
	FUNC3(sc->sc_tdmatag);
	FUNC3(sc->sc_rdmatag);
	FUNC3(sc->sc_pdmatag);
}