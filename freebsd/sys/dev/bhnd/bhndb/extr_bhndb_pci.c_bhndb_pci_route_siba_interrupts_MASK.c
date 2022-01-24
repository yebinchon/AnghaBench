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
typedef  int u_int ;
struct bhndb_pci_softc {int pci_quirks; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  sbintvec ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_pci_softc*) ; 
 int BHNDB_PCI_QUIRK_SIBA_INTVEC ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_pci_softc*) ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIBA_CFG0_INTVEC ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (struct bhndb_pci_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bhndb_pci_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC8(struct bhndb_pci_softc *sc, device_t child)
{
	uint32_t	sbintvec;
	u_int		ivec;
	int		error;

	FUNC2(sc->pci_quirks & BHNDB_PCI_QUIRK_SIBA_INTVEC,
	    ("route_siba_interrupts not supported by this hardware"));

	/* Fetch the sbflag# for the child */
	if ((error = FUNC4(child, 0, &ivec)))
		return (error);

	if (ivec > (sizeof(sbintvec)*8) - 1 /* aka '31' */) {
		/* This should never be an issue in practice */
		FUNC7(sc->dev, "cannot route interrupts to high "
		    "sbflag# %u\n", ivec);
		return (ENXIO);
	}

	FUNC0(sc);

	sbintvec = FUNC5(sc, FUNC3(SIBA_CFG0_INTVEC), 4);
	sbintvec |= (1 << ivec);
	FUNC6(sc, FUNC3(SIBA_CFG0_INTVEC), sbintvec, 4);

	FUNC1(sc);

	return (0);
}