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
 int /*<<< orphan*/  FUNC0 (struct bhnd_pci_softc*) ; 
 int BHND_PCIE_MDIOCTL_DIVISOR_VAL ; 
 int BHND_PCIE_MDIOCTL_PREAM_EN ; 
 int FUNC1 (struct bhnd_pci_softc*,int) ; 

__attribute__((used)) static int
FUNC2(struct bhnd_pci_softc *sc)
{
	uint32_t ctl;

	FUNC0(sc);

	/* Enable MDIO clock and preamble mode */
	ctl = BHND_PCIE_MDIOCTL_PREAM_EN|BHND_PCIE_MDIOCTL_DIVISOR_VAL;
	return (FUNC1(sc, ctl));
}