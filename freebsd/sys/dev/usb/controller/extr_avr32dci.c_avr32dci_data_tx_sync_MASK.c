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
struct avr32dci_td {int /*<<< orphan*/  ep_no; int /*<<< orphan*/  pc; } ;
struct avr32dci_softc {int sc_dv_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int AVR32_EPTSTA_RX_SETUP ; 
 struct avr32dci_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct avr32dci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct avr32dci_softc*,int) ; 

__attribute__((used)) static uint8_t
FUNC6(struct avr32dci_td *td)
{
	struct avr32dci_softc *sc;
	uint32_t temp;

	/* get pointer to softc */
	sc = FUNC2(td->pc);

	/* check endpoint status */
	temp = FUNC3(sc, FUNC0(td->ep_no));

	FUNC4(5, "EPTSTA(%u)=0x%08x\n", td->ep_no, temp);

	if (temp & AVR32_EPTSTA_RX_SETUP) {
		FUNC4(5, "faking complete\n");
		/* Race condition */
		return (0);		/* complete */
	}
	/*
	 * The control endpoint has only got one bank, so if that bank
	 * is free the packet has been transferred!
	 */
	if (FUNC1(temp) != 0) {
		/* cannot write any data - a bank is busy */
		goto not_complete;
	}
	if (sc->sc_dv_addr != 0xFF) {
		/* set new address */
		FUNC5(sc, sc->sc_dv_addr);
	}
	return (0);			/* complete */

not_complete:
	return (1);			/* not complete */
}