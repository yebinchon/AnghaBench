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
struct altera_avgen_softc {int avg_width; int /*<<< orphan*/ * avg_res; scalar_t__ avg_rid; int /*<<< orphan*/  avg_unit; int /*<<< orphan*/  avg_dev; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  void* pcell_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,void**,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC3 (struct altera_avgen_softc*,char*,char*,char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 struct altera_avgen_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct altera_avgen_softc *sc;
	char *str_fileio, *str_geomio, *str_mmapio;
	char *str_devname;
	phandle_t node;
	pcell_t cell;
	int devunit, error;

	sc = FUNC6(dev);
	sc->avg_dev = dev;
	sc->avg_unit = FUNC7(dev);

	/*
	 * Query driver-specific OpenFirmware properties to determine how to
	 * expose the device via /dev.
	 */
	str_fileio = NULL;
	str_geomio = NULL;
	str_mmapio = NULL;
	str_devname = NULL;
	devunit = -1;
	sc->avg_width = 1;
	node = FUNC9(dev);
	if (FUNC0(node, "sri-cambridge,width", &cell, sizeof(cell)) > 0)
		sc->avg_width = cell;
	(void)FUNC1(node, "sri-cambridge,fileio",
	    (void **)&str_fileio);
	(void)FUNC1(node, "sri-cambridge,geomio",
	    (void **)&str_geomio);
	(void)FUNC1(node, "sri-cambridge,mmapio",
	    (void **)&str_mmapio);
	(void)FUNC1(node,  "sri-cambridge,devname",
	    (void **)&str_devname);
	if (FUNC0(node, "sri-cambridge,devunit", &cell, sizeof(cell)) > 0)
		devunit = cell;

	/* Memory allocation and checking. */
	sc->avg_rid = 0;
	sc->avg_res = FUNC4(dev, SYS_RES_MEMORY,
	    &sc->avg_rid, RF_ACTIVE);
	if (sc->avg_res == NULL) {
		FUNC8(dev, "couldn't map memory\n");
		return (ENXIO);
	}
	error = FUNC3(sc, str_fileio, str_geomio, str_mmapio,
	    str_devname, devunit);
	if (error != 0)
		FUNC5(dev, SYS_RES_MEMORY, sc->avg_rid,
		    sc->avg_res);
	if (str_fileio != NULL)
		FUNC2(str_fileio);
	if (str_geomio != NULL)
		FUNC2(str_geomio);
	if (str_mmapio != NULL)
		FUNC2(str_mmapio);
	if (str_devname != NULL)
		FUNC2(str_devname);
	return (error);
}