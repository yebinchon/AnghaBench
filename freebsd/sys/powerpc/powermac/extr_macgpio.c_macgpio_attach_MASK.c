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
typedef  int uint32_t ;
struct macgpio_softc {scalar_t__ sc_node; int /*<<< orphan*/  sc_gpios_rid; int /*<<< orphan*/  sc_gpios; } ;
struct TYPE_3__ {int /*<<< orphan*/  obd_name; } ;
struct macgpio_devinfo {int gpio_num; TYPE_1__ mdi_obdinfo; int /*<<< orphan*/  mdi_resources; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  irq ;
typedef  int /*<<< orphan*/  iparent ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  M_MACGPIO ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,char*,int*,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,scalar_t__*,int) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct macgpio_softc* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct macgpio_devinfo*) ; 
 int /*<<< orphan*/  FUNC11 (struct macgpio_devinfo*,int /*<<< orphan*/ ) ; 
 struct macgpio_devinfo* FUNC12 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int 
FUNC18(device_t dev)
{
	struct macgpio_softc *sc;
        struct macgpio_devinfo *dinfo;
        phandle_t root, child, iparent;
        device_t cdev;
	uint32_t irq[2];

	sc = FUNC8(dev);
	root = sc->sc_node = FUNC15(dev);
	
	sc->sc_gpios = FUNC5(dev, SYS_RES_MEMORY,
	    &sc->sc_gpios_rid, RF_ACTIVE);

	/*
	 * Iterate through the sub-devices
	 */
	for (child = FUNC1(root); child != 0; child = FUNC3(child)) {
		dinfo = FUNC12(sizeof(*dinfo), M_MACGPIO, M_WAITOK | M_ZERO);
		if (FUNC14(&dinfo->mdi_obdinfo, child) !=
		    0) {
			FUNC11(dinfo, M_MACGPIO);
			continue;
		}

		if (FUNC2(child, "reg", &dinfo->gpio_num,
		    sizeof(dinfo->gpio_num)) != sizeof(dinfo->gpio_num)) {
			/*
			 * Some early GPIO controllers don't provide GPIO
			 * numbers for GPIOs designed only to provide
			 * interrupt resources.  We should still allow these
			 * to attach, but with caution.
			 */

			dinfo->gpio_num = -1;
		}

		FUNC17(&dinfo->mdi_resources);

		if (FUNC2(child, "interrupts", irq, sizeof(irq)) == 
		    sizeof(irq)) {
			FUNC4(child, "interrupt-parent", &iparent,
			    sizeof(iparent));
			FUNC16(&dinfo->mdi_resources, SYS_RES_IRQ,
			    0, FUNC0(iparent, irq[0]),
			    FUNC0(iparent, irq[0]), 1);
		}

		/* Fix messed-up offsets */
		if (dinfo->gpio_num > 0x50)
			dinfo->gpio_num -= 0x50;

		cdev = FUNC7(dev, NULL, -1);
		if (cdev == NULL) {
			FUNC9(dev, "<%s>: device_add_child failed\n",
			    dinfo->mdi_obdinfo.obd_name);
			FUNC13(&dinfo->mdi_obdinfo);
			FUNC11(dinfo, M_MACGPIO);
			continue;
		}
		FUNC10(cdev, dinfo);
	}

	return (FUNC6(dev));
}