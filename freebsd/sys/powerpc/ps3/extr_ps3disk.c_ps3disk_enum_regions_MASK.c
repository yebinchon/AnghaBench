#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
struct ps3disk_softc {int sc_nregs; TYPE_1__* sc_reg; int /*<<< orphan*/  sc_dev; } ;
struct ps3disk_region {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_3__ {int r_id; int r_start; int r_size; int r_flags; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_PS3DISK ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PS3_LPAR_ID_PME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int,int,int,int*,int*) ; 
 int FUNC3 (char*) ; 
 TYPE_1__* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct ps3disk_softc *sc)
{
	device_t dev = sc->sc_dev;
	uint64_t bus_index = FUNC5(dev);
	uint64_t dev_index = FUNC6(dev);
	uint64_t junk;
	int i, err;

	/* Read number of regions */

	err = FUNC2(PS3_LPAR_ID_PME,
	    (FUNC3("bus") >> 32) | bus_index,
	    FUNC3("dev") | dev_index,
	    FUNC3("n_regs"), 0, &sc->sc_nregs, &junk);
	if (err) {
		FUNC0(dev, "Could not get number of regions (0x%08x)\n",
		    err);
		err = ENXIO;
		goto fail;
	}

	if (!sc->sc_nregs)
		return 0;

	sc->sc_reg = FUNC4(sc->sc_nregs * sizeof(struct ps3disk_region),
	    M_PS3DISK, M_ZERO | M_WAITOK);
	if (!sc->sc_reg) {
		err = ENOMEM;
		goto fail;
	}

	/* Setup regions */

	for (i = 0; i < sc->sc_nregs; i++) {
		err = FUNC2(PS3_LPAR_ID_PME,
		    (FUNC3("bus") >> 32) | bus_index,
		    FUNC3("dev") | dev_index,
		    FUNC3("region") | i,
		    FUNC3("id"), &sc->sc_reg[i].r_id, &junk);
		if (err) {
			FUNC0(dev, "Could not get region id (0x%08x)\n",
			    err);
			err = ENXIO;
			goto fail;
		}

		err = FUNC2(PS3_LPAR_ID_PME,
		    (FUNC3("bus") >> 32) | bus_index,
		    FUNC3("dev") | dev_index,
		    FUNC3("region") | i,
		    FUNC3("start"), &sc->sc_reg[i].r_start,
		    &junk);
		if (err) {
			FUNC0(dev, "Could not get region start "
			    "(0x%08x)\n", err);
			err = ENXIO;
			goto fail;
		}

		err = FUNC2(PS3_LPAR_ID_PME,
		    (FUNC3("bus") >> 32) | bus_index,
		    FUNC3("dev") | dev_index,
		    FUNC3("region") | i,
		    FUNC3("size"), &sc->sc_reg[i].r_size,
		    &junk);
		if (err) {
			FUNC0(dev, "Could not get region size "
			    "(0x%08x)\n", err);
			err = ENXIO;
			goto fail;
		}

		if (i == 0)
			sc->sc_reg[i].r_flags = 0x2;
		else
			sc->sc_reg[i].r_flags = 0;
	}

	return (0);

fail:

	sc->sc_nregs = 0;
	if (sc->sc_reg)
		FUNC1(sc->sc_reg, M_PS3DISK);

	return (err);
}