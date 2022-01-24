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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct stge_softc {int sc_led; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_usefiber; } ;

/* Variables and functions */
 int AC_AutoInit ; 
 int AC_DMA ; 
 int AC_FIFO ; 
 int AC_GlobalReset ; 
 int AC_Host ; 
 int AC_LEDMode ; 
 int AC_LEDModeBit1 ; 
 int AC_LEDSpeed ; 
 int AC_Network ; 
 int AC_ResetBusy ; 
 int AC_RstOut ; 
 int AC_RxReset ; 
 int AC_TxReset ; 
 int FUNC0 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct stge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct stge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PS_MemLen ; 
 int PS_MemLenb9b ; 
 int PS_NonCompdet ; 
 int /*<<< orphan*/  STGE_AsicCtrl ; 
 int /*<<< orphan*/  FUNC5 (struct stge_softc*) ; 
 int /*<<< orphan*/  STGE_PhySet ; 
#define  STGE_RESET_FULL 130 
#define  STGE_RESET_RX 129 
#define  STGE_RESET_TX 128 
 int STGE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC7(struct stge_softc *sc, uint32_t how)
{
	uint32_t ac;
	uint8_t v;
	int i, dv;

	FUNC5(sc);

	dv = 5000;
	ac = FUNC1(sc, STGE_AsicCtrl);
	switch (how) {
	case STGE_RESET_TX:
		ac |= AC_TxReset | AC_FIFO;
		dv = 100;
		break;
	case STGE_RESET_RX:
		ac |= AC_RxReset | AC_FIFO;
		dv = 100;
		break;
	case STGE_RESET_FULL:
	default:
		/*
		 * Only assert RstOut if we're fiber.  We need GMII clocks
		 * to be present in order for the reset to complete on fiber
		 * cards.
		 */
		ac |= AC_GlobalReset | AC_RxReset | AC_TxReset |
		    AC_DMA | AC_FIFO | AC_Network | AC_Host | AC_AutoInit |
		    (sc->sc_usefiber ? AC_RstOut : 0);
		break;
	}

	FUNC3(sc, STGE_AsicCtrl, ac);

	/* Account for reset problem at 10Mbps. */
	FUNC4(dv);

	for (i = 0; i < STGE_TIMEOUT; i++) {
		if ((FUNC1(sc, STGE_AsicCtrl) & AC_ResetBusy) == 0)
			break;
		FUNC4(dv);
	}

	if (i == STGE_TIMEOUT)
		FUNC6(sc->sc_dev, "reset failed to complete\n");

	/* Set LED, from Linux IPG driver. */
	ac = FUNC1(sc, STGE_AsicCtrl);
	ac &= ~(AC_LEDMode | AC_LEDSpeed | AC_LEDModeBit1);
	if ((sc->sc_led & 0x01) != 0)
		ac |= AC_LEDMode;
	if ((sc->sc_led & 0x03) != 0)
		ac |= AC_LEDModeBit1;
	if ((sc->sc_led & 0x08) != 0)
		ac |= AC_LEDSpeed;
	FUNC3(sc, STGE_AsicCtrl, ac);

	/* Set PHY, from Linux IPG driver */
	v = FUNC0(sc, STGE_PhySet);
	v &= ~(PS_MemLenb9b | PS_MemLen | PS_NonCompdet);
	v |= ((sc->sc_led & 0x70) >> 4);
	FUNC2(sc, STGE_PhySet, v);
}