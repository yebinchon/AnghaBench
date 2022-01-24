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
struct mpr_softc {int /*<<< orphan*/  mpr_parent_dmat; int /*<<< orphan*/ * mpr_regs_resource; int /*<<< orphan*/  mpr_bhandle; int /*<<< orphan*/  mpr_btag; int /*<<< orphan*/  mpr_regs_rid; int /*<<< orphan*/  mpr_flags; int /*<<< orphan*/  mpr_dev; } ;
struct mpr_ident {int device; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE_32BIT ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int ENOMEM ; 
 int ENXIO ; 
#define  MPI26_MFGPAGE_DEVID_CFG_SEC_SAS3816 133 
#define  MPI26_MFGPAGE_DEVID_CFG_SEC_SAS3916 132 
#define  MPI26_MFGPAGE_DEVID_INVALID0_SAS3816 131 
#define  MPI26_MFGPAGE_DEVID_INVALID0_SAS3916 130 
#define  MPI26_MFGPAGE_DEVID_INVALID1_SAS3816 129 
#define  MPI26_MFGPAGE_DEVID_INVALID1_SAS3916 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCI_MAXMAPS_0 ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mpr_softc*,int) ; 
 struct mpr_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mpr_softc*) ; 
 struct mpr_ident* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mpr_softc*) ; 
 int FUNC9 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct mpr_softc*) ; 
 int /*<<< orphan*/  FUNC11 (struct mpr_softc*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(device_t dev)
{
	struct mpr_softc *sc;
	struct mpr_ident *m;
	int error, i;

	sc = FUNC5(dev);
	FUNC4(sc, sizeof(*sc));
	sc->mpr_dev = dev;
	m = FUNC7(dev);
	sc->mpr_flags = m->flags;

	switch (m->device) {
	case MPI26_MFGPAGE_DEVID_INVALID0_SAS3816:
	case MPI26_MFGPAGE_DEVID_INVALID1_SAS3816:
	case MPI26_MFGPAGE_DEVID_INVALID0_SAS3916:
	case MPI26_MFGPAGE_DEVID_INVALID1_SAS3916:
		FUNC11(sc, "HBA is in Non Secure mode\n");
		return (ENXIO);
	case MPI26_MFGPAGE_DEVID_CFG_SEC_SAS3816:
	case MPI26_MFGPAGE_DEVID_CFG_SEC_SAS3916:
		FUNC11(sc, "HBA is in Configurable Secure mode\n");
		break;
	default:
		break;
	}

	FUNC8(sc);

	/* Twiddle basic PCI config bits for a sanity check */
	FUNC12(dev);

	for (i = 0; i < PCI_MAXMAPS_0; i++) {
		sc->mpr_regs_rid = FUNC0(i);

		if ((sc->mpr_regs_resource = FUNC1(dev,
		    SYS_RES_MEMORY, &sc->mpr_regs_rid, RF_ACTIVE)) != NULL)
			break;
	}

	if (sc->mpr_regs_resource == NULL) {
		FUNC11(sc, "Cannot allocate PCI registers\n");
		return (ENXIO);
	}

	sc->mpr_btag = FUNC14(sc->mpr_regs_resource);
	sc->mpr_bhandle = FUNC13(sc->mpr_regs_resource);

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
				&sc->mpr_parent_dmat)) {
		FUNC11(sc, "Cannot allocate parent DMA tag\n");
		FUNC10(sc);
		return (ENOMEM);
	}

	if (((error = FUNC9(sc)) != 0) ||
	    ((error = FUNC6(sc)) != 0))
		FUNC10(sc);

	return (error);
}