#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  hwrev; } ;
struct TYPE_7__ {int /*<<< orphan*/  obj; } ;
struct TYPE_9__ {int /*<<< orphan*/  eio; } ;
struct bcm_platform {int cfe_console; int cc_addr; int cc_caps; int cc_caps_ext; int pmu_addr; int cpu_addr; int /*<<< orphan*/  services; TYPE_2__ cpu_id; int /*<<< orphan*/  cid; int /*<<< orphan*/  pmu; TYPE_2__ pmu_id; TYPE_2__ cc_id; TYPE_1__ erom; TYPE_3__ erom_io; int /*<<< orphan*/  erom_ops; int /*<<< orphan*/  erom_impl; int /*<<< orphan*/ * nvram_cls; int /*<<< orphan*/ * nvram_io; } ;
typedef  int /*<<< orphan*/  bus_space_tag_t ;
typedef  int /*<<< orphan*/  bus_space_handle_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;
struct TYPE_10__ {int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int FUNC0 (struct bcm_platform*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFE_STDHANDLE_CONSOLE ; 
 int /*<<< orphan*/  CHIPC_CAP2_AOB ; 
 int /*<<< orphan*/  CHIPC_CAPABILITIES ; 
 int /*<<< orphan*/  CHIPC_CAPABILITIES_EXT ; 
 int /*<<< orphan*/  CHIPC_CAP_PMU ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_4__ bcm_cfe_nvram ; 
 int /*<<< orphan*/  bcm_chipc_cores ; 
 int /*<<< orphan*/  bcm_cpu0_cores ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct bcm_platform*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (TYPE_4__*,int /*<<< orphan*/ **) ; 
 int bcm_platform_data_avail ; 
 int /*<<< orphan*/  bcm_pmu_cores ; 
 int /*<<< orphan*/  bcm_pmu_soc_io ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bcm_platform*) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ bootverbose ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mips_bus_space_generic ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC19(struct bcm_platform *bp)
{
	bus_addr_t		bus_addr, bus_size;
	bus_space_tag_t		erom_bst;
	bus_space_handle_t	erom_bsh;
	bool			aob, pmu;
	int			error;

	bus_addr = FUNC8();
	bus_size = FUNC9();

#ifdef CFE
	/* Fetch CFE console handle (if any). Must be initialized before
	 * any calls to printf/early_putc. */
	if ((bp->cfe_console = cfe_getstdhandle(CFE_STDHANDLE_CONSOLE)) < 0)
		bp->cfe_console = -1;

	/* Probe CFE NVRAM sources */
	bp->nvram_io = &bcm_cfe_nvram.io;
	error = bcm_nvram_find_cfedev(&bcm_cfe_nvram, &bp->nvram_cls);
	if (error) {
		bp->nvram_io = NULL;
		bp->nvram_cls = NULL;
	}
#endif /* CFE */

	/* Probe and attach device table provider, populating our
	 * chip identification */
	erom_bst = mips_bus_space_generic;
	erom_bsh = FUNC2(bus_addr, 0);

	error = FUNC13(&bp->erom_io, bus_addr, bus_size, erom_bst,
	    erom_bsh);
	if (error) {
		FUNC1("failed to initialize erom I/O callbacks: %d\n", error);
		return (error);
	}

	error = FUNC6(&bp->erom_impl, &bp->erom_ops,
	    &bp->erom.obj, sizeof(bp->erom), &bp->erom_io.eio, &bp->cid);
	if (error) {
		FUNC1("error attaching erom parser: %d\n", error);
		FUNC12(&bp->erom_io.eio);
		return (error);
	}

	if (bootverbose)
		FUNC11(&bp->erom.obj);

	/* Fetch chipcommon core info */
	error = FUNC7(bp, bcm_chipc_cores, FUNC18(bcm_chipc_cores),
	    &bp->cc_id, &bp->cc_addr);
	if (error) {
		FUNC1("error locating chipc core: %d\n", error);
		return (error);
	}

	/* Fetch chipc capability flags */
	bp->cc_caps = FUNC3(bp->cc_addr, CHIPC_CAPABILITIES);
	bp->cc_caps_ext = 0x0;	

	if (FUNC5(bp->cc_id.hwrev))
		bp->cc_caps_ext = FUNC0(bp, CHIPC_CAPABILITIES_EXT);

	/* Fetch PMU info */
	pmu = FUNC4(bp->cc_caps, CHIPC_CAP_PMU);
	aob = FUNC4(bp->cc_caps_ext, CHIPC_CAP2_AOB);

	if (pmu && aob) {
		/* PMU block mapped to a PMU core on the Always-on-Bus (aob) */
		error = FUNC7(bp, bcm_pmu_cores, FUNC18(bcm_pmu_cores),
		    &bp->pmu_id,  &bp->pmu_addr);
		if (error) {
			FUNC1("error locating pmu core: %d\n", error);
			return (error);
		}
	} else if (pmu) {
		/* PMU block mapped to chipc */
		bp->pmu_addr = bp->cc_addr;
		bp->pmu_id = bp->cc_id;
	} else {
		/* No PMU */
		bp->pmu_addr = 0x0;
		FUNC17(&bp->pmu_id, 0, sizeof(bp->pmu_id));
	}

	/* Initialize PMU query state */
	if (pmu) {
		error = FUNC14(&bp->pmu, NULL, bp->cid,
		    &bcm_pmu_soc_io, bp);
		if (error) {
			FUNC1("bhnd_pmu_query_init() failed: %d\n", error);
			return (error);
		}
	}

	/* Find CPU core info */
	error = FUNC7(bp, bcm_cpu0_cores, FUNC18(bcm_cpu0_cores),
	    &bp->cpu_id,  &bp->cpu_addr);
	if (error) {
		FUNC1("error locating CPU core: %d\n", error);
		return (error);
	}

	/* Initialize our platform service registry */
	if ((error = FUNC15(&bp->services))) {
		FUNC1("error initializing service registry: %d\n", error);
		return (error);
	}

	bcm_platform_data_avail = true;
	return (0);
}