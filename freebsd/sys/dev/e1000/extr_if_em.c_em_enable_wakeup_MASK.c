#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_8__ {scalar_t__ media_type; scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_9__ {TYPE_2__ phy; TYPE_1__ mac; } ;
struct adapter {int wol; TYPE_3__ hw; } ;
typedef  int /*<<< orphan*/  if_t ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_CTRL ; 
 int /*<<< orphan*/  E1000_CTRL_EXT ; 
 int E1000_CTRL_EXT_SDP3_DATA ; 
 int E1000_CTRL_SWDPIN2 ; 
 int E1000_CTRL_SWDPIN3 ; 
 int /*<<< orphan*/  E1000_RCTL ; 
 int E1000_RCTL_MPE ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  E1000_WUC ; 
 int E1000_WUC_PME_EN ; 
 int /*<<< orphan*/  E1000_WUFC ; 
 int E1000_WUFC_EX ; 
 int E1000_WUFC_MAG ; 
 int E1000_WUFC_MC ; 
 int IFCAP_WOL ; 
 int IFCAP_WOL_MAGIC ; 
 int IFCAP_WOL_MCAST ; 
 int IFCAP_WOL_UCAST ; 
 int PCIM_PSTAT_PME ; 
 int PCIM_PSTAT_PMEENABLE ; 
 int PCIR_POWER_STATUS ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 scalar_t__ e1000_ich10lan ; 
 scalar_t__ e1000_ich8lan ; 
 scalar_t__ e1000_ich9lan ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ e1000_media_type_fiber ; 
 scalar_t__ e1000_media_type_internal_serdes ; 
 scalar_t__ e1000_pchlan ; 
 scalar_t__ e1000_phy_igp_3 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int FUNC4 (struct adapter*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC12(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC8(ctx);
	device_t dev = FUNC6(ctx);
	if_t ifp = FUNC7(ctx);
	int error = 0;
	u32 pmc, ctrl, ctrl_ext, rctl;
	u16 status;

	if (FUNC9(dev, PCIY_PMG, &pmc) != 0)
		return;

	/*
	 * Determine type of Wakeup: note that wol
	 * is set with all bits on by default.
	 */
	if ((FUNC5(ifp) & IFCAP_WOL_MAGIC) == 0)
		adapter->wol &= ~E1000_WUFC_MAG;

	if ((FUNC5(ifp) & IFCAP_WOL_UCAST) == 0)
		adapter->wol &= ~E1000_WUFC_EX;

	if ((FUNC5(ifp) & IFCAP_WOL_MCAST) == 0)
		adapter->wol &= ~E1000_WUFC_MC;
	else {
		rctl = FUNC0(&adapter->hw, E1000_RCTL);
		rctl |= E1000_RCTL_MPE;
		FUNC1(&adapter->hw, E1000_RCTL, rctl);
	}

	if (!(adapter->wol & (E1000_WUFC_EX | E1000_WUFC_MAG | E1000_WUFC_MC)))
		goto pme;

	/* Advertise the wakeup capability */
	ctrl = FUNC0(&adapter->hw, E1000_CTRL);
	ctrl |= (E1000_CTRL_SWDPIN2 | E1000_CTRL_SWDPIN3);
	FUNC1(&adapter->hw, E1000_CTRL, ctrl);

	/* Keep the laser running on Fiber adapters */
	if (adapter->hw.phy.media_type == e1000_media_type_fiber ||
	    adapter->hw.phy.media_type == e1000_media_type_internal_serdes) {
		ctrl_ext = FUNC0(&adapter->hw, E1000_CTRL_EXT);
		ctrl_ext |= E1000_CTRL_EXT_SDP3_DATA;
		FUNC1(&adapter->hw, E1000_CTRL_EXT, ctrl_ext);
	}

	if ((adapter->hw.mac.type == e1000_ich8lan) ||
	    (adapter->hw.mac.type == e1000_pchlan) ||
	    (adapter->hw.mac.type == e1000_ich9lan) ||
	    (adapter->hw.mac.type == e1000_ich10lan))
		FUNC3(&adapter->hw);

	if ( adapter->hw.mac.type >= e1000_pchlan) {
		error = FUNC4(adapter);
		if (error)
			goto pme;
	} else {
		/* Enable wakeup by the MAC */
		FUNC1(&adapter->hw, E1000_WUC, E1000_WUC_PME_EN);
		FUNC1(&adapter->hw, E1000_WUFC, adapter->wol);
	}

	if (adapter->hw.phy.type == e1000_phy_igp_3)
		FUNC2(&adapter->hw);

pme:
	status = FUNC10(dev, pmc + PCIR_POWER_STATUS, 2);
	status &= ~(PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE);
	if (!error && (FUNC5(ifp) & IFCAP_WOL))
		status |= PCIM_PSTAT_PME | PCIM_PSTAT_PMEENABLE;
	FUNC11(dev, pmc + PCIR_POWER_STATUS, status, 2);

	return;
}