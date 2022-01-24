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
typedef  int uint16_t ;
struct bhnd_pci_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bhnd_pci_softc*) ; 
 int FUNC3 (struct bhnd_pci_softc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct bhnd_pci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_pci_softc*) ; 

int
FUNC6(struct bhnd_pci_softc *sc, int phy, int reg)
{
	uint32_t	cmd;
	uint16_t	val;
	int		error;

	/* Enable MDIO access */
	FUNC1(sc);
	FUNC5(sc);

	/* Issue the read */
	cmd = FUNC0(phy, reg);
	error = FUNC3(sc, cmd, &val);

	/* Disable MDIO access */
	FUNC4(sc);
	FUNC2(sc);

	if (error)
		return (~0U);

	return (val);
}