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
struct mps_softc {int /*<<< orphan*/  mps_parent_dmat; int /*<<< orphan*/ * mps_regs_resource; int /*<<< orphan*/  mps_bhandle; int /*<<< orphan*/  mps_btag; int /*<<< orphan*/  mps_regs_rid; int /*<<< orphan*/  mps_flags; int /*<<< orphan*/  mps_dev; } ;
struct mps_ident {int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mps_softc*,int) ; 
 struct mps_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mps_softc*) ; 
 struct mps_ident* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mps_softc*) ; 
 int FUNC9 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct mps_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mps_softc*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct mps_softc *sc;
	struct mps_ident *m;
	int error;

	sc = FUNC5(dev);
	FUNC4(sc, sizeof(*sc));
	sc->mps_dev = dev;
	m = FUNC7(dev);
	sc->mps_flags = m->flags;

	FUNC8(sc);

	/* Twiddle basic PCI config bits for a sanity check */
	FUNC12(dev);

	/* Allocate the System Interface Register Set */
	sc->mps_regs_rid = FUNC0(1);
	if ((sc->mps_regs_resource = FUNC1(dev,
	    SYS_RES_MEMORY, &sc->mps_regs_rid, RF_ACTIVE)) == NULL) {
		FUNC11(sc, "Cannot allocate PCI registers\n");
		return (ENXIO);
	}
	sc->mps_btag = FUNC14(sc->mps_regs_resource);
	sc->mps_bhandle = FUNC13(sc->mps_regs_resource);

	/* Allocate the parent DMA tag */
	if (FUNC2( FUNC3(dev),	/* parent */
				1, 0,			/* algnmnt, boundary */
				BUS_SPACE_MAXADDR,	/* lowaddr */
				BUS_SPACE_MAXADDR,	/* highaddr */
				NULL, NULL,		/* filter, filterarg */
				BUS_SPACE_MAXSIZE_32BIT,/* maxsize */
				BUS_SPACE_UNRESTRICTED,	/* nsegments */
				BUS_SPACE_MAXSIZE_32BIT,/* maxsegsize */
				0,			/* flags */
				NULL, NULL,		/* lockfunc, lockarg */
				&sc->mps_parent_dmat)) {
		FUNC11(sc, "Cannot allocate parent DMA tag\n");
		FUNC10(sc);
		return (ENOMEM);
	}

	if (((error = FUNC9(sc)) != 0) ||
	    ((error = FUNC6(sc)) != 0))
		FUNC10(sc);

	return (error);
}