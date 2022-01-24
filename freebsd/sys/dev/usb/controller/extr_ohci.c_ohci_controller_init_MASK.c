#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usb_error_t ;
typedef  int uint32_t ;
struct usb_page_search {int physaddr; } ;
struct TYPE_9__ {int /*<<< orphan*/  bulk_start_pc; int /*<<< orphan*/  ctrl_start_pc; int /*<<< orphan*/  hcca_pc; } ;
struct TYPE_8__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_10__ {int sc_eintrs; scalar_t__ sc_noport; TYPE_2__ sc_hw; TYPE_1__ sc_bus; } ;
typedef  TYPE_3__ ohci_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int OHCI_ALL_INTRS ; 
 int OHCI_BLE ; 
 int /*<<< orphan*/  OHCI_BULK_HEAD_ED ; 
 int OHCI_CBSR_MASK ; 
 int OHCI_CLE ; 
 int /*<<< orphan*/  OHCI_COMMAND_STATUS ; 
 int /*<<< orphan*/  OHCI_CONTROL ; 
 int /*<<< orphan*/  OHCI_CONTROL_HEAD_ED ; 
 int /*<<< orphan*/  OHCI_ENABLE_POWER_DELAY ; 
 int OHCI_FIT ; 
 int /*<<< orphan*/  OHCI_FM_INTERVAL ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  OHCI_HCCA ; 
 int OHCI_HCFS_MASK ; 
 int OHCI_HCFS_OPERATIONAL ; 
 int OHCI_HCFS_RESET ; 
 int OHCI_HCFS_SUSPEND ; 
 int OHCI_HCR ; 
 int OHCI_IE ; 
 int /*<<< orphan*/  OHCI_INTERRUPT_DISABLE ; 
 int /*<<< orphan*/  OHCI_INTERRUPT_ENABLE ; 
 int OHCI_IR ; 
 int OHCI_LES ; 
 int OHCI_LPSC ; 
 int OHCI_MIE ; 
 int OHCI_NOCP ; 
 int OHCI_OCR ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  OHCI_PERIODIC_START ; 
 int OHCI_PLE ; 
 int OHCI_RATIO_1_4 ; 
 int /*<<< orphan*/  OHCI_READ_DESC_DELAY ; 
 int /*<<< orphan*/  OHCI_RH_DESCRIPTOR_A ; 
 int /*<<< orphan*/  OHCI_RH_STATUS ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  USB_BUS_RESET_DELAY ; 
 int /*<<< orphan*/  USB_ERR_IOERROR ; 
 int /*<<< orphan*/  USB_ERR_NORMAL_COMPLETION ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int ohcidebug ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_page_search*) ; 

