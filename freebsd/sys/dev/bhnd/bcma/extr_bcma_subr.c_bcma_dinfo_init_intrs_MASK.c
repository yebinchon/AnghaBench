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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct bcma_intr {int dummy; } ;
struct bcma_devinfo {scalar_t__ num_intrs; int /*<<< orphan*/  intrs; int /*<<< orphan*/ * res_agent; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bcma_devinfo*) ; 
 int /*<<< orphan*/  BCMA_DMP_CFG_OOB ; 
 int /*<<< orphan*/  BCMA_DMP_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ BCMA_DMP_OOBSEL_BUSLINE_MASK ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BCMA_OOB_BANK_INTR ; 
 scalar_t__ BCMA_OOB_NUM_SEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bcma_intr*,int /*<<< orphan*/ ) ; 
 scalar_t__ UINT_MAX ; 
 struct bcma_intr* FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  i_link ; 

__attribute__((used)) static int
FUNC9(device_t bus, device_t child,
    struct bcma_devinfo *dinfo)
{
	uint32_t dmpcfg, oobw;

	/* Agent block must be mapped */
	if (dinfo->res_agent == NULL)
		return (0);

	/* Agent must support OOB */
	dmpcfg = FUNC7(dinfo->res_agent, BCMA_DMP_CONFIG);
	if (!FUNC1(dmpcfg, BCMA_DMP_CFG_OOB))
		return (0);

	/* Fetch width of the OOB interrupt bank */
	oobw = FUNC7(dinfo->res_agent,
	     FUNC4(BCMA_OOB_BANK_INTR));
	if (oobw >= BCMA_OOB_NUM_SEL) {
		FUNC8(bus, "ignoring invalid OOBOUTWIDTH for core %u: "
		    "%#x\n", FUNC0(dinfo), oobw);
		return (0);
	}

	/* Fetch OOBSEL busline values and populate list of interrupt
	 * descriptors */
	for (uint32_t sel = 0; sel < oobw; sel++) {
		struct bcma_intr	*intr;
		uint32_t		 selout;
		uint8_t			 line;

		if (dinfo->num_intrs == UINT_MAX)
			return (ENOMEM);
	
		selout = FUNC7(dinfo->res_agent, FUNC2(
		    BCMA_OOB_BANK_INTR, sel));

		line = (selout >> FUNC3(sel)) &
		    BCMA_DMP_OOBSEL_BUSLINE_MASK;

		intr = FUNC6(BCMA_OOB_BANK_INTR, sel, line);
		if (intr == NULL) {
			FUNC8(bus, "failed allocating interrupt "
			    "descriptor %#x for core %u\n", sel,
			    FUNC0(dinfo));
			return (ENOMEM);
		}

		FUNC5(&dinfo->intrs, intr, i_link);
		dinfo->num_intrs++;
	}

	return (0);
}