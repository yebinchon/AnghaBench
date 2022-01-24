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
typedef  int /*<<< orphan*/  uint32_t ;
struct bhnd_pci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  BHND_PCIE_IND_ADDR ; 
 int /*<<< orphan*/  BHND_PCIE_IND_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bhnd_pci_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct bhnd_pci_softc *sc, uint32_t addr,
    uint32_t val)
{
	FUNC0(sc);

	FUNC1(sc);
	FUNC3(sc, BHND_PCIE_IND_ADDR, addr);
	FUNC3(sc, BHND_PCIE_IND_DATA, val);
	FUNC2(sc);
}