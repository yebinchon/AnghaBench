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
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERA_AVALON_STR_DEVNAME ; 
 int /*<<< orphan*/  ALTERA_AVALON_STR_DEVUNIT ; 
 int /*<<< orphan*/  ALTERA_AVALON_STR_FILEIO ; 
 int /*<<< orphan*/  ALTERA_AVALON_STR_GEOMIO ; 
 int /*<<< orphan*/  ALTERA_AVALON_STR_MMAPIO ; 
 int /*<<< orphan*/  ALTERA_AVALON_STR_WIDTH ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (struct altera_avgen_softc*,char const*,char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct altera_avgen_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct altera_avgen_softc *sc;
	const char *str_fileio, *str_geomio, *str_mmapio;
	const char *str_devname;
	int devunit, error;

	sc = FUNC4(dev);
	sc->avg_dev = dev;
	sc->avg_unit = FUNC5(dev);

	/*
	 * Query non-standard hints to find out what operations are permitted
	 * on the device, and whether it is cached.
	 */
	str_fileio = NULL;
	str_geomio = NULL;
	str_mmapio = NULL;
	str_devname = NULL;
	devunit = -1;
	sc->avg_width = 1;
	error = FUNC7(FUNC3(dev), FUNC5(dev),
	    ALTERA_AVALON_STR_WIDTH, &sc->avg_width);
	if (error != 0 && error != ENOENT) {
		FUNC6(dev, "invalid %s\n", ALTERA_AVALON_STR_WIDTH);
		return (error);
	}
	(void)FUNC8(FUNC3(dev),
	    FUNC5(dev), ALTERA_AVALON_STR_FILEIO, &str_fileio);
	(void)FUNC8(FUNC3(dev),
	    FUNC5(dev), ALTERA_AVALON_STR_GEOMIO, &str_geomio);
	(void)FUNC8(FUNC3(dev),
	    FUNC5(dev), ALTERA_AVALON_STR_MMAPIO, &str_mmapio);
	(void)FUNC8(FUNC3(dev),
	    FUNC5(dev), ALTERA_AVALON_STR_DEVNAME, &str_devname);
	(void)FUNC7(FUNC3(dev), FUNC5(dev),
	    ALTERA_AVALON_STR_DEVUNIT, &devunit);

	/* Memory allocation and checking. */
	sc->avg_rid = 0;
	sc->avg_res = FUNC1(dev, SYS_RES_MEMORY,
	    &sc->avg_rid, RF_ACTIVE);
	if (sc->avg_res == NULL) {
		FUNC6(dev, "couldn't map memory\n");
		return (ENXIO);
	}
	error = FUNC0(sc, str_fileio, str_geomio, str_mmapio,
	    str_devname, devunit);
	if (error != 0)
		FUNC2(dev, SYS_RES_MEMORY, sc->avg_rid,
		    sc->avg_res);
	return (error);
}