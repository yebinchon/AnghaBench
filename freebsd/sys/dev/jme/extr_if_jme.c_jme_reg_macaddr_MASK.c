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
typedef  int uint32_t ;
struct jme_softc {int* jme_eaddr; int /*<<< orphan*/  jme_dev; } ;

/* Variables and functions */
 int FUNC0 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JME_PAR0 ; 
 int /*<<< orphan*/  JME_PAR1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC2(struct jme_softc *sc)
{
	uint32_t par0, par1;

	/* Read station address. */
	par0 = FUNC0(sc, JME_PAR0);
	par1 = FUNC0(sc, JME_PAR1);
	par1 &= 0xFFFF;
	if ((par0 == 0 && par1 == 0) ||
	    (par0 == 0xFFFFFFFF && par1 == 0xFFFF)) {
		FUNC1(sc->jme_dev,
		    "Failed to retrieve Ethernet address.\n");
	} else {
		/*
		 * For controllers that use eFuse, the station address
		 * could also be extracted from JME_PCI_PAR0 and
		 * JME_PCI_PAR1 registers in PCI configuration space.
		 * Each register holds exactly half of station address(24bits)
		 * so use JME_PAR0, JME_PAR1 registers instead.
		 */
		sc->jme_eaddr[0] = (par0 >> 0) & 0xFF;
		sc->jme_eaddr[1] = (par0 >> 8) & 0xFF;
		sc->jme_eaddr[2] = (par0 >> 16) & 0xFF;
		sc->jme_eaddr[3] = (par0 >> 24) & 0xFF;
		sc->jme_eaddr[4] = (par1 >> 0) & 0xFF;
		sc->jme_eaddr[5] = (par1 >> 8) & 0xFF;
	}
}