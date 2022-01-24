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
struct uart_phyp_softc {scalar_t__ vtermid; int polltime; int /*<<< orphan*/  tp; int /*<<< orphan*/  callout; int /*<<< orphan*/  sc_icookie; int /*<<< orphan*/ * irqres; scalar_t__ irqrid; int /*<<< orphan*/  outseqno; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  node; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  cn_name; } ;

/* Variables and functions */
 int INTR_MPSAFE ; 
 int INTR_TYPE_TTY ; 
 int MTX_NOWITNESS ; 
 int MTX_QUIET ; 
 int MTX_SPIN ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct uart_phyp_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct uart_phyp_softc*) ; 
 struct uart_phyp_softc* console_sc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct uart_phyp_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct uart_phyp_softc*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 TYPE_1__ uart_phyp_consdev ; 
 int /*<<< orphan*/  uart_phyp_intr ; 
 int /*<<< orphan*/  FUNC13 (struct uart_phyp_softc*) ; 
 int /*<<< orphan*/  uart_phyp_tty_class ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct uart_phyp_softc *sc;
	int unit;

	sc = FUNC5(dev);
	sc->dev = dev;
	sc->node = FUNC8(dev);
	FUNC13(sc);

	unit = FUNC6(dev);
	sc->tp = FUNC10(&uart_phyp_tty_class, sc);
	FUNC7(&sc->sc_mtx, FUNC4(dev), NULL,
	    MTX_SPIN | MTX_QUIET | MTX_NOWITNESS);

	if (console_sc != NULL && console_sc->vtermid == sc->vtermid) {
		sc->outseqno = console_sc->outseqno;
		console_sc = sc;
		FUNC9(uart_phyp_consdev.cn_name, "ttyu%r", unit);
		FUNC11(sc->tp, 0);
	}

	sc->irqrid = 0;
	sc->irqres = FUNC0(dev, SYS_RES_IRQ, &sc->irqrid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->irqres != NULL) {
		FUNC1(dev, sc->irqres, INTR_TYPE_TTY | INTR_MPSAFE,
		    NULL, uart_phyp_intr, sc, &sc->sc_icookie);
	} else {
		FUNC2(&sc->callout, 1);
		sc->polltime = hz / 20;
		if (sc->polltime < 1)
			sc->polltime = 1;
		FUNC3(&sc->callout, sc->polltime, uart_phyp_intr, sc);
	}

	FUNC12(sc->tp, NULL, "u%r", unit);

	return (0);
}