__attribute__((used)) static usb_error_t
FUNC14(ohci_softc_t *sc, int do_suspend)
{
	struct usb_page_search buf_res;
	uint32_t i;
	uint32_t ctl;
	uint32_t ival;
	uint32_t hcr;
	uint32_t fm;
	uint32_t per;
	uint32_t desca;

	/* Determine in what context we are running. */
	ctl = FUNC6(sc, OHCI_CONTROL);
	if (ctl & OHCI_IR) {
		/* SMM active, request change */
		FUNC1("SMM active, request owner change\n");
		FUNC7(sc, OHCI_COMMAND_STATUS, OHCI_OCR);
		for (i = 0; (i < 100) && (ctl & OHCI_IR); i++) {
			FUNC12(NULL, hz / 1000);
			ctl = FUNC6(sc, OHCI_CONTROL);
		}
		if (ctl & OHCI_IR) {
			FUNC10(sc->sc_bus.bdev,
			    "SMM does not respond, resetting\n");
			FUNC7(sc, OHCI_CONTROL, OHCI_HCFS_RESET);
			goto reset;
		}
	} else {
		FUNC1("cold started\n");
reset:
		/* controller was cold started */
		FUNC12(NULL,
		    FUNC8(USB_BUS_RESET_DELAY));
	}

	/*
	 * This reset should not be necessary according to the OHCI spec, but
	 * without it some controllers do not start.
	 */
	FUNC1("%s: resetting\n", FUNC9(sc->sc_bus.bdev));
	FUNC7(sc, OHCI_CONTROL, OHCI_HCFS_RESET);

	FUNC12(NULL,
	    FUNC8(USB_BUS_RESET_DELAY));

	/* we now own the host controller and the bus has been reset */
	ival = FUNC3(FUNC6(sc, OHCI_FM_INTERVAL));

	FUNC7(sc, OHCI_COMMAND_STATUS, OHCI_HCR);	/* Reset HC */
	/* nominal time for a reset is 10 us */
	for (i = 0; i < 10; i++) {
		FUNC0(10);
		hcr = FUNC6(sc, OHCI_COMMAND_STATUS) & OHCI_HCR;
		if (!hcr) {
			break;
		}
	}
	if (hcr) {
		FUNC10(sc->sc_bus.bdev, "reset timeout\n");
		return (USB_ERR_IOERROR);
	}
#ifdef USB_DEBUG
	if (ohcidebug > 15) {
		ohci_dumpregs(sc);
	}
#endif

	if (do_suspend) {
		FUNC7(sc, OHCI_CONTROL, OHCI_HCFS_SUSPEND);
		return (USB_ERR_NORMAL_COMPLETION);
	}

	/* The controller is now in SUSPEND state, we have 2ms to finish. */

	/* set up HC registers */
	FUNC13(&sc->sc_hw.hcca_pc, 0, &buf_res);
	FUNC7(sc, OHCI_HCCA, buf_res.physaddr);

	FUNC13(&sc->sc_hw.ctrl_start_pc, 0, &buf_res);
	FUNC7(sc, OHCI_CONTROL_HEAD_ED, buf_res.physaddr);

	FUNC13(&sc->sc_hw.bulk_start_pc, 0, &buf_res);
	FUNC7(sc, OHCI_BULK_HEAD_ED, buf_res.physaddr);

	/* disable all interrupts and then switch on all desired interrupts */
	FUNC7(sc, OHCI_INTERRUPT_DISABLE, OHCI_ALL_INTRS);
	FUNC7(sc, OHCI_INTERRUPT_ENABLE, sc->sc_eintrs | OHCI_MIE);
	/* switch on desired functional features */
	ctl = FUNC6(sc, OHCI_CONTROL);
	ctl &= ~(OHCI_CBSR_MASK | OHCI_LES | OHCI_HCFS_MASK | OHCI_IR);
	ctl |= OHCI_PLE | OHCI_IE | OHCI_CLE | OHCI_BLE |
	    OHCI_RATIO_1_4 | OHCI_HCFS_OPERATIONAL;
	/* And finally start it! */
	FUNC7(sc, OHCI_CONTROL, ctl);

	/*
	 * The controller is now OPERATIONAL.  Set a some final
	 * registers that should be set earlier, but that the
	 * controller ignores when in the SUSPEND state.
	 */
	fm = (FUNC6(sc, OHCI_FM_INTERVAL) & OHCI_FIT) ^ OHCI_FIT;
	fm |= FUNC2(ival) | ival;
	FUNC7(sc, OHCI_FM_INTERVAL, fm);
	per = FUNC5(ival);	/* 90% periodic */
	FUNC7(sc, OHCI_PERIODIC_START, per);

	/* Fiddle the No OverCurrent Protection bit to avoid chip bug. */
	desca = FUNC6(sc, OHCI_RH_DESCRIPTOR_A);
	FUNC7(sc, OHCI_RH_DESCRIPTOR_A, desca | OHCI_NOCP);
	FUNC7(sc, OHCI_RH_STATUS, OHCI_LPSC);	/* Enable port power */
	FUNC12(NULL,
	    FUNC8(OHCI_ENABLE_POWER_DELAY));
	FUNC7(sc, OHCI_RH_DESCRIPTOR_A, desca);

	/*
	 * The AMD756 requires a delay before re-reading the register,
	 * otherwise it will occasionally report 0 ports.
	 */
	sc->sc_noport = 0;
	for (i = 0; (i < 10) && (sc->sc_noport == 0); i++) {
		FUNC12(NULL,
		    FUNC8(OHCI_READ_DESC_DELAY));
		sc->sc_noport = FUNC4(FUNC6(sc, OHCI_RH_DESCRIPTOR_A));
	}

#ifdef USB_DEBUG
	if (ohcidebug > 5) {
		ohci_dumpregs(sc);
	}
#endif
	return (USB_ERR_NORMAL_COMPLETION);
}