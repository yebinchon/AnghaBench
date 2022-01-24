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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_long ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct pci_map {int pm_value; } ;
typedef  int pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIM_BAR_IO_RESERVED ; 
 int PCIM_BAR_MEM_PREFETCH ; 
 int /*<<< orphan*/  PCIM_CMD_MEMEN ; 
 int /*<<< orphan*/  PCIM_CMD_PORTEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  PCI_QUIRK_REALLOC_BAR ; 
 int FUNC2 (int) ; 
 int RF_PREFETCHABLE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct pci_map* FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ pci_clear_bars ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ pci_do_realloc_bars ; 
 scalar_t__ pci_enable_io_modes ; 
 struct pci_map* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC13 (int) ; 
 int FUNC14 (int) ; 
 int FUNC15 (int) ; 
 char* FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,struct pci_map*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (char*,...) ; 
 int /*<<< orphan*/  FUNC24 (struct resource_list*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct resource_list*,int,int) ; 
 struct resource* FUNC26 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int,int,int,int) ; 
 int FUNC27 (struct resource*) ; 

__attribute__((used)) static int
FUNC28(device_t bus, device_t dev, int reg, struct resource_list *rl,
    int force, int prefetch)
{
	struct pci_map *pm;
	pci_addr_t base, map, testval;
	pci_addr_t start, end, count;
	int barlen, basezero, flags, maprange, mapsize, type;
	uint16_t cmd;
	struct resource *res;

	/*
	 * The BAR may already exist if the device is a CardBus card
	 * whose CIS is stored in this BAR.
	 */
	pm = FUNC6(dev, reg);
	if (pm != NULL) {
		maprange = FUNC14(pm->pm_value);
		barlen = maprange == 64 ? 2 : 1;
		return (barlen);
	}

	FUNC19(dev, reg, &map, &testval, NULL);
	if (FUNC1(map)) {
		type = SYS_RES_MEMORY;
		if (map & PCIM_BAR_MEM_PREFETCH)
			prefetch = 1;
	} else
		type = SYS_RES_IOPORT;
	mapsize = FUNC15(testval);
	base = FUNC13(map);
#ifdef __PCI_BAR_ZERO_VALID
	basezero = 0;
#else
	basezero = base == 0;
#endif
	maprange = FUNC14(map);
	barlen = maprange == 64 ? 2 : 1;

	/*
	 * For I/O registers, if bottom bit is set, and the next bit up
	 * isn't clear, we know we have a BAR that doesn't conform to the
	 * spec, so ignore it.  Also, sanity check the size of the data
	 * areas to the type of memory involved.  Memory must be at least
	 * 16 bytes in size, while I/O ranges must be at least 4.
	 */
	if (FUNC0(testval) && (testval & PCIM_BAR_IO_RESERVED) != 0)
		return (barlen);
	if ((type == SYS_RES_MEMORY && mapsize < 4) ||
	    (type == SYS_RES_IOPORT && mapsize < 2))
		return (barlen);

	/* Save a record of this BAR. */
	pm = FUNC4(dev, reg, map, mapsize);
	if (bootverbose) {
		FUNC23("\tmap[%02x]: type %s, range %2d, base %#jx, size %2d",
		    reg, FUNC16(map), maprange, (uintmax_t)base, mapsize);
		if (type == SYS_RES_IOPORT && !FUNC18(dev))
			FUNC23(", port disabled\n");
		else if (type == SYS_RES_MEMORY && !FUNC17(dev))
			FUNC23(", memory disabled\n");
		else
			FUNC23(", enabled\n");
	}

	/*
	 * If base is 0, then we have problems if this architecture does
	 * not allow that.  It is best to ignore such entries for the
	 * moment.  These will be allocated later if the driver specifically
	 * requests them.  However, some removable buses look better when
	 * all resources are allocated, so allow '0' to be overriden.
	 *
	 * Similarly treat maps whose values is the same as the test value
	 * read back.  These maps have had all f's written to them by the
	 * BIOS in an attempt to disable the resources.
	 */
	if (!force && (basezero || map == testval))
		return (barlen);
	if ((u_long)base != base) {
		FUNC3(bus,
		    "pci%d:%d:%d:%d bar %#x too many address bits",
		    FUNC9(dev), FUNC7(dev), FUNC11(dev),
		    FUNC10(dev), reg);
		return (barlen);
	}

	/*
	 * This code theoretically does the right thing, but has
	 * undesirable side effects in some cases where peripherals
	 * respond oddly to having these bits enabled.  Let the user
	 * be able to turn them off (since pci_enable_io_modes is 1 by
	 * default).
	 */
	if (pci_enable_io_modes) {
		/* Turn on resources that have been left off by a lazy BIOS */
		if (type == SYS_RES_IOPORT && !FUNC18(dev)) {
			cmd = FUNC20(dev, PCIR_COMMAND, 2);
			cmd |= PCIM_CMD_PORTEN;
			FUNC22(dev, PCIR_COMMAND, cmd, 2);
		}
		if (type == SYS_RES_MEMORY && !FUNC17(dev)) {
			cmd = FUNC20(dev, PCIR_COMMAND, 2);
			cmd |= PCIM_CMD_MEMEN;
			FUNC22(dev, PCIR_COMMAND, cmd, 2);
		}
	} else {
		if (type == SYS_RES_IOPORT && !FUNC18(dev))
			return (barlen);
		if (type == SYS_RES_MEMORY && !FUNC17(dev))
			return (barlen);
	}

	count = (pci_addr_t)1 << mapsize;
	flags = FUNC2(mapsize);
	if (prefetch)
		flags |= RF_PREFETCHABLE;
	if (basezero || base == FUNC13(testval) || pci_clear_bars) {
		start = 0;	/* Let the parent decide. */
		end = ~0;
	} else {
		start = base;
		end = base + count - 1;
	}
	FUNC24(rl, type, reg, start, end, count);

	/*
	 * Try to allocate the resource for this BAR from our parent
	 * so that this resource range is already reserved.  The
	 * driver for this device will later inherit this resource in
	 * pci_alloc_resource().
	 */
	res = FUNC26(rl, bus, dev, type, &reg, start, end, count,
	    flags);
	if ((pci_do_realloc_bars
		|| FUNC12(FUNC8(dev), PCI_QUIRK_REALLOC_BAR))
	    && res == NULL && (start != 0 || end != ~0)) {
		/*
		 * If the allocation fails, try to allocate a resource for
		 * this BAR using any available range.  The firmware felt
		 * it was important enough to assign a resource, so don't
		 * disable decoding if we can help it.
		 */
		FUNC25(rl, type, reg);
		FUNC24(rl, type, reg, 0, ~0, count);
		res = FUNC26(rl, bus, dev, type, &reg, 0, ~0,
		    count, flags);
	}
	if (res == NULL) {
		/*
		 * If the allocation fails, delete the resource list entry
		 * and disable decoding for this device.
		 *
		 * If the driver requests this resource in the future,
		 * pci_reserve_map() will try to allocate a fresh
		 * resource range.
		 */
		FUNC25(rl, type, reg);
		FUNC5(dev, type);
		if (bootverbose)
			FUNC3(bus,
			    "pci%d:%d:%d:%d bar %#x failed to allocate\n",
			    FUNC9(dev), FUNC7(dev),
			    FUNC11(dev), FUNC10(dev), reg);
	} else {
		start = FUNC27(res);
		FUNC21(dev, pm, start);
	}
	return (barlen);
}