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
struct uart_softc {int sc_leaving; TYPE_2__* sc_class; int /*<<< orphan*/  sc_hwmtx_s; int /*<<< orphan*/ * sc_rres; int /*<<< orphan*/  sc_rrid; int /*<<< orphan*/  sc_rtype; int /*<<< orphan*/ * sc_ires; int /*<<< orphan*/  sc_irid; int /*<<< orphan*/  sc_icookie; struct uart_softc* sc_rxbuf; struct uart_softc* sc_txbuf; TYPE_1__* sc_sysdev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {scalar_t__ size; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* detach ) (struct uart_softc*) ;int /*<<< orphan*/ * hwmtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_UART ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct uart_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct uart_softc*) ; 

int
FUNC10(device_t dev)
{
	struct uart_softc *sc;

	sc = FUNC4(dev);

	sc->sc_leaving = 1;

	if (sc->sc_sysdev != NULL)
		sc->sc_sysdev->hwmtx = NULL;

	FUNC0(sc);

	if (sc->sc_sysdev != NULL && sc->sc_sysdev->detach != NULL)
		(*sc->sc_sysdev->detach)(sc);
	else
		FUNC9(sc);

	FUNC6(sc->sc_txbuf, M_UART);
	FUNC6(sc->sc_rxbuf, M_UART);

	if (sc->sc_ires != NULL) {
		FUNC2(dev, sc->sc_ires, sc->sc_icookie);
		FUNC1(dev, SYS_RES_IRQ, sc->sc_irid,
		    sc->sc_ires);
	}
	FUNC1(dev, sc->sc_rtype, sc->sc_rrid, sc->sc_rres);

	FUNC7(&sc->sc_hwmtx_s);

	if (sc->sc_class->size > FUNC3(dev)->size) {
		FUNC5(dev, NULL);
		FUNC6(sc, M_UART);
	}

	return (0);
}