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
typedef  int /*<<< orphan*/  uint8_t ;
struct nfe_softc {int nfe_flags; scalar_t__ nfe_msi; scalar_t__ nfe_msix; int /*<<< orphan*/  nfe_mtx; int /*<<< orphan*/ * nfe_parent_tag; int /*<<< orphan*/  jrxq; int /*<<< orphan*/  rxq; int /*<<< orphan*/  txq; int /*<<< orphan*/ ** nfe_res; int /*<<< orphan*/ * nfe_msix_res; int /*<<< orphan*/ * nfe_msix_pba_res; int /*<<< orphan*/ ** nfe_irq; int /*<<< orphan*/ ** nfe_intrhand; int /*<<< orphan*/ * nfe_tq; int /*<<< orphan*/  nfe_int_task; scalar_t__ nfe_miibus; int /*<<< orphan*/ * eaddr; int /*<<< orphan*/  nfe_stat_ch; int /*<<< orphan*/ * nfe_ifp; } ;
typedef  int /*<<< orphan*/ * if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ETHER_ADDR_LEN ; 
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int NFE_CORRECT_MACADDR ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 int NFE_MSI_MESSAGES ; 
 int /*<<< orphan*/  FUNC2 (struct nfe_softc*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct nfe_softc* FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct nfe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct nfe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct nfe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct nfe_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC28(device_t dev)
{
	struct nfe_softc *sc;
	if_t ifp;
	uint8_t eaddr[ETHER_ADDR_LEN];
	int i, rid;

	sc = FUNC11(dev);
	FUNC0(FUNC19(&sc->nfe_mtx), ("nfe mutex not initialized"));
	ifp = sc->nfe_ifp;

#ifdef DEVICE_POLLING
	if (ifp != NULL && if_getcapenable(ifp) & IFCAP_POLLING)
		ether_poll_deregister(ifp);
#endif
	if (FUNC12(dev)) {
		FUNC1(sc);
		FUNC24(ifp);
		FUNC17(ifp, 0, IFF_UP);
		FUNC2(sc);
		FUNC9(&sc->nfe_stat_ch);
		FUNC13(ifp);
	}

	if (ifp) {
		/* restore ethernet address */
		if ((sc->nfe_flags & NFE_CORRECT_MACADDR) == 0) {
			for (i = 0; i < ETHER_ADDR_LEN; i++) {
				eaddr[i] = sc->eaddr[5 - i];
			}
		} else
			FUNC4(sc->eaddr, eaddr, ETHER_ADDR_LEN);
		FUNC23(sc, eaddr);
		FUNC15(ifp);
	}
	if (sc->nfe_miibus)
		FUNC10(dev, sc->nfe_miibus);
	FUNC6(dev);
	if (sc->nfe_tq != NULL) {
		FUNC26(sc->nfe_tq, &sc->nfe_int_task);
		FUNC27(sc->nfe_tq);
		sc->nfe_tq = NULL;
	}

	for (i = 0; i < NFE_MSI_MESSAGES; i++) {
		if (sc->nfe_intrhand[i] != NULL) {
			FUNC8(dev, sc->nfe_irq[i],
			    sc->nfe_intrhand[i]);
			sc->nfe_intrhand[i] = NULL;
		}
	}

	if (sc->nfe_msi == 0 && sc->nfe_msix == 0) {
		if (sc->nfe_irq[0] != NULL)
			FUNC7(dev, SYS_RES_IRQ, 0,
			    sc->nfe_irq[0]);
	} else {
		for (i = 0, rid = 1; i < NFE_MSI_MESSAGES; i++, rid++) {
			if (sc->nfe_irq[i] != NULL) {
				FUNC7(dev, SYS_RES_IRQ, rid,
				    sc->nfe_irq[i]);
				sc->nfe_irq[i] = NULL;
			}
		}
		FUNC25(dev);
	}
	if (sc->nfe_msix_pba_res != NULL) {
		FUNC7(dev, SYS_RES_MEMORY, FUNC3(3),
		    sc->nfe_msix_pba_res);
		sc->nfe_msix_pba_res = NULL;
	}
	if (sc->nfe_msix_res != NULL) {
		FUNC7(dev, SYS_RES_MEMORY, FUNC3(2),
		    sc->nfe_msix_res);
		sc->nfe_msix_res = NULL;
	}
	if (sc->nfe_res[0] != NULL) {
		FUNC7(dev, SYS_RES_MEMORY, FUNC3(0),
		    sc->nfe_res[0]);
		sc->nfe_res[0] = NULL;
	}

	FUNC22(sc, &sc->txq);
	FUNC21(sc, &sc->rxq);
	FUNC20(sc, &sc->jrxq);

	if (sc->nfe_parent_tag) {
		FUNC5(sc->nfe_parent_tag);
		sc->nfe_parent_tag = NULL;
	}

	FUNC18(&sc->nfe_mtx);

	return (0);
}