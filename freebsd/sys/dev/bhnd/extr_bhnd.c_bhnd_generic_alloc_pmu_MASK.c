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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_int ;
struct resource_list_entry {int /*<<< orphan*/ * res; } ;
struct resource_list {int dummy; } ;
struct bhnd_softc {int /*<<< orphan*/  dev; } ;
struct bhnd_resource {int direct; int /*<<< orphan*/ * res; } ;
struct bhnd_core_clkctl {int dummy; } ;
typedef  scalar_t__ device_t ;
typedef  int bus_size_t ;
typedef  int bhnd_size_t ;
typedef  int bhnd_addr_t ;

/* Variables and functions */
 int BHND_CLK_CTL_ST ; 
 int /*<<< orphan*/  BHND_PORT_DEVICE ; 
 int /*<<< orphan*/  BHND_SERVICE_PMU ; 
 struct resource_list* FUNC0 (scalar_t__,scalar_t__) ; 
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GIANT_REQUIRED ; 
 int /*<<< orphan*/  M_BHND ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 struct bhnd_core_clkctl* FUNC1 (scalar_t__,scalar_t__,struct bhnd_resource*,int,int /*<<< orphan*/ ) ; 
 struct bhnd_core_clkctl* FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct bhnd_core_clkctl*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 struct bhnd_softc* FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct bhnd_resource*,int /*<<< orphan*/ ) ; 
 struct bhnd_resource* FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 struct resource_list_entry* FUNC15 (struct resource_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 

int
FUNC19(device_t dev, device_t child)
{
	struct bhnd_softc		*sc;
	struct bhnd_resource		*r;
	struct bhnd_core_clkctl		*clkctl;
	struct resource_list		*rl;
	struct resource_list_entry	*rle;
	device_t			 pmu_dev;
	bhnd_addr_t			 r_addr;
	bhnd_size_t			 r_size;
	bus_size_t			 pmu_regs;
	u_int				 max_latency;
	int				 error;

	GIANT_REQUIRED;	/* for newbus */

	if (FUNC9(child) != dev)
		return (EINVAL);

	sc = FUNC10(dev);
	clkctl = FUNC2(child);
	pmu_regs = BHND_CLK_CTL_ST;

	/* already allocated? */
	if (clkctl != NULL) {
		FUNC14("duplicate PMU allocation for %s",
		    FUNC8(child));
	}

	/* Determine address+size of the core's PMU register block */
	error = FUNC3(child, BHND_PORT_DEVICE, 0, 0, &r_addr,
	    &r_size);
	if (error) {
		FUNC11(sc->dev, "error fetching register block info for "
		    "%s: %d\n", FUNC8(child), error);
		return (error);
	}

	if (r_size < (pmu_regs + sizeof(uint32_t))) {
		FUNC11(sc->dev, "pmu offset %#jx would overrun %s "
		    "register block\n", (uintmax_t)pmu_regs,
		    FUNC8(child));
		return (ENODEV);
	}

	/* Locate actual resource containing the core's register block */
	if ((rl = FUNC0(dev, child)) == NULL) {
		FUNC11(dev, "NULL resource list returned for %s\n",
		    FUNC8(child));
		return (ENXIO);
	}

	if ((rle = FUNC15(rl, SYS_RES_MEMORY, 0)) == NULL) {
		FUNC11(dev, "cannot locate core register resource "
		    "for %s\n", FUNC8(child));
		return (ENXIO);
	}

	if (rle->res == NULL) {
		FUNC11(dev, "core register resource unallocated for "
		    "%s\n", FUNC8(child));
		return (ENXIO);
	}

	if (r_addr+pmu_regs < FUNC18(rle->res) ||
	    r_addr+pmu_regs >= FUNC16(rle->res))
	{
		FUNC11(dev, "core register resource does not map PMU "
		    "registers at %#jx\n for %s\n", r_addr+pmu_regs,
		    FUNC8(child));
		return (ENXIO);
	}

	/* Adjust PMU register offset relative to the actual start address
	 * of the core's register block allocation.
	 * 
	 * XXX: The saved offset will be invalid if bus_adjust_resource is
	 * used to modify the resource's start address.
	 */
	if (FUNC18(rle->res) > r_addr)
		pmu_regs -= FUNC18(rle->res) - r_addr;
	else
		pmu_regs -= r_addr - FUNC18(rle->res);

	/* Retain a PMU reference for the clkctl instance state */
	pmu_dev = FUNC6(child, BHND_SERVICE_PMU);
	if (pmu_dev == NULL) {
		FUNC11(sc->dev, "PMU not found\n");
		return (ENXIO);
	}

	/* Fetch the maximum transition latency from our PMU */
	max_latency = FUNC4(pmu_dev);

	/* Allocate a new bhnd_resource wrapping the standard resource we
	 * fetched from the resource list; we'll free this in
	 * bhnd_generic_release_pmu() */
	r = FUNC13(sizeof(struct bhnd_resource), M_BHND, M_NOWAIT);
	if (r == NULL) {
		FUNC5(child, pmu_dev, BHND_SERVICE_PMU);
		return (ENOMEM);
	}

	r->res = rle->res;
	r->direct = ((FUNC17(rle->res) & RF_ACTIVE) != 0);

	/* Allocate the clkctl instance */
	clkctl = FUNC1(child, pmu_dev, r, pmu_regs,
	    max_latency);
	if (clkctl == NULL) {
		FUNC12(r, M_BHND);
		FUNC5(child, pmu_dev, BHND_SERVICE_PMU);
		return (ENOMEM);
	}

	FUNC7(child, clkctl);
	return (0);
}