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
struct resource {int dummy; } ;
struct aic7770_identity {int dummy; } ;
struct ahc_softc {int /*<<< orphan*/  dev_softc; int /*<<< orphan*/  parent_dmat; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  AHC_MAXTRANSFER_SIZE ; 
 int /*<<< orphan*/  AHC_NSEG ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 struct ahc_softc* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ahc_softc*) ; 
 struct aic7770_identity* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahc_softc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ahc_softc*,struct aic7770_identity*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ahc_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct resource* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct resource*) ; 
 int /*<<< orphan*/  FUNC15 (struct resource*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(device_t dev)
{
	struct	 aic7770_identity *entry;
	bus_space_tag_t	    tag;
	bus_space_handle_t  bsh;
	struct	  resource *regs;
	struct	  ahc_softc *ahc;
	char	 *name;
	int	  zero;
	int	  error;

	zero = 0;
	regs = FUNC7(dev, SYS_RES_IOPORT, &zero, RF_ACTIVE);
	if (regs == NULL)
		return (ENOMEM);

	tag = FUNC15(regs);
	bsh = FUNC14(regs);
	entry = FUNC3(tag, bsh);
	FUNC9(dev, SYS_RES_IOPORT, zero, regs);
	if (entry == NULL)
		return (ENODEV);

	/*
	 * Allocate a softc for this card and
	 * set it up for attachment by our
	 * common detect routine.
	 */
	name = FUNC12(FUNC17(FUNC10(dev)) + 1, M_DEVBUF, M_NOWAIT);
	if (name == NULL)
		return (ENOMEM);
	FUNC16(name, FUNC10(dev));
	ahc = FUNC0(dev, name);
	if (ahc == NULL)
		return (ENOMEM);

	FUNC4(ahc, FUNC11(dev));

	/* Allocate a dmatag for our SCB DMA maps */
	error = FUNC6(ahc, /*parent*/FUNC8(dev),
				   /*alignment*/1, /*boundary*/0,
				   /*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
				   /*highaddr*/BUS_SPACE_MAXADDR,
				   /*filter*/NULL, /*filterarg*/NULL,
				   /*maxsize*/BUS_SPACE_MAXSIZE_32BIT,
				   /*nsegments*/AHC_NSEG,
				   /*maxsegsz*/AHC_MAXTRANSFER_SIZE,
				   /*flags*/0,
				   &ahc->parent_dmat);

	if (error != 0) {
		FUNC13("ahc_isa_attach: Could not allocate DMA tag "
		       "- error %d\n", error);
		FUNC2(ahc);
		return (ENOMEM);
	}
	ahc->dev_softc = dev;
	error = FUNC5(ahc, entry, /*unused ioport arg*/0);
	if (error != 0) {
		FUNC2(ahc);
		return (error);
	}

	FUNC1(ahc);
	return (0);
}