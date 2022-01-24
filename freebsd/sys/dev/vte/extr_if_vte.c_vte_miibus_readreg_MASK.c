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
struct vte_softc {int /*<<< orphan*/  vte_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct vte_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vte_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int MMDIO_PHY_ADDR_SHIFT ; 
 int MMDIO_READ ; 
 int MMDIO_REG_ADDR_SHIFT ; 
 int /*<<< orphan*/  VTE_MMDIO ; 
 int /*<<< orphan*/  VTE_MMRD ; 
 int VTE_PHY_TIMEOUT ; 
 struct vte_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int phy, int reg)
{
	struct vte_softc *sc;
	int i;

	sc = FUNC3(dev);

	FUNC1(sc, VTE_MMDIO, MMDIO_READ |
	    (phy << MMDIO_PHY_ADDR_SHIFT) | (reg << MMDIO_REG_ADDR_SHIFT));
	for (i = VTE_PHY_TIMEOUT; i > 0; i--) {
		FUNC2(5);
		if ((FUNC0(sc, VTE_MMDIO) & MMDIO_READ) == 0)
			break;
	}

	if (i == 0) {
		FUNC4(sc->vte_dev, "phy read timeout : %d\n", reg);
		return (0);
	}

	return (FUNC0(sc, VTE_MMRD));
}