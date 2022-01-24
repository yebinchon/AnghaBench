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
struct vmxnet3_softc {int /*<<< orphan*/ * vmx_res1; void* vmx_ioh1; void* vmx_iot1; int /*<<< orphan*/ * vmx_res0; void* vmx_ioh0; void* vmx_iot0; int /*<<< orphan*/  vmx_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct vmxnet3_softc *sc)
{
	device_t dev;
	int rid;

	dev = sc->vmx_dev;

	rid = FUNC0(0);
	sc->vmx_res0 = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->vmx_res0 == NULL) {
		FUNC2(dev,
		    "could not map BAR0 memory\n");
		return (ENXIO);
	}

	sc->vmx_iot0 = FUNC4(sc->vmx_res0);
	sc->vmx_ioh0 = FUNC3(sc->vmx_res0);

	rid = FUNC0(1);
	sc->vmx_res1 = FUNC1(dev, SYS_RES_MEMORY, &rid,
	    RF_ACTIVE);
	if (sc->vmx_res1 == NULL) {
		FUNC2(dev,
		    "could not map BAR1 memory\n");
		return (ENXIO);
	}

	sc->vmx_iot1 = FUNC4(sc->vmx_res1);
	sc->vmx_ioh1 = FUNC3(sc->vmx_res1);

	return (0);
}