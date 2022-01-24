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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct siba_softc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pwrctl; } ;
struct siba_devinfo {scalar_t__ pmu_state; TYPE_1__ pmu; struct bhnd_resource** cfg_res; } ;
struct bhnd_resource {int dummy; } ;
typedef  scalar_t__ device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_CLOCK_DYN ; 
 int BHND_IOCTL_CLK_EN ; 
 int BHND_IOCTL_CLK_FORCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  SIBA_CFG0_IDLOW ; 
 int /*<<< orphan*/  SIBA_CFG0_IMSTATE ; 
 int /*<<< orphan*/  SIBA_CFG0_TMSTATEHIGH ; 
 int /*<<< orphan*/  SIBA_CFG0_TMSTATELOW ; 
 int SIBA_IDL_INIT ; 
 int /*<<< orphan*/  SIBA_IM_BY ; 
 int SIBA_IM_RJ ; 
 int /*<<< orphan*/  FUNC1 (struct siba_softc*) ; 
 scalar_t__ SIBA_PMU_PWRCTL ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIBA_TMH_BUSY ; 
 int SIBA_TML_REJ ; 
 int SIBA_TML_RESET ; 
 int SIBA_TML_SICF_MASK ; 
 int SIBA_TML_SICF_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (struct siba_softc*) ; 
 int /*<<< orphan*/  TML_SICF ; 
 int FUNC4 (struct bhnd_resource*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct siba_devinfo* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 struct siba_softc* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,int) ; 
 int FUNC10 (scalar_t__,struct siba_devinfo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,struct siba_devinfo*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int
FUNC12(device_t dev, device_t child, uint16_t ioctl)
{
	struct siba_softc		*sc;
	struct siba_devinfo		*dinfo;
	struct bhnd_resource		*r;
	uint32_t			 idl, ts_low, ts_mask;
	uint16_t			 cflags, clkflags;
	int				 error;

	if (FUNC7(child) != dev)
		return (EINVAL);

	sc = FUNC8(dev);
	dinfo = FUNC6(child);

	/* Can't suspend the core without access to the CFG0 registers */
	if ((r = dinfo->cfg_res[0]) == NULL)
		return (ENODEV);

	/* We require exclusive control over BHND_IOCTL_CLK_(EN|FORCE) */
	clkflags = BHND_IOCTL_CLK_EN | BHND_IOCTL_CLK_FORCE;
	if (ioctl & clkflags)
		return (EINVAL);

	/* Already in RESET? */
	ts_low = FUNC4(r, SIBA_CFG0_TMSTATELOW);
	if (ts_low & SIBA_TML_RESET)
		return (0);

	/* If clocks are already disabled, we can place the core directly
	 * into RESET|REJ while setting the caller's IOCTL flags. */
	cflags = FUNC2(ts_low, TML_SICF);
	if (!(cflags & BHND_IOCTL_CLK_EN)) {
		ts_low = SIBA_TML_RESET | SIBA_TML_REJ |
			 (ioctl << SIBA_TML_SICF_SHIFT);
		ts_mask = SIBA_TML_RESET | SIBA_TML_REJ | SIBA_TML_SICF_MASK;

		FUNC11(child, dinfo, SIBA_CFG0_TMSTATELOW,
		    ts_low, ts_mask);
		return (0);
	}

	/* Reject further transactions reaching this core */
	FUNC11(child, dinfo, SIBA_CFG0_TMSTATELOW,
	    SIBA_TML_REJ, SIBA_TML_REJ);

	/* Wait for transaction busy flag to clear for all transactions
	 * initiated by this core */
	error = FUNC10(child, dinfo, SIBA_CFG0_TMSTATEHIGH,
	    0x0, SIBA_TMH_BUSY, 100000);
	if (error)
		return (error);

	/* If this is an initiator core, we need to reject initiator
	 * transactions too. */
	idl = FUNC4(r, SIBA_CFG0_IDLOW);
	if (idl & SIBA_IDL_INIT) {
		/* Reject further initiator transactions */
		FUNC11(child, dinfo, SIBA_CFG0_IMSTATE,
		    SIBA_IM_RJ, SIBA_IM_RJ);

		/* Wait for initiator busy flag to clear */
		error = FUNC10(child, dinfo, SIBA_CFG0_IMSTATE,
		    0x0, SIBA_IM_BY, 100000);
		if (error)
			return (error);
	}

	/* Put the core into RESET, set the caller's IOCTL flags, and
	 * force clocks to ensure the RESET signal propagates throughout the
	 * core. */
	ts_low = SIBA_TML_RESET |
		 (ioctl << SIBA_TML_SICF_SHIFT) |
		 (BHND_IOCTL_CLK_EN << SIBA_TML_SICF_SHIFT) |
		 (BHND_IOCTL_CLK_FORCE << SIBA_TML_SICF_SHIFT);
	ts_mask = SIBA_TML_RESET |
		  SIBA_TML_SICF_MASK;

	FUNC11(child, dinfo, SIBA_CFG0_TMSTATELOW, ts_low,
	    ts_mask);

	/* Give RESET ample time */
	FUNC0(10);

	/* Clear previously asserted initiator reject */
	if (idl & SIBA_IDL_INIT) {
		FUNC11(child, dinfo, SIBA_CFG0_IMSTATE, 0x0,
		    SIBA_IM_RJ);
	}

	/* Disable all clocks, leaving RESET and REJ asserted */
	FUNC11(child, dinfo, SIBA_CFG0_TMSTATELOW, 0x0,
	    (BHND_IOCTL_CLK_EN | BHND_IOCTL_CLK_FORCE) << SIBA_TML_SICF_SHIFT);

	/*
	 * Core is now in RESET.
	 *
	 * If the core holds any PWRCTL clock reservations, we need to release
	 * those now. This emulates the standard bhnd(4) PMU behavior of RESET
	 * automatically clearing clkctl
	 */
	FUNC1(sc);
	if (dinfo->pmu_state == SIBA_PMU_PWRCTL) {
		error = FUNC5(dinfo->pmu.pwrctl, child,
		    BHND_CLOCK_DYN);
		FUNC3(sc);

		if (error) {
			FUNC9(child, "failed to release clock request: "
			    "%d", error);
			return (error);
		}

		return (0);
	} else {
		FUNC3(sc);
		return (0);
	}
}