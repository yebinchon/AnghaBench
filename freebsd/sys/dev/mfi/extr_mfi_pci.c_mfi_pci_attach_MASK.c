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
struct mfi_softc {int mfi_flags; int mfi_regs_rid; int mfi_irq_rid; int /*<<< orphan*/  mfi_dev; int /*<<< orphan*/ * mfi_irq; int /*<<< orphan*/  mfi_parent_dmat; int /*<<< orphan*/ * mfi_regs_resource; int /*<<< orphan*/  mfi_bhandle; int /*<<< orphan*/  mfi_btag; } ;
struct mfi_ident {int flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int MFI_FLAGS_1064R ; 
 int MFI_FLAGS_1078 ; 
 int MFI_FLAGS_GEN2 ; 
 int MFI_FLAGS_SKINNY ; 
 int MFI_FLAGS_TBOLT ; 
 void* FUNC0 (int) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mfi_softc*,int) ; 
 struct mfi_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (struct mfi_softc*) ; 
 struct mfi_ident* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mfi_softc*) ; 
 scalar_t__ mfi_msi ; 
 int /*<<< orphan*/  FUNC10 (struct mfi_softc*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct mfi_softc *sc;
	struct mfi_ident *m;
	int count, error;

	sc = FUNC5(dev);
	FUNC4(sc, sizeof(*sc));
	sc->mfi_dev = dev;
	m = FUNC8(dev);
	sc->mfi_flags = m->flags;

	/* Ensure busmastering is enabled */
	FUNC12(dev);

	/* Allocate PCI registers */
	if ((sc->mfi_flags & MFI_FLAGS_1064R) ||
	    (sc->mfi_flags & MFI_FLAGS_1078)) {
		/* 1068/1078: Memory mapped BAR is at offset 0x10 */
		sc->mfi_regs_rid = FUNC0(0);
	}
	else if ((sc->mfi_flags & MFI_FLAGS_GEN2) ||
		 (sc->mfi_flags & MFI_FLAGS_SKINNY) ||
		(sc->mfi_flags & MFI_FLAGS_TBOLT)) { 
		/* Gen2/Skinny: Memory mapped BAR is at offset 0x14 */
		sc->mfi_regs_rid = FUNC0(1);
	}
	if ((sc->mfi_regs_resource = FUNC1(sc->mfi_dev,
	    SYS_RES_MEMORY, &sc->mfi_regs_rid, RF_ACTIVE)) == NULL) {
		FUNC6(dev, "Cannot allocate PCI registers\n");
		return (ENXIO);
	}
	sc->mfi_btag = FUNC14(sc->mfi_regs_resource);
	sc->mfi_bhandle = FUNC13(sc->mfi_regs_resource);

	error = ENOMEM;

	/* Allocate parent DMA tag */
	if (FUNC2(	FUNC3(dev),	/* PCI parent */
				1, 0,			/* algnmnt, boundary */
				BUS_SPACE_MAXADDR,	/* lowaddr */
				BUS_SPACE_MAXADDR,	/* highaddr */
				NULL, NULL,		/* filter, filterarg */
				BUS_SPACE_MAXSIZE_32BIT,/* maxsize */
				BUS_SPACE_UNRESTRICTED,	/* nsegments */
				BUS_SPACE_MAXSIZE_32BIT,/* maxsegsize */
				0,			/* flags */
				NULL, NULL,		/* lockfunc, lockarg */
				&sc->mfi_parent_dmat)) {
		FUNC6(dev, "Cannot allocate parent DMA tag\n");
		goto out;
	}

	/* Allocate IRQ resource. */
	sc->mfi_irq_rid = 0;
	count = 1;
	if (mfi_msi && FUNC11(sc->mfi_dev, &count) == 0) {
		FUNC6(sc->mfi_dev, "Using MSI\n");
		sc->mfi_irq_rid = 1;
	}
	if ((sc->mfi_irq = FUNC1(sc->mfi_dev, SYS_RES_IRQ,
	    &sc->mfi_irq_rid, RF_SHAREABLE | RF_ACTIVE)) == NULL) {
		FUNC6(sc->mfi_dev, "Cannot allocate interrupt\n");
		error = EINVAL;
		goto out;
	}

	error = FUNC7(sc);
out:
	if (error) {
		FUNC9(sc);
		FUNC10(sc);
	}

	return (error);
}