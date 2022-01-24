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
struct amdsmb_softc {int /*<<< orphan*/  smbus; int /*<<< orphan*/  lock; int /*<<< orphan*/ * res; int /*<<< orphan*/  rid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct amdsmb_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct amdsmb_softc *amdsmb_sc = FUNC6(dev);

	/* Allocate I/O space */
	amdsmb_sc->rid = FUNC0(0);
	
	amdsmb_sc->res = FUNC2(dev, SYS_RES_IOPORT,
		&amdsmb_sc->rid, RF_ACTIVE);

	if (amdsmb_sc->res == NULL) {
		FUNC7(dev, "could not map i/o space\n");
		return (ENXIO);
	}

	FUNC8(&amdsmb_sc->lock, FUNC5(dev), "amdsmb", MTX_DEF);

	/* Allocate a new smbus device */
	amdsmb_sc->smbus = FUNC4(dev, "smbus", -1);
	if (!amdsmb_sc->smbus) {
		FUNC1(dev);
		return (EINVAL);
	}

	FUNC3(dev);

	return (0);
}