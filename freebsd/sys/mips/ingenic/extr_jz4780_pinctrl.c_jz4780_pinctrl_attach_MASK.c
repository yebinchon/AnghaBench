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
struct simplebus_devinfo {int /*<<< orphan*/  rl; } ;
struct resource_list_entry {int end; int /*<<< orphan*/  start; } ;
struct resource_list {int dummy; } ;
struct jz4780_pinctrl_softc {int /*<<< orphan*/ * dev; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  int bus_size_t ;
typedef  int bus_addr_t ;

/* Variables and functions */
 struct resource_list* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int CHIP_REG_STRIDE ; 
 int ENXIO ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct simplebus_devinfo* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct jz4780_pinctrl_softc* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 struct resource_list_entry* FUNC13 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(device_t dev)
{
	struct jz4780_pinctrl_softc *sc;
	struct resource_list *rs;
	struct resource_list_entry *re;
	phandle_t dt_parent, dt_child;
	int i, ret;

	sc = FUNC8(dev);
	sc->dev = dev;

	/*
	 * Fetch our own resource list to dole memory between children
	 */
	rs = FUNC0(FUNC7(dev), dev);
	if (rs == NULL)
		return (ENXIO);
	re = FUNC13(rs, SYS_RES_MEMORY, 0);
	if (re == NULL)
		return (ENXIO);

	FUNC15(dev, 0);

	/* Iterate over this node children, looking for pin controllers */
	dt_parent = FUNC11(dev);
	i = 0;
	for (dt_child = FUNC2(dt_parent); dt_child != 0;
	    dt_child = FUNC4(dt_child)) {
		struct simplebus_devinfo *ndi;
		device_t child;
		bus_addr_t phys;
		bus_size_t size;

		/* Add gpio controller child */
		if (!FUNC3(dt_child, "gpio-controller"))
			continue;
		child = FUNC14(dev, dt_child, 0,  NULL, -1, NULL);
		if (child == NULL)
			break;
		/* Setup child resources */
		phys = FUNC1(re->start, i);
		size = CHIP_REG_STRIDE;
		if (phys + size - 1 <= re->end) {
			ndi = FUNC6(child);
			FUNC12(&ndi->rl, SYS_RES_MEMORY, 0,
			    phys, phys + size - 1, size);
		}
		i++;
	}

	ret = FUNC5(dev);
	if (ret == 0) {
	    FUNC10(dev, "ingenic,pins");
	    FUNC9(dev);
	}
	return (ret);
}