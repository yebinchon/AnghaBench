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
typedef  int uint16_t ;
typedef  int u_int ;
struct resource_list {int dummy; } ;
struct resource {int dummy; } ;
struct pci_map {int pm_size; int pm_value; } ;
struct pci_devinfo {int /*<<< orphan*/  cfg; struct resource_list resources; } ;
typedef  int rman_res_t ;
typedef  int pci_addr_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int PCIM_BAR_MEM_PREFETCH ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PORTEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int RF_ACTIVE ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int RF_ALIGNMENT_MASK ; 
 int RF_PREFETCHABLE ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 struct pci_devinfo* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int,...) ; 
 struct pci_map* FUNC7 (int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 struct pci_map* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int*,int*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct pci_map*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct resource_list*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct resource_list*,int,int) ; 
 struct resource* FUNC18 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int,int,int,int) ; 
 int FUNC19 (struct resource*) ; 

__attribute__((used)) static struct resource *
FUNC20(device_t dev, device_t child, int type, int *rid,
    rman_res_t start, rman_res_t end, rman_res_t count, u_int num,
    u_int flags)
{
	struct pci_devinfo *dinfo = FUNC4(child);
	struct resource_list *rl = &dinfo->resources;
	struct resource *res;
	struct pci_map *pm;
	uint16_t cmd;
	pci_addr_t map, testval;
	int mapsize;

	res = NULL;

	/* If rid is managed by EA, ignore it */
	if (FUNC8(child, *rid))
		goto out;

	pm = FUNC9(child, *rid);
	if (pm != NULL) {
		/* This is a BAR that we failed to allocate earlier. */
		mapsize = pm->pm_size;
		map = pm->pm_value;
	} else {
		/*
		 * Weed out the bogons, and figure out how large the
		 * BAR/map is.  BARs that read back 0 here are bogus
		 * and unimplemented.  Note: atapci in legacy mode are
		 * special and handled elsewhere in the code.  If you
		 * have a atapci device in legacy mode and it fails
		 * here, that other code is broken.
		 */
		FUNC11(child, *rid, &map, &testval, NULL);

		/*
		 * Determine the size of the BAR and ignore BARs with a size
		 * of 0.  Device ROM BARs use a different mask value.
		 */
		if (FUNC0(&dinfo->cfg, *rid))
			mapsize = FUNC13(testval);
		else
			mapsize = FUNC10(testval);
		if (mapsize == 0)
			goto out;
		pm = FUNC7(child, *rid, map, mapsize);
	}

	if (FUNC1(map) || FUNC0(&dinfo->cfg, *rid)) {
		if (type != SYS_RES_MEMORY) {
			if (bootverbose)
				FUNC6(dev,
				    "child %s requested type %d for rid %#x,"
				    " but the BAR says it is an memio\n",
				    FUNC5(child), type, *rid);
			goto out;
		}
	} else {
		if (type != SYS_RES_IOPORT) {
			if (bootverbose)
				FUNC6(dev,
				    "child %s requested type %d for rid %#x,"
				    " but the BAR says it is an ioport\n",
				    FUNC5(child), type, *rid);
			goto out;
		}
	}

	/*
	 * For real BARs, we need to override the size that
	 * the driver requests, because that's what the BAR
	 * actually uses and we would otherwise have a
	 * situation where we might allocate the excess to
	 * another driver, which won't work.
	 */
	count = ((pci_addr_t)1 << mapsize) * num;
	if (FUNC2(flags) < mapsize)
		flags = (flags & ~RF_ALIGNMENT_MASK) | FUNC3(mapsize);
	if (FUNC1(map) && (map & PCIM_BAR_MEM_PREFETCH))
		flags |= RF_PREFETCHABLE;

	/*
	 * Allocate enough resource, and then write back the
	 * appropriate BAR for that resource.
	 */
	FUNC16(rl, type, *rid, start, end, count);
	res = FUNC18(rl, dev, child, type, rid, start, end,
	    count, flags & ~RF_ACTIVE);
	if (res == NULL) {
		FUNC17(rl, type, *rid);
		FUNC6(child,
		    "%#jx bytes of rid %#x res %d failed (%#jx, %#jx).\n",
		    count, *rid, type, start, end);
		goto out;
	}
	if (bootverbose)
		FUNC6(child,
		    "Lazy allocation of %#jx bytes rid %#x type %d at %#jx\n",
		    count, *rid, type, FUNC19(res));

	/* Disable decoding via the CMD register before updating the BAR */
	cmd = FUNC12(child, PCIR_COMMAND, 2);
	FUNC15(child, PCIR_COMMAND,
	    cmd & ~(FUNC1(map) ? PCIM_CMD_MEMEN : PCIM_CMD_PORTEN), 2);

	map = FUNC19(res);
	FUNC14(child, pm, map);

	/* Restore the original value of the CMD register */
	FUNC15(child, PCIR_COMMAND, cmd, 2);
out:
	return (res);
}