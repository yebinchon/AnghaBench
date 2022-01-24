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
typedef  int uint16_t ;
struct vte_softc {int /*<<< orphan*/  vte_dev; } ;

/* Variables and functions */
 int FUNC0 (struct vte_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MCR0_RX_ENB ; 
 int MCR0_TX_ENB ; 
 int /*<<< orphan*/  FUNC3 (struct vte_softc*) ; 
 int /*<<< orphan*/  VTE_MCR0 ; 
 int VTE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC5(struct vte_softc *sc)
{
	uint16_t mcr;
	int i;

	FUNC3(sc);

	/* Enable RX/TX MACs. */
	mcr = FUNC0(sc, VTE_MCR0);
	if ((mcr & (MCR0_RX_ENB | MCR0_TX_ENB)) !=
	    (MCR0_RX_ENB | MCR0_TX_ENB)) {
		mcr |= MCR0_RX_ENB | MCR0_TX_ENB;
		FUNC1(sc, VTE_MCR0, mcr);
		for (i = VTE_TIMEOUT; i > 0; i--) {
			mcr = FUNC0(sc, VTE_MCR0);
			if ((mcr & (MCR0_RX_ENB | MCR0_TX_ENB)) ==
			    (MCR0_RX_ENB | MCR0_TX_ENB))
				break;
			FUNC2(10);
		}
		if (i == 0)
			FUNC4(sc->vte_dev,
			    "could not enable RX/TX MAC(0x%04x)!\n", mcr);
	}
}