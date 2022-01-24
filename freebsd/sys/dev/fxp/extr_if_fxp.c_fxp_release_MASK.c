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
struct fxp_tx {int /*<<< orphan*/  tx_map; int /*<<< orphan*/ * tx_mbuf; } ;
struct TYPE_2__ {struct fxp_tx* tx_list; struct fxp_rx* rx_list; scalar_t__ cbl_list; } ;
struct fxp_softc {int /*<<< orphan*/  sc_mtx; scalar_t__ ifp; scalar_t__ mcs_tag; scalar_t__ cbl_tag; scalar_t__ fxp_stag; scalar_t__ fxp_txmtag; TYPE_1__ fxp_desc; scalar_t__ fxp_rxmtag; int /*<<< orphan*/  spare_map; int /*<<< orphan*/  fxp_res; int /*<<< orphan*/  fxp_spec; int /*<<< orphan*/  dev; int /*<<< orphan*/  mcs_map; scalar_t__ mcsp; int /*<<< orphan*/  fxp_smap; scalar_t__ fxp_stats; int /*<<< orphan*/  cbl_map; int /*<<< orphan*/  sc_media; scalar_t__ miibus; int /*<<< orphan*/ * ih; } ;
struct fxp_rx {int /*<<< orphan*/  rx_map; int /*<<< orphan*/ * rx_mbuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int FXP_NRFABUFS ; 
 int FXP_NTXCB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(struct fxp_softc *sc)
{
	struct fxp_rx *rxp;
	struct fxp_tx *txp;
	int i;

	FUNC0(sc, MA_NOTOWNED);
	FUNC1(sc->ih == NULL,
	    ("fxp_release() called with intr handle still active"));
	if (sc->miibus)
		FUNC9(sc->dev, sc->miibus);
	FUNC7(sc->dev);
	FUNC11(&sc->sc_media);
	if (sc->fxp_desc.cbl_list) {
		FUNC5(sc->cbl_tag, sc->cbl_map);
		FUNC6(sc->cbl_tag, sc->fxp_desc.cbl_list,
		    sc->cbl_map);
	}
	if (sc->fxp_stats) {
		FUNC5(sc->fxp_stag, sc->fxp_smap);
		FUNC6(sc->fxp_stag, sc->fxp_stats, sc->fxp_smap);
	}
	if (sc->mcsp) {
		FUNC5(sc->mcs_tag, sc->mcs_map);
		FUNC6(sc->mcs_tag, sc->mcsp, sc->mcs_map);
	}
	FUNC8(sc->dev, sc->fxp_spec, sc->fxp_res);
	if (sc->fxp_rxmtag) {
		for (i = 0; i < FXP_NRFABUFS; i++) {
			rxp = &sc->fxp_desc.rx_list[i];
			if (rxp->rx_mbuf != NULL) {
				FUNC4(sc->fxp_rxmtag, rxp->rx_map,
				    BUS_DMASYNC_POSTREAD);
				FUNC5(sc->fxp_rxmtag, rxp->rx_map);
				FUNC12(rxp->rx_mbuf);
			}
			FUNC3(sc->fxp_rxmtag, rxp->rx_map);
		}
		FUNC3(sc->fxp_rxmtag, sc->spare_map);
		FUNC2(sc->fxp_rxmtag);
	}
	if (sc->fxp_txmtag) {
		for (i = 0; i < FXP_NTXCB; i++) {
			txp = &sc->fxp_desc.tx_list[i];
			if (txp->tx_mbuf != NULL) {
				FUNC4(sc->fxp_txmtag, txp->tx_map,
				    BUS_DMASYNC_POSTWRITE);
				FUNC5(sc->fxp_txmtag, txp->tx_map);
				FUNC12(txp->tx_mbuf);
			}
			FUNC3(sc->fxp_txmtag, txp->tx_map);
		}
		FUNC2(sc->fxp_txmtag);
	}
	if (sc->fxp_stag)
		FUNC2(sc->fxp_stag);
	if (sc->cbl_tag)
		FUNC2(sc->cbl_tag);
	if (sc->mcs_tag)
		FUNC2(sc->mcs_tag);
	if (sc->ifp)
		FUNC10(sc->ifp);

	FUNC13(&sc->sc_mtx);
}