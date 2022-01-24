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
struct jme_softc {int /*<<< orphan*/  jme_dev; int /*<<< orphan*/  jme_chip_rev; int /*<<< orphan*/  jme_phyaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMCR_PDOWN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jme_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  JME_PCI_PE1 ; 
 int /*<<< orphan*/  JME_PHYPOWDN ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int PE1_GIGA_PDOWN_D3 ; 
 int PE1_GIGA_PDOWN_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC6(struct jme_softc *sc)
{
	uint32_t reg;

	FUNC3(sc->jme_dev, sc->jme_phyaddr, MII_BMCR, BMCR_PDOWN);
	if (FUNC0(sc->jme_chip_rev) >= 5) {
		reg = FUNC1(sc, JME_PHYPOWDN);
		reg |= 0x0000000F;
		FUNC2(sc, JME_PHYPOWDN, reg);
		reg = FUNC4(sc->jme_dev, JME_PCI_PE1, 4);
		reg &= ~PE1_GIGA_PDOWN_MASK;
		reg |= PE1_GIGA_PDOWN_D3;
		FUNC5(sc->jme_dev, JME_PCI_PE1, reg, 4);
	}
}