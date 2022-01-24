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
struct mwl_softc {int sc_imask; int sc_running; int /*<<< orphan*/  sc_watchdog; int /*<<< orphan*/  sc_dev; struct mwl_hal* sc_mh; } ;
struct mwl_hal {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int MACREG_A2HRIC_BIT_BA_WATCHDOG ; 
 int MACREG_A2HRIC_BIT_CHAN_SWITCH ; 
 int MACREG_A2HRIC_BIT_ICV_ERROR ; 
 int MACREG_A2HRIC_BIT_MAC_EVENT ; 
 int MACREG_A2HRIC_BIT_OPC_DONE ; 
 int MACREG_A2HRIC_BIT_QUEUE_EMPTY ; 
 int MACREG_A2HRIC_BIT_RADAR_DETECT ; 
 int MACREG_A2HRIC_BIT_RX_RDY ; 
 int MACREG_A2HRIC_BIT_TX_DONE ; 
 int MACREQ_A2HRIC_BIT_TX_ACK ; 
 int /*<<< orphan*/  FUNC0 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mwl_hal*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mwl_softc*) ; 
 int FUNC5 (struct mwl_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mwl_softc*) ; 
 int /*<<< orphan*/  mwl_watchdog ; 

__attribute__((used)) static int
FUNC7(struct mwl_softc *sc)
{
	struct mwl_hal *mh = sc->sc_mh;
	int error = 0;

	FUNC0(sc);

	/*
	 * Stop anything previously setup.  This is safe
	 * whether this is the first time through or not.
	 */
	FUNC6(sc);

	/*
	 * Push vap-independent state to the firmware.
	 */
	if (!FUNC4(sc)) {
		FUNC2(sc->sc_dev, "unable to reset hardware\n");
		return EIO;
	}

	/*
	 * Setup recv (once); transmit is already good to go.
	 */
	error = FUNC5(sc);
	if (error != 0) {
		FUNC2(sc->sc_dev, "unable to start recv logic\n");
		return error;
	}

	/*
	 * Enable interrupts.
	 */
	sc->sc_imask = MACREG_A2HRIC_BIT_RX_RDY
		     | MACREG_A2HRIC_BIT_TX_DONE
		     | MACREG_A2HRIC_BIT_OPC_DONE
#if 0
		     | MACREG_A2HRIC_BIT_MAC_EVENT
#endif
		     | MACREG_A2HRIC_BIT_ICV_ERROR
		     | MACREG_A2HRIC_BIT_RADAR_DETECT
		     | MACREG_A2HRIC_BIT_CHAN_SWITCH
#if 0
		     | MACREG_A2HRIC_BIT_QUEUE_EMPTY
#endif
		     | MACREG_A2HRIC_BIT_BA_WATCHDOG
		     | MACREQ_A2HRIC_BIT_TX_ACK
		     ;

	sc->sc_running = 1;
	FUNC3(mh, sc->sc_imask);
	FUNC1(&sc->sc_watchdog, hz, mwl_watchdog, sc);

	return 0;
}