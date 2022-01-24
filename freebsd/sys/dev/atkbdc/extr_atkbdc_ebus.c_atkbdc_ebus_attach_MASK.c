#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct atkbdc_device {int dummy; } ;
typedef  scalar_t__ rman_res_t ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;
struct TYPE_9__ {int retry; int /*<<< orphan*/ * port0; int /*<<< orphan*/ * port1; } ;
typedef  TYPE_1__ atkbdc_softc_t ;
struct TYPE_10__ {int /*<<< orphan*/  resources; int /*<<< orphan*/  rid; } ;
typedef  TYPE_2__ atkbdc_device_t ;

/* Variables and functions */
 char* ATKBD_DRIVER_NAME ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  KBDC_RID_AUX ; 
 int /*<<< orphan*/  KBDC_RID_KBD ; 
 scalar_t__ KBD_STATUS_PORT ; 
 int /*<<< orphan*/  M_ATKBDDEV ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* PSM_DRIVER_NAME ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC4 (int,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC18 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (char*,char*) ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
	atkbdc_softc_t *sc;
	atkbdc_device_t *adi;
	device_t cdev;
	phandle_t child;
	rman_res_t count, intr, start;
	int children, error, rid, unit;
	char *cname, *dname;

	unit = FUNC13(dev);
	sc = *(atkbdc_softc_t **)FUNC12(dev);
	if (sc == NULL) {
		/*
		 * We have to maintain two copies of the kbdc_softc struct,
		 * as the low-level console needs to have access to the
		 * keyboard controller before kbdc is probed and attached.
		 * kbdc_soft[] contains the default entry for that purpose.
		 * See atkbdc.c. XXX
		 */
		sc = FUNC5(unit);
		if (sc == NULL)
			return (ENOMEM);
		FUNC16(dev, sc);
	}

	rid = 0;
	if (FUNC8(dev, SYS_RES_MEMORY, rid, &start, &count) != 0) {
		FUNC14(dev,
		    "cannot determine command/data port resource\n");
		return (ENXIO);
	}
	sc->retry = 5000;
	sc->port0 = FUNC6(dev, SYS_RES_MEMORY, &rid, start, start,
	    1, RF_ACTIVE);
	if (sc->port0 == NULL) {
		FUNC14(dev,
		    "cannot allocate command/data port resource\n");
		return (ENXIO);
	}

	rid = 1;
	if (FUNC8(dev, SYS_RES_MEMORY, rid, &start, &count) != 0) {
		FUNC14(dev, "cannot determine status port resource\n");
		error = ENXIO;
		goto fail_port0;
	}
	start += KBD_STATUS_PORT;
	sc->port1 = FUNC6(dev, SYS_RES_MEMORY, &rid, start, start,
	    1, RF_ACTIVE);
	if (sc->port1 == NULL) {
		FUNC14(dev, "cannot allocate status port resource\n");
		error = ENXIO;
		goto fail_port0;
	}

	error = FUNC4(unit, sc, sc->port0, sc->port1);
	if (error != 0) {
		FUNC14(dev, "atkbdc_attach_unit failed\n");
		goto fail_port1;
	}

	/* Attach children. */
	children = 0;
	for (child = FUNC0(FUNC19(dev)); child != 0;
	    child = FUNC2(child)) {
		if ((FUNC1(child, "name", (void **)&cname)) == -1)
			continue;
		if (children >= 2) {
			FUNC14(dev,
			    "<%s>: only two children per 8042 supported\n",
			    cname);
			FUNC3(cname);
			continue;
		}
		adi = FUNC18(sizeof(struct atkbdc_device), M_ATKBDDEV,
		    M_NOWAIT | M_ZERO);
		if (adi == NULL) {
			FUNC14(dev, "<%s>: malloc failed\n", cname);
			FUNC3(cname);
			continue;
		}
		if (FUNC23(cname, "kb_ps2") == 0) {
			adi->rid = KBDC_RID_KBD;
			dname = ATKBD_DRIVER_NAME;
		} else if (FUNC23(cname, "kdmouse") == 0) {
			adi->rid = KBDC_RID_AUX;
			dname = PSM_DRIVER_NAME;
		} else {
			FUNC14(dev, "<%s>: unknown device\n", cname);
			FUNC17(adi, M_ATKBDDEV);
			FUNC3(cname);
			continue;
		}
		intr = FUNC9(dev, SYS_RES_IRQ, adi->rid);
		if (intr == 0) {
			FUNC14(dev,
			    "<%s>: cannot determine interrupt resource\n",
			    cname);
			FUNC17(adi, M_ATKBDDEV);
			FUNC3(cname);
			continue;
		}
		FUNC22(&adi->resources);
		FUNC20(&adi->resources, SYS_RES_IRQ, adi->rid,
		    intr, intr, 1);
		if ((cdev = FUNC11(dev, dname, -1)) == NULL) {
			FUNC14(dev, "<%s>: device_add_child failed\n",
			    cname);
			FUNC21(&adi->resources);
			FUNC17(adi, M_ATKBDDEV);
			FUNC3(cname);
			continue;
		}
		FUNC15(cdev, adi);
		children++;
	}

	error = FUNC7(dev);
	if (error != 0) {
		FUNC14(dev, "bus_generic_attach failed\n");
		goto fail_port1;
	}

	return (0);

 fail_port1:
	FUNC10(dev, SYS_RES_MEMORY, 1, sc->port1);
 fail_port0:
	FUNC10(dev, SYS_RES_MEMORY, 0, sc->port0);

	return (error);
}