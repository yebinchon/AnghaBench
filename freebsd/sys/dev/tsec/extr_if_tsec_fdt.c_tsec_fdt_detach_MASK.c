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
struct tsec_softc {int /*<<< orphan*/  ic_lock; int /*<<< orphan*/  transmit_lock; int /*<<< orphan*/  receive_lock; scalar_t__ sc_rres; int /*<<< orphan*/  sc_rrid; int /*<<< orphan*/  sc_error_irid; int /*<<< orphan*/  sc_error_ihand; int /*<<< orphan*/  sc_error_ires; int /*<<< orphan*/  sc_receive_irid; int /*<<< orphan*/  sc_receive_ihand; int /*<<< orphan*/  sc_receive_ires; int /*<<< orphan*/  sc_transmit_irid; int /*<<< orphan*/  sc_transmit_ihand; int /*<<< orphan*/  sc_transmit_ires; int /*<<< orphan*/  tsec_callout; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct tsec_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tsec_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct tsec_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct tsec_softc *sc;
	int error;

	sc = FUNC2(dev);

	/* Wait for stopping watchdog */
	FUNC1(&sc->tsec_callout);

	/* Stop and release all interrupts */
	FUNC6(sc, sc->sc_transmit_ires, sc->sc_transmit_ihand,
	    sc->sc_transmit_irid, "TX");
	FUNC6(sc, sc->sc_receive_ires, sc->sc_receive_ihand,
	    sc->sc_receive_irid, "RX");
	FUNC6(sc, sc->sc_error_ires, sc->sc_error_ihand,
	    sc->sc_error_irid, "ERR");

	/* TSEC detach */
	FUNC5(sc);

	/* Free IO memory handler */
	if (sc->sc_rres) {
		error = FUNC0(dev, SYS_RES_MEMORY, sc->sc_rrid,
		    sc->sc_rres);
		if (error)
			FUNC3(dev, "bus_release_resource() failed for"
			    " IO memory, error %d\n", error);
	}

	/* Destroy locks */
	FUNC4(&sc->receive_lock);
	FUNC4(&sc->transmit_lock);
	FUNC4(&sc->ic_lock);
	return (0);
}