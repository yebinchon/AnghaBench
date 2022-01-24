#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  rb_membase; TYPE_2__* rb_rxdesc; int /*<<< orphan*/  rb_spare_dmamap; TYPE_1__* rb_txdesc; } ;
struct hme_softc {int /*<<< orphan*/  sc_pdmatag; int /*<<< orphan*/  sc_cdmatag; int /*<<< orphan*/  sc_rdmatag; int /*<<< orphan*/  sc_tdmatag; int /*<<< orphan*/  sc_cdmamap; TYPE_3__ sc_rb; int /*<<< orphan*/  sc_miibus; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_tick_ch; struct ifnet* sc_ifp; } ;
struct TYPE_5__ {int /*<<< orphan*/  hrx_dmamap; } ;
struct TYPE_4__ {int /*<<< orphan*/  htx_dmamap; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (struct hme_softc*) ; 
 int HME_NRXDESC ; 
 int HME_NTXQ ; 
 int /*<<< orphan*/  FUNC1 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC10 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*) ; 

void
FUNC12(struct hme_softc *sc)
{
	struct ifnet *ifp = sc->sc_ifp;
	int i;

	FUNC0(sc);
	FUNC10(sc);
	FUNC1(sc);
	FUNC7(&sc->sc_tick_ch);
	FUNC9(ifp);
	FUNC11(ifp);
	FUNC8(sc->sc_dev, sc->sc_miibus);

	for (i = 0; i < HME_NTXQ; i++) {
		FUNC3(sc->sc_tdmatag,
		    sc->sc_rb.rb_txdesc[i].htx_dmamap);
	}
	FUNC3(sc->sc_rdmatag, sc->sc_rb.rb_spare_dmamap);
	for (i = 0; i < HME_NRXDESC; i++) {
		FUNC3(sc->sc_rdmatag,
		    sc->sc_rb.rb_rxdesc[i].hrx_dmamap);
	}
	FUNC4(sc->sc_cdmatag, sc->sc_cdmamap,
	    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
	FUNC5(sc->sc_cdmatag, sc->sc_cdmamap);
	FUNC6(sc->sc_cdmatag, sc->sc_rb.rb_membase, sc->sc_cdmamap);
	FUNC2(sc->sc_tdmatag);
	FUNC2(sc->sc_rdmatag);
	FUNC2(sc->sc_cdmatag);
	FUNC2(sc->sc_pdmatag);
}