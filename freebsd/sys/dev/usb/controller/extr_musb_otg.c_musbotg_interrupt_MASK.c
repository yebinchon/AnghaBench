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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int status_bus_reset; int status_suspend; int change_suspend; int change_connect; int status_high_speed; } ;
struct musbotg_softc {scalar_t__ sc_mode; int /*<<< orphan*/  sc_bus; TYPE_1__ sc_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int,...) ; 
 scalar_t__ MUSB2_HOST_MODE ; 
 int MUSB2_MASK_HSMODE ; 
 int MUSB2_MASK_ICONN ; 
 int MUSB2_MASK_IDISC ; 
 int MUSB2_MASK_IRESET ; 
 int MUSB2_MASK_IRESUME ; 
 int MUSB2_MASK_ISUSP ; 
 int MUSB2_MASK_IVBUSERR ; 
 int MUSB2_MASK_SESS ; 
 int FUNC1 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_DEVCTL ; 
 int /*<<< orphan*/  MUSB2_REG_INTRX ; 
 int /*<<< orphan*/  MUSB2_REG_INTRXE ; 
 int /*<<< orphan*/  MUSB2_REG_INTTX ; 
 int /*<<< orphan*/  MUSB2_REG_INTTXE ; 
 int /*<<< orphan*/  MUSB2_REG_INTUSB ; 
 int /*<<< orphan*/  MUSB2_REG_INTUSBE ; 
 int /*<<< orphan*/  MUSB2_REG_POWER ; 
 int /*<<< orphan*/  FUNC3 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct musbotg_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct musbotg_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct musbotg_softc*) ; 

void
FUNC9(struct musbotg_softc *sc,
    uint16_t rxstat, uint16_t txstat, uint8_t stat)
{
	uint16_t rx_status;
	uint16_t tx_status;
	uint8_t usb_status;
	uint8_t temp;
	uint8_t to = 2;

	FUNC5(&sc->sc_bus);

repeat:

	/* read all interrupt registers */
	usb_status = FUNC1(sc, MUSB2_REG_INTUSB);

	/* read all FIFO interrupts */
	rx_status = FUNC2(sc, MUSB2_REG_INTRX);
	tx_status = FUNC2(sc, MUSB2_REG_INTTX);
	rx_status |= rxstat;
	tx_status |= txstat;
	usb_status |= stat;

	/* Clear platform flags after first time */
	rxstat = 0;
	txstat = 0;
	stat = 0;

	/* check for any bus state change interrupts */

	if (usb_status & (MUSB2_MASK_IRESET |
	    MUSB2_MASK_IRESUME | MUSB2_MASK_ISUSP | 
	    MUSB2_MASK_ICONN | MUSB2_MASK_IDISC |
	    MUSB2_MASK_IVBUSERR)) {

		FUNC0(4, "real bus interrupt 0x%08x\n", usb_status);

		if (usb_status & MUSB2_MASK_IRESET) {

			/* set correct state */
			sc->sc_flags.status_bus_reset = 1;
			sc->sc_flags.status_suspend = 0;
			sc->sc_flags.change_suspend = 0;
			sc->sc_flags.change_connect = 1;

			/* determine line speed */
			temp = FUNC1(sc, MUSB2_REG_POWER);
			if (temp & MUSB2_MASK_HSMODE)
				sc->sc_flags.status_high_speed = 1;
			else
				sc->sc_flags.status_high_speed = 0;

			/*
			 * After reset all interrupts are on and we need to
			 * turn them off!
			 */
			temp = MUSB2_MASK_IRESET;
			/* disable resume interrupt */
			temp &= ~MUSB2_MASK_IRESUME;
			/* enable suspend interrupt */
			temp |= MUSB2_MASK_ISUSP;
			FUNC3(sc, MUSB2_REG_INTUSBE, temp);
			/* disable TX and RX interrupts */
			FUNC4(sc, MUSB2_REG_INTTXE, 0);
			FUNC4(sc, MUSB2_REG_INTRXE, 0);
		}
		/*
	         * If RXRSM and RXSUSP is set at the same time we interpret
	         * that like RESUME. Resume is set when there is at least 3
	         * milliseconds of inactivity on the USB BUS.
	         */
		if (usb_status & MUSB2_MASK_IRESUME) {
			if (sc->sc_flags.status_suspend) {
				sc->sc_flags.status_suspend = 0;
				sc->sc_flags.change_suspend = 1;

				temp = FUNC1(sc, MUSB2_REG_INTUSBE);
				/* disable resume interrupt */
				temp &= ~MUSB2_MASK_IRESUME;
				/* enable suspend interrupt */
				temp |= MUSB2_MASK_ISUSP;
				FUNC3(sc, MUSB2_REG_INTUSBE, temp);
			}
		} else if (usb_status & MUSB2_MASK_ISUSP) {
			if (!sc->sc_flags.status_suspend) {
				sc->sc_flags.status_suspend = 1;
				sc->sc_flags.change_suspend = 1;

				temp = FUNC1(sc, MUSB2_REG_INTUSBE);
				/* disable suspend interrupt */
				temp &= ~MUSB2_MASK_ISUSP;
				/* enable resume interrupt */
				temp |= MUSB2_MASK_IRESUME;
				FUNC3(sc, MUSB2_REG_INTUSBE, temp);
			}
		}
		if (usb_status & 
		    (MUSB2_MASK_ICONN | MUSB2_MASK_IDISC))
			sc->sc_flags.change_connect = 1;

		/* 
		 * Host Mode: There is no IRESET so assume bus is 
		 * always in reset state once device is connected.
		 */
		if (sc->sc_mode == MUSB2_HOST_MODE) {
		    /* check for VBUS error in USB host mode */
		    if (usb_status & MUSB2_MASK_IVBUSERR) {
			temp = FUNC1(sc, MUSB2_REG_DEVCTL);
			temp |= MUSB2_MASK_SESS;
			FUNC3(sc, MUSB2_REG_DEVCTL, temp);
		    }
		    if (usb_status & MUSB2_MASK_ICONN)
			sc->sc_flags.status_bus_reset = 1;
		    if (usb_status & MUSB2_MASK_IDISC)
			sc->sc_flags.status_bus_reset = 0;
		}

		/* complete root HUB interrupt endpoint */
		FUNC8(sc);
	}
	/* check for any endpoint interrupts */

	if (rx_status || tx_status) {
		FUNC0(4, "real endpoint interrupt "
		    "rx=0x%04x, tx=0x%04x\n", rx_status, tx_status);
	}
	/* poll one time regardless of FIFO status */

	FUNC7(sc);

	if (--to)
		goto repeat;

	FUNC6(&sc->sc_bus);
}