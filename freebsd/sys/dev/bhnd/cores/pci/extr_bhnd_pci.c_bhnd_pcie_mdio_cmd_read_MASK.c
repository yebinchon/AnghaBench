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
struct bhnd_pci_softc {int dummy; } ;

/* Variables and functions */
 int BHND_PCIE_MDIODATA_CMD_READ ; 
 int BHND_PCIE_MDIODATA_DATA_MASK ; 
 int BHND_PCIE_MDIODATA_START ; 
 int BHND_PCIE_MDIODATA_TA ; 
 int /*<<< orphan*/  BHND_PCIE_MDIO_CTL_DELAY ; 
 int /*<<< orphan*/  BHND_PCIE_MDIO_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pci_softc*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bhnd_pci_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC4 (struct bhnd_pci_softc*) ; 

__attribute__((used)) static int
FUNC5(struct bhnd_pci_softc *sc, uint32_t cmd,
    uint16_t *data_read)
{
	int error;

	FUNC0(sc, MA_OWNED);

	cmd |= BHND_PCIE_MDIODATA_START|BHND_PCIE_MDIODATA_TA|BHND_PCIE_MDIODATA_CMD_READ;
	FUNC2(sc, BHND_PCIE_MDIO_DATA, cmd);
	FUNC3(BHND_PCIE_MDIO_CTL_DELAY);

	if ((error = FUNC4(sc)))
		return (error);

	*data_read = (FUNC1(sc, BHND_PCIE_MDIO_DATA) & 
	    BHND_PCIE_MDIODATA_DATA_MASK);
	return (0);
}