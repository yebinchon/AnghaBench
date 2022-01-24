#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smc_softc {int /*<<< orphan*/  smc_mtx; int /*<<< orphan*/ * smc_irq; int /*<<< orphan*/  smc_irq_rid; int /*<<< orphan*/  smc_dev; int /*<<< orphan*/ * smc_reg; int /*<<< orphan*/  smc_reg_rid; scalar_t__ smc_usemem; int /*<<< orphan*/ * smc_miibus; TYPE_1__* smc_ifp; int /*<<< orphan*/ * smc_tq; int /*<<< orphan*/  smc_tx; int /*<<< orphan*/  smc_rx; int /*<<< orphan*/  smc_intr; int /*<<< orphan*/ * smc_ih; int /*<<< orphan*/  smc_mii_tick_ch; int /*<<< orphan*/  smc_watchdog; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int if_capenable; } ;

/* Variables and functions */
 int IFCAP_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_softc*) ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct smc_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct smc_softc*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int
FUNC16(device_t dev)
{
	int			type;
	struct smc_softc	*sc;

	sc = FUNC7(dev);
	FUNC0(sc);
	FUNC13(sc);
	FUNC1(sc);

	if (sc->smc_ifp != NULL) {
		FUNC8(sc->smc_ifp);
	}
	
	FUNC5(&sc->smc_watchdog);
	FUNC5(&sc->smc_mii_tick_ch);
	
#ifdef DEVICE_POLLING
	if (sc->smc_ifp->if_capenable & IFCAP_POLLING)
		ether_poll_deregister(sc->smc_ifp);
#endif

	if (sc->smc_ih != NULL)
		FUNC4(sc->smc_dev, sc->smc_irq, sc->smc_ih);

	if (sc->smc_tq != NULL) {
		FUNC14(sc->smc_tq, &sc->smc_intr);
		FUNC14(sc->smc_tq, &sc->smc_rx);
		FUNC14(sc->smc_tq, &sc->smc_tx);
		FUNC15(sc->smc_tq);
		sc->smc_tq = NULL;
	}

	if (sc->smc_ifp != NULL) {
		FUNC10(sc->smc_ifp);
	}

	if (sc->smc_miibus != NULL) {
		FUNC6(sc->smc_dev, sc->smc_miibus);
		FUNC2(sc->smc_dev);
	}

	if (sc->smc_reg != NULL) {
		type = SYS_RES_IOPORT;
		if (sc->smc_usemem)
			type = SYS_RES_MEMORY;

		FUNC3(sc->smc_dev, type, sc->smc_reg_rid,
		    sc->smc_reg);
	}

	if (sc->smc_irq != NULL)
		FUNC3(sc->smc_dev, SYS_RES_IRQ, sc->smc_irq_rid,
		   sc->smc_irq);

	if (FUNC12(&sc->smc_mtx))
		FUNC11(&sc->smc_mtx);

	return (0);
}