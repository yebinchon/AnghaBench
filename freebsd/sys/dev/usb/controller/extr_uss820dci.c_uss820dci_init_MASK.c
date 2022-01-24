#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint8_t ;
struct TYPE_6__ {int /*<<< orphan*/  bus_mtx; int /*<<< orphan*/ * methods; int /*<<< orphan*/  usbrev; } ;
struct TYPE_5__ {int status_vbus; int mcsr_feat; } ;
struct uss820dci_softc {TYPE_2__ sc_bus; TYPE_1__ sc_flags; } ;
struct usb_hw_ep_profile {int max_in_frame_size; int max_out_frame_size; scalar_t__ support_control; scalar_t__ support_isochronous; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  USB_ERR_INVAL ; 
 int /*<<< orphan*/  USB_REV_1_1 ; 
 int /*<<< orphan*/  USS820_EPCON ; 
 int USS820_EPCON_CTLEP ; 
 int USS820_EPCON_RXEPEN ; 
 int USS820_EPCON_RXIE ; 
 int USS820_EPCON_RXSPM ; 
 int USS820_EPCON_TXEPEN ; 
 int USS820_EPCON_TXOE ; 
 int /*<<< orphan*/  USS820_EPINDEX ; 
 int USS820_EP_MAX ; 
 int /*<<< orphan*/  USS820_MCSR ; 
 int USS820_MCSR_BDFEAT ; 
 int USS820_MCSR_FEAT ; 
 int USS820_MCSR_INIT ; 
 int FUNC4 (struct uss820dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USS820_REV ; 
 int /*<<< orphan*/  USS820_RXCON ; 
 int /*<<< orphan*/  USS820_SBIE ; 
 int /*<<< orphan*/  USS820_SBIE1 ; 
 int /*<<< orphan*/  USS820_SCR ; 
 int /*<<< orphan*/  USS820_SCRATCH ; 
 int USS820_SCRATCH_IE_RESUME ; 
 int USS820_SCR_IE_RESET ; 
 int USS820_SCR_IE_SUSP ; 
 int USS820_SCR_IRQPOL ; 
 int USS820_SCR_SRESET ; 
 int USS820_SCR_T_IRQ ; 
 int /*<<< orphan*/  USS820_TXCON ; 
 int USS820_TXCON_ATM ; 
 int USS820_TXCON_FFSZ_16_64 ; 
 int USS820_TXCON_FFSZ_32_1024 ; 
 int USS820_TXCON_FFSZ_64_256 ; 
 int USS820_TXCON_FFSZ_8_512 ; 
 int USS820_TXCON_TXISO ; 
 int /*<<< orphan*/  FUNC5 (struct uss820dci_softc*,int /*<<< orphan*/ ,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  uss820dci_bus_methods ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct usb_hw_ep_profile const**,int) ; 
 int /*<<< orphan*/  FUNC9 (struct uss820dci_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct uss820dci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

usb_error_t
FUNC11(struct uss820dci_softc *sc)
{
	const struct usb_hw_ep_profile *pf;
	uint8_t n;
	uint8_t temp;

	FUNC1("start\n");

	/* set up the bus structure */
	sc->sc_bus.usbrev = USB_REV_1_1;
	sc->sc_bus.methods = &uss820dci_bus_methods;

	FUNC2(&sc->sc_bus);

	/* we always have VBUS */
	sc->sc_flags.status_vbus = 1;

	/* reset the chip */
	FUNC5(sc, USS820_SCR, USS820_SCR_SRESET);
	FUNC0(100);
	FUNC5(sc, USS820_SCR, 0);

	/* wait for reset to complete */
	for (n = 0;; n++) {

		temp = FUNC4(sc, USS820_MCSR);

		if (temp & USS820_MCSR_INIT) {
			break;
		}
		if (n == 100) {
			FUNC3(&sc->sc_bus);
			return (USB_ERR_INVAL);
		}
		/* wait a little for things to stabilise */
		FUNC0(100);
	}

	/* do a pulldown */
	FUNC9(sc);

	/* wait 10ms for pulldown to stabilise */
	FUNC6(&sc->sc_bus.bus_mtx, hz / 100);

	/* check hardware revision */
	temp = FUNC4(sc, USS820_REV);

	if (temp < 0x13) {
		FUNC3(&sc->sc_bus);
		return (USB_ERR_INVAL);
	}
	/* enable interrupts */
	FUNC5(sc, USS820_SCR,
	    USS820_SCR_T_IRQ |
	    USS820_SCR_IE_RESET |
	/* USS820_SCR_RWUPE | */
	    USS820_SCR_IE_SUSP |
	    USS820_SCR_IRQPOL);

	/* enable interrupts */
	FUNC5(sc, USS820_SCRATCH,
	    USS820_SCRATCH_IE_RESUME);

	/* enable features */
	FUNC5(sc, USS820_MCSR,
	    USS820_MCSR_BDFEAT |
	    USS820_MCSR_FEAT);

	sc->sc_flags.mcsr_feat = 1;

	/* disable interrupts */
	FUNC5(sc, USS820_SBIE, 0);

	/* disable interrupts */
	FUNC5(sc, USS820_SBIE1, 0);

	/* disable all endpoints */
	for (n = 0; n != USS820_EP_MAX; n++) {

		/* select endpoint */
		FUNC5(sc, USS820_EPINDEX, n);

		/* disable endpoint */
		FUNC10(sc, USS820_EPCON, 0, 0);
	}

	/*
	 * Initialise default values for some registers that cannot be
	 * changed during operation!
	 */
	for (n = 0; n != USS820_EP_MAX; n++) {

		FUNC8(NULL, &pf, n);

		/* the maximum frame sizes should be the same */
		if (pf->max_in_frame_size != pf->max_out_frame_size) {
			FUNC1("Max frame size mismatch %u != %u\n",
			    pf->max_in_frame_size, pf->max_out_frame_size);
		}
		if (pf->support_isochronous) {
			if (pf->max_in_frame_size <= 64) {
				temp = (USS820_TXCON_FFSZ_16_64 |
				    USS820_TXCON_TXISO |
				    USS820_TXCON_ATM);
			} else if (pf->max_in_frame_size <= 256) {
				temp = (USS820_TXCON_FFSZ_64_256 |
				    USS820_TXCON_TXISO |
				    USS820_TXCON_ATM);
			} else if (pf->max_in_frame_size <= 512) {
				temp = (USS820_TXCON_FFSZ_8_512 |
				    USS820_TXCON_TXISO |
				    USS820_TXCON_ATM);
			} else {	/* 1024 bytes */
				temp = (USS820_TXCON_FFSZ_32_1024 |
				    USS820_TXCON_TXISO |
				    USS820_TXCON_ATM);
			}
		} else {
			if ((pf->max_in_frame_size <= 8) &&
			    (sc->sc_flags.mcsr_feat)) {
				temp = (USS820_TXCON_FFSZ_8_512 |
				    USS820_TXCON_ATM);
			} else if (pf->max_in_frame_size <= 16) {
				temp = (USS820_TXCON_FFSZ_16_64 |
				    USS820_TXCON_ATM);
			} else if ((pf->max_in_frame_size <= 32) &&
			    (sc->sc_flags.mcsr_feat)) {
				temp = (USS820_TXCON_FFSZ_32_1024 |
				    USS820_TXCON_ATM);
			} else {	/* 64 bytes */
				temp = (USS820_TXCON_FFSZ_64_256 |
				    USS820_TXCON_ATM);
			}
		}

		/* need to configure the chip early */

		FUNC5(sc, USS820_EPINDEX, n);
		FUNC5(sc, USS820_TXCON, temp);
		FUNC5(sc, USS820_RXCON, temp);

		if (pf->support_control) {
			temp = USS820_EPCON_CTLEP |
			    USS820_EPCON_RXSPM |
			    USS820_EPCON_RXIE |
			    USS820_EPCON_RXEPEN |
			    USS820_EPCON_TXOE |
			    USS820_EPCON_TXEPEN;
		} else {
			temp = USS820_EPCON_RXEPEN | USS820_EPCON_TXEPEN;
		}

		FUNC10(sc, USS820_EPCON, 0, temp);
	}

	FUNC3(&sc->sc_bus);

	/* catch any lost interrupts */

	FUNC7(&sc->sc_bus);

	return (0);			/* success */
}