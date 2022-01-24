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
struct bhnd_chipid {int dummy; } ;
struct bhnd_core_info {int dummy; } ;
struct bhndb_softc {int /*<<< orphan*/  services; int /*<<< orphan*/ * bus_res; int /*<<< orphan*/  dev; int /*<<< orphan*/  parent_dev; int /*<<< orphan*/ * bus_dev; struct bhnd_chipid chipid; struct bhnd_core_info bridge_core; } ;
struct bhndb_hwcfg {int dummy; } ;
struct bhndb_hw_priority {int dummy; } ;
struct bhndb_hw {int name; struct bhndb_hwcfg* cfg; } ;
struct bhndb_devinfo {int /*<<< orphan*/  addrspace; } ;
struct bhnd_erom_io {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bhnd_erom_t ;
typedef  int /*<<< orphan*/  bhnd_erom_class_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHNDB_ADDRSPACE_BRIDGED ; 
 struct bhndb_hwcfg* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhndb_hw_priority* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bhndb_softc*) ; 
 int /*<<< orphan*/  BHND_PROBE_BUS ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  PRIO ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,struct bhnd_chipid*,struct bhnd_erom_io*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bhnd_erom_io*) ; 
 struct bhnd_erom_io* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bhndb_hwcfg const*) ; 
 int FUNC13 (struct bhndb_softc*,struct bhnd_core_info*,int /*<<< orphan*/ ,struct bhndb_hw const**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct bhndb_softc*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bhnd_core_info*,int /*<<< orphan*/ ,struct bhndb_hw_priority const*) ; 
 scalar_t__ bootverbose ; 
 struct bhndb_devinfo* FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 struct bhndb_softc* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,...) ; 

int
FUNC20(device_t dev, struct bhnd_chipid *cid,
    struct bhnd_core_info *cores, u_int ncores,
    struct bhnd_core_info *bridge_core, bhnd_erom_class_t *erom_class)
{
	struct bhndb_devinfo		*dinfo;
	struct bhndb_softc		*sc;
	const struct bhndb_hw		*hw;
	const struct bhndb_hwcfg	*hwcfg;
	const struct bhndb_hw_priority	*hwprio;
	struct bhnd_erom_io		*eio;
	bhnd_erom_t			*erom;
	int				 error;

	sc = FUNC18(dev);
	sc->dev = dev;
	sc->parent_dev = FUNC17(dev);
	sc->bridge_core = *bridge_core;
	sc->chipid = *cid;

	if ((error = FUNC11(&sc->services)))
		return (error);

	FUNC4(sc);

	erom = NULL;

	/* Find a matching bridge hardware configuration */
	if ((error = FUNC13(sc, cores, ncores, &hw))) {
		FUNC19(sc->dev, "unable to identify device, "
		    " using generic bridge resource definitions\n");

		hwcfg = FUNC0(sc->parent_dev, dev);
		hw = NULL;
	} else {
		hwcfg = hw->cfg;
	}

	if (hw != NULL && (bootverbose || FUNC2(PRIO))) {
		FUNC19(sc->dev, "%s resource configuration\n", hw->name);
	}

	/* Allocate bridge resource state using the discovered hardware
	 * configuration */
	sc->bus_res = FUNC12(sc->dev, sc->parent_dev, hwcfg);
	if (sc->bus_res == NULL) {
		FUNC19(sc->dev, "failed to allocate bridge resource "
		    "state\n");
		error = ENOMEM;
		goto failed;
	}

	/* Add our bridged bus device */
	sc->bus_dev = FUNC5(dev, BHND_PROBE_BUS, "bhnd", -1);
	if (sc->bus_dev == NULL) {
		error = ENXIO;
		goto failed;
	}

	dinfo = FUNC16(sc->bus_dev);
	dinfo->addrspace = BHNDB_ADDRSPACE_BRIDGED;

	/* We can now use bhndb to perform bridging of SYS_RES_MEMORY resources;
	 * we use this to instantiate an erom parser instance */
	eio = FUNC9(sc->bus_dev, 0);
	if ((erom = FUNC6(erom_class, cid, eio)) == NULL) {
		FUNC8(eio);
		error = ENXIO;
		goto failed;
	}

	/* Populate our resource priority configuration */
	hwprio = FUNC1(sc->parent_dev, sc->dev);
	error = FUNC15(sc, erom, sc->bus_res, cores, ncores,
	    hwprio);
	if (error) {
		FUNC19(sc->dev, "failed to initialize resource "
		    "priority configuration: %d\n", error);
		goto failed;
	}

	/* Free our erom instance */
	FUNC7(erom);
	erom = NULL;

	return (0);

failed:
	FUNC3(sc);

	if (sc->bus_res != NULL)
		FUNC14(sc->bus_res);

	if (erom != NULL)
		FUNC7(erom);

	FUNC10(&sc->services);

	return (error);
}