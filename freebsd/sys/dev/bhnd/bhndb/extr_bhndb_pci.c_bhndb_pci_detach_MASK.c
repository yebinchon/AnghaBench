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
struct bhndb_pci_softc {scalar_t__ msi_count; int /*<<< orphan*/  parent; int /*<<< orphan*/  isrc; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_pci_softc*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct bhndb_pci_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct bhndb_pci_softc	*sc;
	int			 error;

	sc = FUNC5(dev);

	/* Attempt to detach our children */
	if ((error = FUNC4(dev)))
		return (error);

	/* Perform generic bridge detach */
	if ((error = FUNC3(dev)))
		return (error);

	/* Disable clocks (if required by this hardware) */
	if ((error = FUNC1(sc->dev)))
		return (error);

	/* Free our interrupt resources */
	FUNC2(sc->isrc);

	/* Release MSI interrupts */
	if (sc->msi_count > 0)
		FUNC7(sc->parent);

	/* Disable PCI bus mastering */
	FUNC6(sc->parent);

	FUNC0(sc);

	return (0);
}