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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct bhnd_resource {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  io_ctx; int /*<<< orphan*/  io; } ;
struct bhnd_pmu_softc {int /*<<< orphan*/ * chipc_dev; int /*<<< orphan*/ * dev; int /*<<< orphan*/ * clkctl; TYPE_1__ query; struct bhnd_resource* res; int /*<<< orphan*/  io_ctx; int /*<<< orphan*/  io; int /*<<< orphan*/  cid; int /*<<< orphan*/  board; int /*<<< orphan*/  caps; } ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  scalar_t__ devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLK_CTL_ST ; 
 int /*<<< orphan*/  BHND_PMU_CAP ; 
 int /*<<< orphan*/  BHND_PMU_MAX_TRANSITION_DLY ; 
 int /*<<< orphan*/  BHND_SERVICE_CHIPC ; 
 int /*<<< orphan*/  BHND_SERVICE_PMU ; 
 int /*<<< orphan*/  FUNC0 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_pmu_softc*) ; 
 int CTLFLAG_RD ; 
 int CTLTYPE_UINT ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct bhnd_pmu_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_oid*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct bhnd_resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bhnd_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct bhnd_pmu_softc*) ; 
 int /*<<< orphan*/  bhnd_pmu_res_io ; 
 int /*<<< orphan*/  bhnd_pmu_sysctl_bus_freq ; 
 int /*<<< orphan*/  bhnd_pmu_sysctl_cpu_freq ; 
 int /*<<< orphan*/  bhnd_pmu_sysctl_mem_freq ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 struct bhnd_pmu_softc* FUNC19 (int /*<<< orphan*/ *) ; 
 struct sysctl_ctx_list* FUNC20 (int /*<<< orphan*/ *) ; 
 struct sysctl_oid* FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,char*,...) ; 

int
FUNC23(device_t dev, struct bhnd_resource *res)
{
	struct bhnd_pmu_softc	*sc;
	struct sysctl_ctx_list	*ctx;
	struct sysctl_oid	*tree;
	devclass_t		 bhnd_class;
	device_t		 core, bus;
	int			 error;

	sc = FUNC19(dev);
	sc->dev = dev;
	sc->res = res;

	/* Fetch capability flags */
	sc->caps = FUNC5(sc->res, BHND_PMU_CAP);

	/* Find the bus and bus-attached core */
	bhnd_class = FUNC15("bhnd");
	core = sc->dev;
	while ((bus = FUNC18(core)) != NULL) {
		if (FUNC16(bus) == bhnd_class)
			break;

		core = bus;
	}

	if (core == NULL) {
		FUNC22(sc->dev, "bhnd bus not found\n");
		return (ENXIO);
	}

	/* Fetch chip and board info */
	sc->cid = *FUNC7(core);
	if ((error = FUNC11(core, &sc->board))) {
		FUNC22(sc->dev, "error fetching board info: %d\n",
		    error);
		return (ENXIO);
	}

	/* Initialize query state */
	error = FUNC10(&sc->query, dev, sc->cid, &bhnd_pmu_res_io,
	    sc);
	if (error)
		return (error);
	sc->io = sc->query.io; 
	sc->io_ctx = sc->query.io_ctx;

	FUNC1(sc);

	/* Allocate our own core clkctl state directly; we use this to wait on
	 * PMU state transitions, avoiding a cyclic dependency between bhnd(4)'s
	 * clkctl handling and registration of this device as a PMU */
	sc->clkctl = FUNC4(core, dev, sc->res, BHND_CLK_CTL_ST,
	    BHND_PMU_MAX_TRANSITION_DLY);
	if (sc->clkctl == NULL) {
		FUNC22(sc->dev, "failed to allocate clkctl for %s\n",
		    FUNC17(core));
		error = ENOMEM;
		goto failed;
	}

	/* Locate ChipCommon device */
	sc->chipc_dev = FUNC14(dev, BHND_SERVICE_CHIPC);
	if (sc->chipc_dev == NULL) {
		FUNC22(sc->dev, "chipcommon device not found\n");
		error = ENXIO;
		goto failed;
	}

	/* Initialize PMU */
	if ((error = FUNC8(sc))) {
		FUNC22(sc->dev, "PMU init failed: %d\n", error);
		goto failed;
	}

	/* Register ourselves with the bus */
	if ((error = FUNC12(dev, BHND_SERVICE_PMU))) {
		FUNC22(sc->dev, "failed to register PMU with bus : %d\n",
		    error);
		goto failed;
	}

	/* Set up sysctl nodes */
	ctx = FUNC20(dev);
	tree = FUNC21(dev);

	FUNC2(ctx, FUNC3(tree), OID_AUTO,
	    "bus_freq", CTLTYPE_UINT | CTLFLAG_RD, sc, 0,
	    bhnd_pmu_sysctl_bus_freq, "IU", "Bus clock frequency");

	FUNC2(ctx, FUNC3(tree), OID_AUTO,
	    "cpu_freq", CTLTYPE_UINT | CTLFLAG_RD, sc, 0,
	    bhnd_pmu_sysctl_cpu_freq, "IU", "CPU clock frequency");
	
	FUNC2(ctx, FUNC3(tree), OID_AUTO,
	    "mem_freq", CTLTYPE_UINT | CTLFLAG_RD, sc, 0,
	    bhnd_pmu_sysctl_mem_freq, "IU", "Memory clock frequency");

	return (0);

failed:
	FUNC0(sc);
	FUNC9(&sc->query);

	if (sc->clkctl != NULL)
		FUNC6(sc->clkctl);

	if (sc->chipc_dev != NULL) {
		FUNC13(sc->dev, sc->chipc_dev,
		    BHND_SERVICE_CHIPC);
	}

	return (error);
}