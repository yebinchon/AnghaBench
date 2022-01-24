#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ebus_softc {int /*<<< orphan*/  sc_iinfo; } ;
struct TYPE_2__ {int /*<<< orphan*/  obd_name; } ;
struct ebus_devinfo {TYPE_1__ edi_obdinfo; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  ofw_isa_intr_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct ebus_devinfo*) ; 
 int /*<<< orphan*/  FUNC6 (struct ebus_devinfo*) ; 
 struct ebus_devinfo* FUNC7 (int /*<<< orphan*/ *,struct ebus_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC9(device_t dev, struct ebus_softc *sc, phandle_t node)
{
	struct ebus_devinfo *edi;
	device_t cdev;

	FUNC8(node, &sc->sc_iinfo, sizeof(ofw_isa_intr_t));

	/*
	 * Now attach our children.
	 */
	for (node = FUNC0(node); node > 0; node = FUNC1(node)) {
		if ((edi = FUNC7(dev, sc, node)) == NULL)
			continue;
		if ((cdev = FUNC3(dev, NULL, -1)) == NULL) {
			FUNC4(dev, "<%s>: device_add_child failed\n",
			    edi->edi_obdinfo.obd_name);
			FUNC6(edi);
			continue;
		}
		FUNC5(cdev, edi);
	}
	return (FUNC2(dev));
}