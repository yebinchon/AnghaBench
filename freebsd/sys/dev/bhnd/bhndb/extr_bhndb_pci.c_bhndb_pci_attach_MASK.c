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
typedef  int /*<<< orphan*/  u_int ;
struct bhndb_pci_softc {scalar_t__ msi_count; int /*<<< orphan*/  parent; int /*<<< orphan*/  dev; int /*<<< orphan*/ * isrc; int /*<<< orphan*/ * set_regwin; scalar_t__ pci_quirks; int /*<<< orphan*/  pci_devclass; } ;
struct bhnd_core_info {int dummy; } ;
struct bhnd_chipid {scalar_t__ chip_type; } ;
struct bhndb_pci_probe {struct bhnd_core_info hostb_core; int /*<<< orphan*/ * erom_class; struct bhnd_chipid cid; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bhnd_erom_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bhndb_pci_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhndb_pci_softc*) ; 
 scalar_t__ BHND_CHIPTYPE_SIBA ; 
 int ENXIO ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  RM_MAX_END ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct bhnd_chipid*,struct bhnd_core_info*,int /*<<< orphan*/ ,struct bhnd_core_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct bhndb_pci_softc*) ; 
 scalar_t__ FUNC9 (struct bhndb_pci_softc*,scalar_t__*) ; 
 int /*<<< orphan*/ * bhndb_pci_compat_setregwin ; 
 int /*<<< orphan*/ * bhndb_pci_fast_setregwin ; 
 scalar_t__ FUNC10 (struct bhnd_chipid*,struct bhnd_core_info*) ; 
 int FUNC11 (struct bhndb_pci_probe**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct bhndb_pci_probe*,struct bhnd_core_info**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct bhndb_pci_probe*) ; 
 int /*<<< orphan*/  FUNC14 (struct bhnd_core_info*) ; 
 int FUNC15 (struct bhndb_pci_softc*,struct bhndb_pci_probe*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct bhndb_pci_softc* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(device_t dev)
{
	struct bhndb_pci_softc	*sc;
	struct bhnd_chipid	 cid;
	struct bhnd_core_info	*cores, hostb_core;
	bhnd_erom_class_t	*erom_class;
	struct bhndb_pci_probe	*probe;
	u_int			 ncores;
	int			 irq_rid;
	int			 error;

	sc = FUNC20(dev);
	sc->dev = dev;
	sc->parent = FUNC19(dev);
	sc->pci_devclass = FUNC6(dev);
	sc->pci_quirks = 0;
	sc->set_regwin = NULL;

	FUNC1(sc);

	probe = NULL;
	cores = NULL;

	/* Enable PCI bus mastering */
	FUNC23(sc->parent);

	/* Enable clocks (if required by this hardware) */
	if ((error = FUNC5(sc->dev)))
		goto cleanup;

	/* Identify the chip and enumerate the bridged cores */
	error = FUNC11(&probe, dev, sc->pci_devclass);
	if (error)
		goto cleanup;

	sc->pci_quirks = FUNC10(&probe->cid,
	    &probe->hostb_core);

	/* Select the appropriate register window handler */
	if (probe->cid.chip_type == BHND_CHIPTYPE_SIBA) {
		sc->set_regwin = bhndb_pci_compat_setregwin;
	} else {
		sc->set_regwin = bhndb_pci_fast_setregwin;
	}

	/*
	 * Fix up our PCI base address in the SPROM shadow, if necessary.
	 * 
	 * This must be done prior to accessing any static register windows
	 * that map the PCI core.
	 */
	if ((error = FUNC15(sc, probe)))
		goto cleanup;

	/* Set up PCI interrupt handling */
	if (FUNC9(sc, &sc->msi_count) == 0) {
		/* MSI uses resource IDs starting at 1 */
		irq_rid = 1;

		FUNC21(dev, "Using MSI interrupts on %s\n",
		    FUNC18(sc->parent));
	} else {
		sc->msi_count = 0;
		irq_rid = 0;

		FUNC21(dev, "Using INTx interrupts on %s\n",
		    FUNC18(sc->parent));
	}

	sc->isrc = FUNC2(sc->parent, irq_rid, 0, RM_MAX_END, 1,
	    RF_SHAREABLE | RF_ACTIVE);
	if (sc->isrc == NULL) {
		FUNC21(sc->dev, "failed to allocate interrupt "
		    "resource\n");
		error = ENXIO;
		goto cleanup;
	}

	/*
	 * Copy out the probe results and then free our probe state, releasing
	 * its exclusive ownership of host bridge resources.
	 * 
	 * This must be done prior to full configuration of the bridge via
	 * bhndb_attach().
	 */
	cid = probe->cid;
	erom_class = probe->erom_class;
	hostb_core = probe->hostb_core;

	error = FUNC12(probe, &cores, &ncores);
	if (error) {
		cores = NULL;
		goto cleanup;
	}

	FUNC13(probe);
	probe = NULL;

	/* Perform bridge attach */
	error = FUNC3(dev, &cid, cores, ncores, &hostb_core, erom_class);
	if (error)
		goto cleanup;

	/* Add any additional child devices */
	if ((error = FUNC8(sc)))
		goto cleanup;

	/* Probe and attach our children */
	if ((error = FUNC16(dev)))
		goto cleanup;

	FUNC14(cores);

	return (0);

cleanup:
	FUNC17(dev);

	if (sc->isrc != NULL)
		FUNC7(sc->isrc);

	if (sc->msi_count > 0)
		FUNC24(sc->parent);

	if (cores != NULL)
		FUNC14(cores);

	if (probe != NULL)
		FUNC13(probe);

	FUNC4(sc->dev);

	FUNC22(sc->parent);

	FUNC0(sc);

	return (error);
}