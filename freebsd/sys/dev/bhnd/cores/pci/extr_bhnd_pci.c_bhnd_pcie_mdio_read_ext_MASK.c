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
typedef  int uint16_t ;
struct bhnd_pci_softc {int quirks; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int BHND_PCIE_PHYADDR_SD ; 
 int BHND_PCIE_SD_ADDREXT ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pci_softc*) ; 
 int BHND_PCI_QUIRK_SD_C22_EXTADDR ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pci_softc*) ; 
 int MDIO_DEVADDR_NONE ; 
 int FUNC3 (struct bhnd_pci_softc*,int,int*) ; 
 int FUNC4 (struct bhnd_pci_softc*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bhnd_pci_softc*) ; 
 int FUNC7 (struct bhnd_pci_softc*,int,int) ; 

int
FUNC8(struct bhnd_pci_softc *sc, int phy, int devaddr,
    int reg)
{
	uint32_t	cmd;
	uint16_t	val;
	int		error;

	if (devaddr == MDIO_DEVADDR_NONE)
		return (FUNC7(sc, phy, reg));

	/* Extended register access is only supported for the SerDes device,
	 * using the non-standard C22 extended address mechanism */
	if (!(sc->quirks & BHND_PCI_QUIRK_SD_C22_EXTADDR) ||
	    phy != BHND_PCIE_PHYADDR_SD)
	{
		return (~0U);	
	}

	/* Enable MDIO access */
	FUNC1(sc);
	FUNC6(sc);

	/* Write the block address to the address extension register */
	cmd = FUNC0(phy, BHND_PCIE_SD_ADDREXT) | devaddr;
	if ((error = FUNC4(sc, cmd)))
		goto cleanup;

	/* Issue the read */
	cmd = FUNC0(phy, reg);
	error = FUNC3(sc, cmd, &val);

cleanup:
	FUNC5(sc);
	FUNC2(sc);

	if (error)
		return (~0U);

	return (val);
}