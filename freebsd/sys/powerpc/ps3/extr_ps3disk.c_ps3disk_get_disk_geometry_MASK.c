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
typedef  int uint64_t ;
struct ps3disk_softc {int /*<<< orphan*/  sc_nblocks; int /*<<< orphan*/  sc_blksize; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  PS3_LPAR_ID_PME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct ps3disk_softc *sc)
{
	device_t dev = sc->sc_dev;
	uint64_t bus_index = FUNC3(dev);
	uint64_t dev_index = FUNC4(dev);
	uint64_t junk;
	int err;

	err = FUNC1(PS3_LPAR_ID_PME,
	    (FUNC2("bus") >> 32) | bus_index,
	    FUNC2("dev") | dev_index,
	    FUNC2("blk_size"), 0, &sc->sc_blksize, &junk);
	if (err) {
		FUNC0(dev, "Could not get block size (0x%08x)\n", err);
		return (ENXIO);
	}

	err = FUNC1(PS3_LPAR_ID_PME,
	    (FUNC2("bus") >> 32) | bus_index,
	    FUNC2("dev") | dev_index,
	    FUNC2("n_blocks"), 0, &sc->sc_nblocks, &junk);
	if (err) {
		FUNC0(dev, "Could not get total number of blocks "
		    "(0x%08x)\n", err);
		err = ENXIO;
	}

	return (err);
}