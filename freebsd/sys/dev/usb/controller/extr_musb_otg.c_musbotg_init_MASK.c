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
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
typedef  int uint16_t ;
struct usb_hw_ep_profile {int max_in_frame_size; int max_out_frame_size; int is_simplex; int support_multi_buffer; int support_bulk; int support_interrupt; int support_isochronous; int support_in; int support_out; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  bus_mtx; int /*<<< orphan*/ * methods; int /*<<< orphan*/  usbrev; } ;
struct musbotg_softc {scalar_t__ sc_mode; int sc_ep_max; int sc_conf_data; TYPE_1__ sc_bus; struct musb_otg_ep_cfg* sc_ep_cfg; struct usb_hw_ep_profile* sc_hw_ep_profile; int /*<<< orphan*/  sc_clocks_arg; int /*<<< orphan*/  (* sc_clocks_on ) (int /*<<< orphan*/ ) ;} ;
struct musb_otg_ep_cfg {scalar_t__ ep_end; int ep_fifosz_shift; int ep_fifosz_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ MUSB2_DEVICE_MODE ; 
 scalar_t__ MUSB2_HOST_MODE ; 
 int MUSB2_MASK_CD_DYNFIFOSZ ; 
 int MUSB2_MASK_HSENAB ; 
 int MUSB2_MASK_IRESET ; 
 int MUSB2_MASK_ISOUPD ; 
 int MUSB2_MASK_RX_FSIZE ; 
 int MUSB2_MASK_SESS ; 
 int MUSB2_MASK_TX_FSIZE ; 
 int FUNC2 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUSB2_REG_CONFDATA ; 
 int /*<<< orphan*/  MUSB2_REG_DEVCTL ; 
 int /*<<< orphan*/  MUSB2_REG_EPINDEX ; 
 int /*<<< orphan*/  MUSB2_REG_EPINFO ; 
 int /*<<< orphan*/  MUSB2_REG_FSIZE ; 
 int /*<<< orphan*/  MUSB2_REG_HWVERS ; 
 int /*<<< orphan*/  MUSB2_REG_INTRXE ; 
 int /*<<< orphan*/  MUSB2_REG_INTTXE ; 
 int /*<<< orphan*/  MUSB2_REG_INTUSBE ; 
 int /*<<< orphan*/  MUSB2_REG_MISC ; 
 int /*<<< orphan*/  MUSB2_REG_POWER ; 
 int /*<<< orphan*/  MUSB2_REG_RXDBDIS ; 
 int /*<<< orphan*/  MUSB2_REG_RXFIFOADD ; 
 int /*<<< orphan*/  MUSB2_REG_RXFIFOSZ ; 
 int /*<<< orphan*/  MUSB2_REG_TESTMODE ; 
 int /*<<< orphan*/  MUSB2_REG_TXDBDIS ; 
 int /*<<< orphan*/  MUSB2_REG_TXFIFOADD ; 
 int /*<<< orphan*/  MUSB2_REG_TXFIFOSZ ; 
 int /*<<< orphan*/  FUNC3 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct musbotg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  USB_REV_2_0 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  musbotg_bus_methods ; 
 int /*<<< orphan*/  FUNC8 (struct musbotg_softc*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 struct musb_otg_ep_cfg* musbotg_ep_default ; 
 int /*<<< orphan*/  FUNC10 (struct musbotg_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 

usb_error_t
FUNC13(struct musbotg_softc *sc)
{
	const struct musb_otg_ep_cfg *cfg;
	struct usb_hw_ep_profile *pf;
	int i;
	uint16_t offset;
	uint8_t nrx;
	uint8_t ntx;
	uint8_t temp;
	uint8_t fsize;
	uint8_t frx;
	uint8_t ftx;
	uint8_t dynfifo;

	FUNC1(1, "start\n");

	/* set up the bus structure */
	sc->sc_bus.usbrev = USB_REV_2_0;
	sc->sc_bus.methods = &musbotg_bus_methods;

	/* Set a default endpoint configuration */
	if (sc->sc_ep_cfg == NULL)
		sc->sc_ep_cfg = musbotg_ep_default;

	FUNC5(&sc->sc_bus);

	/* turn on clocks */

	if (sc->sc_clocks_on) {
		(sc->sc_clocks_on) (sc->sc_clocks_arg);
	}

	/* wait a little for things to stabilise */
	FUNC12(&sc->sc_bus.bus_mtx, hz / 1000);

	/* disable all interrupts */

	temp = FUNC2(sc, MUSB2_REG_DEVCTL);
	FUNC0("pre-DEVCTL=0x%02x\n", temp);

	FUNC3(sc, MUSB2_REG_INTUSBE, 0);
	FUNC4(sc, MUSB2_REG_INTTXE, 0);
	FUNC4(sc, MUSB2_REG_INTRXE, 0);

	/* disable pullup */

	FUNC10(sc, 0);

	/* wait a little bit (10ms) */
	FUNC12(&sc->sc_bus.bus_mtx, hz / 100);


	/* disable double packet buffering */
	FUNC4(sc, MUSB2_REG_RXDBDIS, 0xFFFF);
	FUNC4(sc, MUSB2_REG_TXDBDIS, 0xFFFF);

	/* enable HighSpeed and ISO Update flags */

	FUNC3(sc, MUSB2_REG_POWER,
	    MUSB2_MASK_HSENAB | MUSB2_MASK_ISOUPD);

	if (sc->sc_mode == MUSB2_DEVICE_MODE) {
		/* clear Session bit, if set */
		temp = FUNC2(sc, MUSB2_REG_DEVCTL);
		temp &= ~MUSB2_MASK_SESS;
		FUNC3(sc, MUSB2_REG_DEVCTL, temp);
	} else {
		/* Enter session for Host mode */
		temp = FUNC2(sc, MUSB2_REG_DEVCTL);
		temp |= MUSB2_MASK_SESS;
		FUNC3(sc, MUSB2_REG_DEVCTL, temp);
	}

	/* wait a little for things to stabilise */
	FUNC12(&sc->sc_bus.bus_mtx, hz / 10);

	FUNC0("DEVCTL=0x%02x\n", temp);

	/* disable testmode */

	FUNC3(sc, MUSB2_REG_TESTMODE, 0);

	/* set default value */

	FUNC3(sc, MUSB2_REG_MISC, 0);

	/* select endpoint index 0 */

	FUNC3(sc, MUSB2_REG_EPINDEX, 0);

	if (sc->sc_ep_max == 0) {
		/* read out number of endpoints */

		nrx =
		    (FUNC2(sc, MUSB2_REG_EPINFO) / 16);

		ntx =
		    (FUNC2(sc, MUSB2_REG_EPINFO) % 16);

		sc->sc_ep_max = (nrx > ntx) ? nrx : ntx;
	} else {
		nrx = ntx = sc->sc_ep_max;
	}

	/* these numbers exclude the control endpoint */

	FUNC1(2, "RX/TX endpoints: %u/%u\n", nrx, ntx);

	if (sc->sc_ep_max == 0) {
		FUNC1(2, "ERROR: Looks like the clocks are off!\n");
	}
	/* read out configuration data */

	sc->sc_conf_data = FUNC2(sc, MUSB2_REG_CONFDATA);

	FUNC1(2, "Config Data: 0x%02x\n",
	    sc->sc_conf_data);

	dynfifo = (sc->sc_conf_data & MUSB2_MASK_CD_DYNFIFOSZ) ? 1 : 0;

	if (dynfifo) {
		FUNC7(sc->sc_bus.bdev, "Dynamic FIFO sizing detected, "
		    "assuming 16Kbytes of FIFO RAM\n");
	}

	FUNC1(2, "HW version: 0x%04x\n",
	    FUNC2(sc, MUSB2_REG_HWVERS));

	/* initialise endpoint profiles */

	offset = 0;

	for (temp = 1; temp <= sc->sc_ep_max; temp++) {
		pf = sc->sc_hw_ep_profile + temp;

		/* select endpoint */
		FUNC3(sc, MUSB2_REG_EPINDEX, temp);

		fsize = FUNC2(sc, MUSB2_REG_FSIZE);
		frx = (fsize & MUSB2_MASK_RX_FSIZE) / 16;
		ftx = (fsize & MUSB2_MASK_TX_FSIZE);

		FUNC0("Endpoint %u FIFO size: IN=%u, OUT=%u, DYN=%d\n",
		    temp, ftx, frx, dynfifo);

		if (dynfifo) {
			if (frx && (temp <= nrx)) {
				for (i = 0; sc->sc_ep_cfg[i].ep_end >= 0; i++) {
					cfg = &sc->sc_ep_cfg[i];
					if (temp <= cfg->ep_end) {
						frx = cfg->ep_fifosz_shift;
						FUNC3(sc,
						    MUSB2_REG_RXFIFOSZ,
						    cfg->ep_fifosz_reg);
						break;
					}
				}

				FUNC4(sc, MUSB2_REG_RXFIFOADD,
				    offset >> 3);

				offset += (1 << frx);
			}
			if (ftx && (temp <= ntx)) {
				for (i = 0; sc->sc_ep_cfg[i].ep_end >= 0; i++) {
					cfg = &sc->sc_ep_cfg[i];
					if (temp <= cfg->ep_end) {
						ftx = cfg->ep_fifosz_shift;
						FUNC3(sc,
						    MUSB2_REG_TXFIFOSZ,
						    cfg->ep_fifosz_reg);
						break;
					}
				}

				FUNC4(sc, MUSB2_REG_TXFIFOADD,
				    offset >> 3);

				offset += (1 << ftx);
			}
		}

		if (frx && ftx && (temp <= nrx) && (temp <= ntx)) {
			pf->max_in_frame_size = 1 << ftx;
			pf->max_out_frame_size = 1 << frx;
			pf->is_simplex = 0;	/* duplex */
			pf->support_multi_buffer = 1;
			pf->support_bulk = 1;
			pf->support_interrupt = 1;
			pf->support_isochronous = 1;
			pf->support_in = 1;
			pf->support_out = 1;
		} else if (frx && (temp <= nrx)) {
			pf->max_out_frame_size = 1 << frx;
			pf->max_in_frame_size = 0;
			pf->is_simplex = 1;	/* simplex */
			pf->support_multi_buffer = 1;
			pf->support_bulk = 1;
			pf->support_interrupt = 1;
			pf->support_isochronous = 1;
			pf->support_out = 1;
		} else if (ftx && (temp <= ntx)) {
			pf->max_in_frame_size = 1 << ftx;
			pf->max_out_frame_size = 0;
			pf->is_simplex = 1;	/* simplex */
			pf->support_multi_buffer = 1;
			pf->support_bulk = 1;
			pf->support_interrupt = 1;
			pf->support_isochronous = 1;
			pf->support_in = 1;
		}
	}

	FUNC1(2, "Dynamic FIFO size = %d bytes\n", offset);

	/* turn on default interrupts */

	if (sc->sc_mode == MUSB2_HOST_MODE)
		FUNC3(sc, MUSB2_REG_INTUSBE, 0xff);
	else
		FUNC3(sc, MUSB2_REG_INTUSBE,
		    MUSB2_MASK_IRESET);

	FUNC8(sc);

	FUNC6(&sc->sc_bus);

	/* catch any lost interrupts */

	FUNC9(&sc->sc_bus);

	return (0);			/* success */
}