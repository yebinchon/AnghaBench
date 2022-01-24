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
struct ahc_softc {int flags; int /*<<< orphan*/  dev_softc; int /*<<< orphan*/  parent_dmat; } ;
struct ahc_pci_identity {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int AHC_39BIT_ADDRESSING ; 
 int /*<<< orphan*/  AHC_MAXTRANSFER_SIZE ; 
 int /*<<< orphan*/  AHC_NSEG ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 struct ahc_softc* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 struct ahc_pci_identity* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahc_softc*) ; 
 int FUNC4 (struct ahc_softc*,struct ahc_pci_identity*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ahc_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 char* FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(device_t dev)
{
	struct	 ahc_pci_identity *entry;
	struct	 ahc_softc *ahc;
	char	*name;
	int	 error;

	entry = FUNC2(dev);
	if (entry == NULL)
		return (ENXIO);

	/*
	 * Allocate a softc for this card and
	 * set it up for attachment by our
	 * common detect routine.
	 */
	name = FUNC10(FUNC13(FUNC8(dev)) + 1, M_DEVBUF, M_NOWAIT);
	if (name == NULL)
		return (ENOMEM);
	FUNC12(name, FUNC8(dev));
	ahc = FUNC0(dev, name);
	if (ahc == NULL)
		return (ENOMEM);

	FUNC5(ahc, FUNC9(dev));

	/*
	 * Should we bother disabling 39Bit addressing
	 * based on installed memory?
	 */
	if (sizeof(bus_addr_t) > 4)
                ahc->flags |= AHC_39BIT_ADDRESSING;

	/* Allocate a dmatag for our SCB DMA maps */
	error = FUNC6(ahc, /*parent*/FUNC7(dev),
				   /*alignment*/1, /*boundary*/0,
				   (ahc->flags & AHC_39BIT_ADDRESSING)
				   ? 0x7FFFFFFFFFLL
				   : BUS_SPACE_MAXADDR_32BIT,
				   /*highaddr*/BUS_SPACE_MAXADDR,
				   /*filter*/NULL, /*filterarg*/NULL,
				   /*maxsize*/BUS_SPACE_MAXSIZE_32BIT,
				   /*nsegments*/AHC_NSEG,
				   /*maxsegsz*/AHC_MAXTRANSFER_SIZE,
				   /*flags*/0,
				   &ahc->parent_dmat);

	if (error != 0) {
		FUNC11("ahc_pci_attach: Could not allocate DMA tag "
		       "- error %d\n", error);
		FUNC3(ahc);
		return (ENOMEM);
	}
	ahc->dev_softc = dev;
	error = FUNC4(ahc, entry);
	if (error != 0) {
		FUNC3(ahc);
		return (error);
	}

	FUNC1(ahc);
	return (0);
}