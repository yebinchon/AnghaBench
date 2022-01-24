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
struct bhnd_pci_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int BHND_PCIE_MDIODATA_DATA_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pci_softc*) ; 
 int FUNC3 (struct bhnd_pci_softc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_pci_softc*) ; 

int
FUNC6(struct bhnd_pci_softc *sc, int phy, int reg, int val)
{
	uint32_t	cmd;
	int		error;

	/* Enable MDIO access */
	FUNC1(sc);
	FUNC5(sc);

	/* Issue the write */
	cmd = FUNC0(phy, reg) | (val & BHND_PCIE_MDIODATA_DATA_MASK);
	error = FUNC3(sc, cmd);

	/* Disable MDIO access */
	FUNC4(sc);
	FUNC2(sc);

	return (error);
}