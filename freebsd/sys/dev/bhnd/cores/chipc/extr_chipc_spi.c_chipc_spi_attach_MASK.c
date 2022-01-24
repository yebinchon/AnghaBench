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
struct chipc_spi_softc {int sc_rid; int sc_flash_rid; int /*<<< orphan*/ * sc_flash_res; int /*<<< orphan*/ * sc_res; } ;
struct chipc_caps {int /*<<< orphan*/  flash_type; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 struct chipc_caps* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct chipc_spi_softc* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	struct chipc_spi_softc	*sc;
	struct chipc_caps	*ccaps;
	device_t		 flash_dev;
	device_t		 spibus;
	const char		*flash_name;
	int			 error;

	sc = FUNC10(dev);

	/* Allocate SPI controller registers */
	sc->sc_rid = 1;
	sc->sc_res = FUNC2(dev, SYS_RES_MEMORY, &sc->sc_rid,
	    RF_ACTIVE);
	if (sc->sc_res == NULL) {
		FUNC11(dev, "failed to allocate device registers\n");
		return (ENXIO);
	}

	/* Allocate flash shadow region */
	sc->sc_flash_rid = 0;
	sc->sc_flash_res = FUNC2(dev, SYS_RES_MEMORY,
	    &sc->sc_flash_rid, RF_ACTIVE);
	if (sc->sc_flash_res == NULL) {
		FUNC11(dev, "failed to allocate flash region\n");
		error = ENXIO;
		goto failed;
	}

	/* 
	 * Add flash device
	 * 
	 * XXX: This should be replaced with a DEVICE_IDENTIFY implementation
	 * in chipc-specific subclasses of the mx25l and at45d drivers.
	 */
	if ((spibus = FUNC7(dev, "spibus", -1)) == NULL) {
		FUNC11(dev, "failed to add spibus\n");
		error = ENXIO;
		goto failed;
	}

	/* Let spibus perform full attach before we try to call
	 * BUS_ADD_CHILD() */
	if ((error = FUNC3(dev)))
		goto failed;

	/* Determine flash type and add the flash child */
	ccaps = FUNC0(FUNC9(dev));
	flash_name = FUNC6(ccaps->flash_type);
	if (flash_name != NULL) {
		flash_dev = FUNC1(spibus, 0, flash_name, -1);
		if (flash_dev == NULL) {
			FUNC11(dev, "failed to add %s\n", flash_name);
			error = ENXIO;
			goto failed;
		}

		FUNC5(ccaps->flash_type);

		if ((error = FUNC12(flash_dev))) {
			FUNC11(dev, "failed to attach %s: %d\n",
			    flash_name, error);
			goto failed;
		}
	}

	return (0);

failed:
	FUNC8(dev);

	if (sc->sc_res != NULL)
		FUNC4(dev, SYS_RES_MEMORY, sc->sc_rid,
		    sc->sc_res);

	if (sc->sc_flash_res != NULL)
		FUNC4(dev, SYS_RES_MEMORY, sc->sc_flash_rid,
		    sc->sc_flash_res);

	return (error);
}