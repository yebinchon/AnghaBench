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
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
struct usb_hw_ep_profile {int max_in_frame_size; int max_out_frame_size; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;
struct avr32dci_softc {TYPE_1__ sc_bus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int AVR32_EPTCFG_EPDIR_IN ; 
 int FUNC1 (scalar_t__) ; 
 int AVR32_EPTCFG_EPT_MAPD ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int AVR32_EPTCFG_TYPE_BULK ; 
 int AVR32_EPTCFG_TYPE_INTR ; 
 int AVR32_EPTCFG_TYPE_ISOC ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int AVR32_EPTCTL_EPT_ENABL ; 
 int /*<<< orphan*/  AVR32_EPTRST ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int AVR32_EPTSTA_FRCESTALL ; 
 int AVR32_EPTSTA_TOGGLESQ ; 
 int FUNC8 (struct avr32dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct avr32dci_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ UE_BULK ; 
 scalar_t__ UE_CONTROL ; 
 scalar_t__ UE_DIR_IN ; 
 scalar_t__ UE_INTERRUPT ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct usb_hw_ep_profile const**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC12(struct avr32dci_softc *sc, uint8_t ep_no,
    uint8_t ep_type, uint8_t ep_dir)
{
	const struct usb_hw_ep_profile *pf;
	uint32_t temp;
	uint32_t epsize;
	uint8_t n;

	if (ep_type == UE_CONTROL) {
		/* clearing stall is not needed */
		return;
	}
	/* set endpoint reset */
	FUNC9(sc, AVR32_EPTRST, FUNC6(ep_no));

	/* set stall */
	FUNC9(sc, FUNC7(ep_no), AVR32_EPTSTA_FRCESTALL);

	/* reset data toggle */
	FUNC9(sc, FUNC4(ep_no), AVR32_EPTSTA_TOGGLESQ);

	/* clear stall */
	FUNC9(sc, FUNC4(ep_no), AVR32_EPTSTA_FRCESTALL);

	if (ep_type == UE_BULK) {
		temp = AVR32_EPTCFG_TYPE_BULK;
	} else if (ep_type == UE_INTERRUPT) {
		temp = AVR32_EPTCFG_TYPE_INTR;
	} else {
		temp = AVR32_EPTCFG_TYPE_ISOC |
		    FUNC3(1);
	}
	if (ep_dir & UE_DIR_IN) {
		temp |= AVR32_EPTCFG_EPDIR_IN;
	}
	FUNC10(NULL, &pf, ep_no);

	/* compute endpoint size (use maximum) */
	epsize = pf->max_in_frame_size | pf->max_out_frame_size;
	n = 0;
	while ((epsize /= 2))
		n++;
	temp |= FUNC1(n);

	/* use the maximum number of banks supported */
	if (ep_no < 1)
		temp |= FUNC2(1);
	else if (ep_no < 3)
		temp |= FUNC2(2);
	else
		temp |= FUNC2(3);

	FUNC9(sc, FUNC0(ep_no), temp);

	temp = FUNC8(sc, FUNC0(ep_no));

	if (!(temp & AVR32_EPTCFG_EPT_MAPD)) {
		FUNC11(sc->sc_bus.bdev, "Chip rejected configuration\n");
	} else {
		FUNC9(sc, FUNC5(ep_no),
		    AVR32_EPTCTL_EPT_ENABL);
	}
}