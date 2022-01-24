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
struct ahd_softc {int flags; int /*<<< orphan*/  dev_softc; int /*<<< orphan*/  parent_dmat; } ;
struct ahd_pci_identity {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 int AHD_39BIT_ADDRESSING ; 
 int /*<<< orphan*/  AHD_MAXTRANSFER_SIZE ; 
 int /*<<< orphan*/  AHD_NSEG ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 struct ahd_softc* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahd_softc*) ; 
 struct ahd_pci_identity* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahd_softc*) ; 
 int FUNC4 (struct ahd_softc*,struct ahd_pci_identity*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahd_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ahd_softc*) ; 
 int FUNC7 (struct ahd_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 char* FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct	 ahd_pci_identity *entry;
	struct	 ahd_softc *ahd;
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
	name = FUNC11(FUNC14(FUNC9(dev)) + 1, M_DEVBUF, M_NOWAIT);
	if (name == NULL)
		return (ENOMEM);
	FUNC13(name, FUNC9(dev));
	ahd = FUNC0(dev, name);
	if (ahd == NULL)
		return (ENOMEM);

	FUNC5(ahd, FUNC10(dev));

	/*
	 * Should we bother disabling 39Bit addressing
	 * based on installed memory?
	 */
	if (sizeof(bus_addr_t) > 4)
                ahd->flags |= AHD_39BIT_ADDRESSING;

	/* Allocate a dmatag for our SCB DMA maps */
	error = FUNC7(ahd, /*parent*/FUNC8(dev),
				   /*alignment*/1, /*boundary*/0,
				   (ahd->flags & AHD_39BIT_ADDRESSING)
				   ? 0x7FFFFFFFFF
				   : BUS_SPACE_MAXADDR_32BIT,
				   /*highaddr*/BUS_SPACE_MAXADDR,
				   /*filter*/NULL, /*filterarg*/NULL,
				   /*maxsize*/BUS_SPACE_MAXSIZE_32BIT,
				   /*nsegments*/AHD_NSEG,
				   /*maxsegsz*/AHD_MAXTRANSFER_SIZE,
				   /*flags*/0,
				   &ahd->parent_dmat);

	if (error != 0) {
		FUNC12("ahd_pci_attach: Could not allocate DMA tag "
		       "- error %d\n", error);
		FUNC3(ahd);
		return (ENOMEM);
	}
	ahd->dev_softc = dev;
	error = FUNC4(ahd, entry);
	if (error != 0) {
		FUNC3(ahd);
		return (error);
	}

	FUNC6(ahd);
	FUNC1(ahd);
	return (0);
}