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
struct TYPE_2__ {scalar_t__ xl_tx_tag; int /*<<< orphan*/  xl_tx_dmamap; int /*<<< orphan*/  xl_tx_list; scalar_t__ xl_rx_tag; int /*<<< orphan*/  xl_rx_dmamap; int /*<<< orphan*/  xl_rx_list; } ;
struct xl_softc {int xl_flags; int /*<<< orphan*/  xl_mtx; TYPE_1__ xl_ldata; scalar_t__ xl_mtag; int /*<<< orphan*/  xl_tmpmap; int /*<<< orphan*/ * xl_res; int /*<<< orphan*/ * xl_fres; int /*<<< orphan*/ * xl_irq; scalar_t__ xl_intrhand; int /*<<< orphan*/  ifmedia; scalar_t__ xl_miibus; int /*<<< orphan*/  xl_tick_callout; int /*<<< orphan*/  xl_task; struct ifnet* xl_ifp; } ;
struct ifnet {int if_capenable; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int XL_FLAG_USE_MMIO ; 
 int /*<<< orphan*/  FUNC1 (struct xl_softc*) ; 
 int XL_PCI_FUNCMEM ; 
 int XL_PCI_LOIO ; 
 int XL_PCI_LOMEM ; 
 int /*<<< orphan*/  FUNC2 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct xl_softc* FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 
 int /*<<< orphan*/  FUNC21 (struct xl_softc*) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct xl_softc		*sc;
	struct ifnet		*ifp;
	int			rid, res;

	sc = FUNC12(dev);
	ifp = sc->xl_ifp;

	FUNC0(FUNC19(&sc->xl_mtx), ("xl mutex not initialized"));

#ifdef DEVICE_POLLING
	if (ifp && ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif

	if (sc->xl_flags & XL_FLAG_USE_MMIO) {
		rid = XL_PCI_LOMEM;
		res = SYS_RES_MEMORY;
	} else {
		rid = XL_PCI_LOIO;
		res = SYS_RES_IOPORT;
	}

	/* These should only be active if attach succeeded */
	if (FUNC13(dev)) {
		FUNC1(sc);
		FUNC21(sc);
		FUNC2(sc);
		FUNC20(taskqueue_swi, &sc->xl_task);
		FUNC10(&sc->xl_tick_callout);
		FUNC14(ifp);
	}
	if (sc->xl_miibus)
		FUNC11(dev, sc->xl_miibus);
	FUNC7(dev);
	FUNC17(&sc->ifmedia);

	if (sc->xl_intrhand)
		FUNC9(dev, sc->xl_irq, sc->xl_intrhand);
	if (sc->xl_irq)
		FUNC8(dev, SYS_RES_IRQ, 0, sc->xl_irq);
	if (sc->xl_fres != NULL)
		FUNC8(dev, SYS_RES_MEMORY,
		    XL_PCI_FUNCMEM, sc->xl_fres);
	if (sc->xl_res)
		FUNC8(dev, res, rid, sc->xl_res);

	if (ifp)
		FUNC16(ifp);

	if (sc->xl_mtag) {
		FUNC4(sc->xl_mtag, sc->xl_tmpmap);
		FUNC3(sc->xl_mtag);
	}
	if (sc->xl_ldata.xl_rx_tag) {
		FUNC5(sc->xl_ldata.xl_rx_tag,
		    sc->xl_ldata.xl_rx_dmamap);
		FUNC6(sc->xl_ldata.xl_rx_tag, sc->xl_ldata.xl_rx_list,
		    sc->xl_ldata.xl_rx_dmamap);
		FUNC3(sc->xl_ldata.xl_rx_tag);
	}
	if (sc->xl_ldata.xl_tx_tag) {
		FUNC5(sc->xl_ldata.xl_tx_tag,
		    sc->xl_ldata.xl_tx_dmamap);
		FUNC6(sc->xl_ldata.xl_tx_tag, sc->xl_ldata.xl_tx_list,
		    sc->xl_ldata.xl_tx_dmamap);
		FUNC3(sc->xl_ldata.xl_tx_tag);
	}

	FUNC18(&sc->xl_mtx);

	return (0);
}