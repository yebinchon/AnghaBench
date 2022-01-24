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
struct usb_ether {int /*<<< orphan*/  ue_eaddr; } ;
struct TYPE_2__ {int* ue_eaddr; int /*<<< orphan*/  ue_dev; } ;
struct ure_softc {int sc_flags; int sc_chip; TYPE_1__ sc_ue; scalar_t__ sc_phyno; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 scalar_t__ FUNC0 (int*) ; 
 int URE_CHIP_VER_4C00 ; 
 int URE_CHIP_VER_4C10 ; 
 int URE_FLAG_8152 ; 
 int /*<<< orphan*/  URE_MCU_TYPE_PLA ; 
 int /*<<< orphan*/  URE_PLA_BACKUP ; 
 int /*<<< orphan*/  URE_PLA_IDR ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ure_softc* FUNC3 (struct usb_ether*) ; 
 int /*<<< orphan*/  FUNC4 (struct ure_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ure_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ure_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ure_softc*) ; 

__attribute__((used)) static void
FUNC8(struct usb_ether *ue)
{
	struct ure_softc *sc = FUNC3(ue);

	sc->sc_phyno = 0;

	/* Determine the chip version. */
	FUNC4(sc);

	/* Initialize controller and get station address. */
	if (sc->sc_flags & URE_FLAG_8152)
		FUNC6(sc);
	else
		FUNC7(sc);

	if ((sc->sc_chip & URE_CHIP_VER_4C00) ||
	    (sc->sc_chip & URE_CHIP_VER_4C10))
		FUNC5(sc, URE_PLA_IDR, URE_MCU_TYPE_PLA,
		    ue->ue_eaddr, 8);
	else
		FUNC5(sc, URE_PLA_BACKUP, URE_MCU_TYPE_PLA,
		    ue->ue_eaddr, 8);

	if (FUNC0(sc->sc_ue.ue_eaddr)) {
		FUNC2(sc->sc_ue.ue_dev, "MAC assigned randomly\n");
		FUNC1(sc->sc_ue.ue_eaddr, ETHER_ADDR_LEN, 0);
		sc->sc_ue.ue_eaddr[0] &= ~0x01; /* unicast */
		sc->sc_ue.ue_eaddr[0] |= 0x02;  /* locally administered */
	}
}