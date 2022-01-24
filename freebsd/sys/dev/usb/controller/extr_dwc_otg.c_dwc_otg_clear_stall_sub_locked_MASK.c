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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct dwc_otg_softc {unsigned int sc_active_rx_ep; int* sc_in_ctl; int* sc_out_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIEPCTL_EPTYPE_BULK ; 
 int /*<<< orphan*/  DIEPCTL_EPTYPE_INTERRUPT ; 
 int /*<<< orphan*/  DIEPCTL_EPTYPE_ISOC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int DIEPCTL_SNAK ; 
 int FUNC2 (scalar_t__) ; 
 int DIEPCTL_USBACTEP ; 
 int DOEPCTL_EPDIS ; 
 int DOEPCTL_SETD0PID ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dwc_otg_softc*,int,int) ; 
 int GRSTCTL_TXFFLSH ; 
 int FUNC7 (scalar_t__) ; 
 scalar_t__ UE_BULK ; 
 scalar_t__ UE_CONTROL ; 
 scalar_t__ UE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC8 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct dwc_otg_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct dwc_otg_softc*,int) ; 

__attribute__((used)) static void
FUNC11(struct dwc_otg_softc *sc, uint32_t mps,
    uint8_t ep_no, uint8_t ep_type, uint8_t ep_dir)
{
	uint32_t reg;
	uint32_t temp;

	if (ep_type == UE_CONTROL) {
		/* clearing stall is not needed */
		return;
	}

	if (ep_dir) {
		reg = FUNC3(ep_no);
	} else {
		reg = FUNC5(ep_no);
		sc->sc_active_rx_ep |= (1U << ep_no);
	}

	/* round up and mask away the multiplier count */
	mps = (mps + 3) & 0x7FC;

	if (ep_type == UE_BULK) {
		temp = FUNC0(
		    DIEPCTL_EPTYPE_BULK) |
		    DIEPCTL_USBACTEP;
	} else if (ep_type == UE_INTERRUPT) {
		temp = FUNC0(
		    DIEPCTL_EPTYPE_INTERRUPT) |
		    DIEPCTL_USBACTEP;
	} else {
		temp = FUNC0(
		    DIEPCTL_EPTYPE_ISOC) |
		    DIEPCTL_USBACTEP;
	}

	temp |= FUNC1(mps);
	temp |= FUNC2(ep_no);

	if (ep_dir)
		sc->sc_in_ctl[ep_no] = temp;
	else
		sc->sc_out_ctl[ep_no] = temp;

	FUNC6(sc, reg, temp | DOEPCTL_EPDIS);
	FUNC6(sc, reg, temp | DOEPCTL_SETD0PID);
	FUNC6(sc, reg, temp | DIEPCTL_SNAK);

	/* we only reset the transmit FIFO */
	if (ep_dir) {
		FUNC10(sc,
		    FUNC7(ep_no) |
		    GRSTCTL_TXFFLSH);

		FUNC6(sc,
		    FUNC4(ep_no), 0);
	}

	/* poll interrupt */
	FUNC9(sc);
	FUNC8(sc);
}