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
typedef  int uint32_t ;
struct nfe_softc {scalar_t__ nfe_framesize; int /*<<< orphan*/  nfe_int_task; int /*<<< orphan*/  nfe_tq; int /*<<< orphan*/  nfe_irq_status; int /*<<< orphan*/  nfe_process_limit; int /*<<< orphan*/  nfe_ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*,int,char*,int) ; 
 scalar_t__ ETHER_HDR_LEN ; 
 int IFCAP_POLLING ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ MCLBYTES ; 
 int NFE_IRQ_LINK ; 
 int /*<<< orphan*/  FUNC2 (struct nfe_softc*) ; 
 int /*<<< orphan*/  NFE_PHY_STATUS ; 
 scalar_t__ FUNC3 (struct nfe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfe_softc*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct nfe_softc*) ; 
 int FUNC11 (struct nfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct nfe_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(void *arg, int pending)
{
	struct nfe_softc *sc = arg;
	if_t ifp = sc->nfe_ifp;
	uint32_t r;
	int domore;

	FUNC2(sc);

	if ((r = FUNC3(sc, sc->nfe_irq_status)) == 0) {
		FUNC10(sc);
		FUNC4(sc);
		return;	/* not for us */
	}
	FUNC5(sc, sc->nfe_irq_status, r);

	FUNC1(sc, 5, "nfe_intr: interrupt register %x\n", r);

#ifdef DEVICE_POLLING
	if (if_getcapenable(ifp) & IFCAP_POLLING) {
		NFE_UNLOCK(sc);
		return;
	}
#endif

	if (r & NFE_IRQ_LINK) {
		FUNC3(sc, NFE_PHY_STATUS);
		FUNC5(sc, NFE_PHY_STATUS, 0xf);
		FUNC0(sc, "link state changed\n");
	}

	if ((FUNC7(ifp) & IFF_DRV_RUNNING) == 0) {
		FUNC4(sc);
		FUNC9(sc);
		return;
	}

	domore = 0;
	/* check Rx ring */
	if (sc->nfe_framesize > MCLBYTES - ETHER_HDR_LEN)
		domore = FUNC11(sc, sc->nfe_process_limit, NULL);
	else
		domore = FUNC12(sc, sc->nfe_process_limit, NULL);
	/* check Tx ring */
	FUNC14(sc);

	if (!FUNC8(ifp))
		FUNC13(ifp);

	FUNC4(sc);

	if (domore || (FUNC3(sc, sc->nfe_irq_status) != 0)) {
		FUNC15(sc->nfe_tq, &sc->nfe_int_task);
		return;
	}

	/* Reenable interrupts. */
	FUNC10(sc);
}