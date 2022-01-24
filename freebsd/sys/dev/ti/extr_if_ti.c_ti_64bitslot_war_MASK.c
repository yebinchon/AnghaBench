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
struct ti_softc {scalar_t__ ti_hwrev; } ;

/* Variables and functions */
 int FUNC0 (struct ti_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ti_softc*,int,int) ; 
 int EINVAL ; 
 scalar_t__ TI_HWREV_TIGON ; 
 int TI_PCISTATE_32BIT_BUS ; 
 int TI_PCI_STATE ; 
 int /*<<< orphan*/  FUNC2 (struct ti_softc*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct ti_softc *sc)
{

	if (!(FUNC0(sc, TI_PCI_STATE) & TI_PCISTATE_32BIT_BUS)) {
		FUNC1(sc, 0x600, 0);
		FUNC1(sc, 0x604, 0);
		FUNC1(sc, 0x600, 0x5555AAAA);
		if (FUNC0(sc, 0x604) == 0x5555AAAA) {
			if (sc->ti_hwrev == TI_HWREV_TIGON)
				return (EINVAL);
			else {
				FUNC2(sc, TI_PCI_STATE,
				    TI_PCISTATE_32BIT_BUS);
				return (0);
			}
		}
	}

	return (0);
}