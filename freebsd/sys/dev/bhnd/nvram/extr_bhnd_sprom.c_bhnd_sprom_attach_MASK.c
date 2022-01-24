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
typedef  int /*<<< orphan*/  uint16_t ;
struct bhnd_sprom_softc {int /*<<< orphan*/ * store; int /*<<< orphan*/  dev; } ;
struct bhnd_resource {int /*<<< orphan*/  res; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  scalar_t__ bus_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_SERVICE_NVRAM ; 
 scalar_t__ BUS_SPACE_MAXSIZE ; 
 int ENXIO ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct bhnd_resource* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_io*) ; 
 struct bhnd_nvram_io* FUNC2 (struct bhnd_resource*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  bhnd_nvram_sprom_class ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,struct bhnd_nvram_io*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct bhnd_resource*) ; 
 struct bhnd_sprom_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

int
FUNC10(device_t dev, bus_size_t offset)
{
	struct bhnd_sprom_softc	*sc;
	struct bhnd_nvram_io	*io;
	struct bhnd_resource	*r;
	bus_size_t		 r_size, sprom_size;
	int			 rid;
	int			 error;

	sc = FUNC7(dev);
	sc->dev = dev;
	sc->store = NULL;

	io = NULL;
	r = NULL;

	/* Allocate SPROM resource */
	rid = 0;
	r = FUNC0(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
	if (r == NULL) {
		FUNC8(dev, "failed to allocate resources\n");
		return (ENXIO);
	}

	/* Determine SPROM size */
	r_size = FUNC9(r->res);
	if (r_size <= offset || (r_size - offset) > BUS_SPACE_MAXSIZE) {
		FUNC8(dev, "invalid sprom offset\n");
		error = ENXIO;
		goto failed;
	}

	sprom_size = r_size - offset;

	/* Allocate an I/O context for the SPROM parser. All SPROM reads
	 * must be 16-bit aligned */
	io = FUNC2(r, offset, sprom_size, sizeof(uint16_t));
	if (io == NULL) {
		error = ENXIO;
		goto failed;
	}

	/* Initialize NVRAM data store */
	error = FUNC4(&sc->store, io,
	    &bhnd_nvram_sprom_class);
	if (error)
		goto failed;

	/* Clean up our temporary I/O context and its backing resource */
	FUNC1(io);
	FUNC6(dev, SYS_RES_MEMORY, rid, r);

	io = NULL;
	r = NULL;

	/* Register ourselves with the bus */
	if ((error = FUNC5(dev, BHND_SERVICE_NVRAM))) {
		FUNC8(dev, "failed to register NVRAM provider: %d\n",
		    error);
		goto failed;
	}

	return (0);

failed:
	/* Clean up I/O context before releasing its backing resource */
	if (io != NULL)
		FUNC1(io);

	if (r != NULL)
		FUNC6(dev, SYS_RES_MEMORY, rid, r);

	if (sc->store != NULL)
		FUNC3(sc->store);

	return (error);
}