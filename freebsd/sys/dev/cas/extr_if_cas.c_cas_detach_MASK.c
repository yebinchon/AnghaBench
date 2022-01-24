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
struct cas_softc {int /*<<< orphan*/  sc_pdmatag; int /*<<< orphan*/  sc_rdmatag; int /*<<< orphan*/  sc_tdmatag; int /*<<< orphan*/  sc_cdmatag; int /*<<< orphan*/ * sc_cddmamap; int /*<<< orphan*/ * sc_control_data; TYPE_2__* sc_txsoft; TYPE_1__* sc_rxdsoft; int /*<<< orphan*/  sc_miibus; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_tq; int /*<<< orphan*/  sc_tx_task; int /*<<< orphan*/  sc_intr_task; int /*<<< orphan*/  sc_rx_ch; int /*<<< orphan*/  sc_tick_ch; struct ifnet* sc_ifp; } ;
struct TYPE_4__ {int /*<<< orphan*/ * txs_dmamap; } ;
struct TYPE_3__ {scalar_t__ rxds_paddr; int /*<<< orphan*/ * rxds_dmamap; int /*<<< orphan*/ * rxds_buf; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct cas_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cas_softc*) ; 
 int CAS_NRXDESC ; 
 int CAS_TXQUEUELEN ; 
 int /*<<< orphan*/  FUNC2 (struct cas_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct cas_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	int i;

	FUNC11(ifp);
	FUNC1(sc);
	FUNC9(ifp);
	FUNC2(sc);
	FUNC8(&sc->sc_tick_ch);
	FUNC8(&sc->sc_rx_ch);
	FUNC13(sc->sc_tq, &sc->sc_intr_task);
	FUNC13(sc->sc_tq, &sc->sc_tx_task);
	FUNC12(ifp);
	FUNC14(sc->sc_tq);
	FUNC10(sc->sc_dev, sc->sc_miibus);

	for (i = 0; i < CAS_NRXDESC; i++)
		if (sc->sc_rxdsoft[i].rxds_dmamap != NULL)
			FUNC5(sc->sc_rdmatag,
			    sc->sc_rxdsoft[i].rxds_dmamap,
			    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	for (i = 0; i < CAS_NRXDESC; i++)
		if (sc->sc_rxdsoft[i].rxds_paddr != 0)
			FUNC6(sc->sc_rdmatag,
			    sc->sc_rxdsoft[i].rxds_dmamap);
	for (i = 0; i < CAS_NRXDESC; i++)
		if (sc->sc_rxdsoft[i].rxds_buf != NULL)
			FUNC7(sc->sc_rdmatag,
			    sc->sc_rxdsoft[i].rxds_buf,
			    sc->sc_rxdsoft[i].rxds_dmamap);
	for (i = 0; i < CAS_TXQUEUELEN; i++)
		if (sc->sc_txsoft[i].txs_dmamap != NULL)
			FUNC4(sc->sc_tdmatag,
			    sc->sc_txsoft[i].txs_dmamap);
	FUNC0(sc, BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC6(sc->sc_cdmatag, sc->sc_cddmamap);
	FUNC7(sc->sc_cdmatag, sc->sc_control_data,
	    sc->sc_cddmamap);
	FUNC3(sc->sc_cdmatag);
	FUNC3(sc->sc_tdmatag);
	FUNC3(sc->sc_rdmatag);
	FUNC3(sc->sc_pdmatag);
}