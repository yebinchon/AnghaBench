#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* bypass_set ) (struct ixgbe_hw*,int /*<<< orphan*/ ,int,int) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
struct adapter {int feat_cap; int feat_en; int /*<<< orphan*/  dev; struct ixgbe_hw hw; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BYPASS_CTL1_OFFTRST ; 
 int BYPASS_CTL1_OFFTRST_M ; 
 int BYPASS_CTL1_TIME_M ; 
 int BYPASS_CTL1_VALID ; 
 int BYPASS_CTL1_VALID_M ; 
 int /*<<< orphan*/  BYPASS_PAGE_CTL1 ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLFLAG_WR ; 
 int CTLTYPE_INT ; 
 int IXGBE_FEATURE_BYPASS ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (int /*<<< orphan*/ ,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixgbe_bp_aux_off ; 
 int /*<<< orphan*/  ixgbe_bp_aux_on ; 
 int /*<<< orphan*/  ixgbe_bp_log ; 
 int /*<<< orphan*/  ixgbe_bp_main_off ; 
 int /*<<< orphan*/  ixgbe_bp_main_on ; 
 int /*<<< orphan*/  ixgbe_bp_set_state ; 
 int /*<<< orphan*/  ixgbe_bp_timeout ; 
 int /*<<< orphan*/  ixgbe_bp_version ; 
 int /*<<< orphan*/  ixgbe_bp_wd_reset ; 
 int /*<<< orphan*/  ixgbe_bp_wd_set ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_hw*,int /*<<< orphan*/ ,int,int) ; 

void
FUNC9(struct adapter *adapter)
{
	struct ixgbe_hw        *hw = &adapter->hw;
	device_t               dev = adapter->dev;
	struct sysctl_oid      *bp_node;
	struct sysctl_oid_list *bp_list;
	u32                    mask, value, sec, year;

	if (!(adapter->feat_cap & IXGBE_FEATURE_BYPASS))
		return;

	/* First set up time for the hardware */
	FUNC7(&year, &sec);

	mask = BYPASS_CTL1_TIME_M
	     | BYPASS_CTL1_VALID_M
	     | BYPASS_CTL1_OFFTRST_M;

	value = (sec & BYPASS_CTL1_TIME_M)
	      | BYPASS_CTL1_VALID
	      | BYPASS_CTL1_OFFTRST;

	FUNC6(adapter);
	hw->mac.ops.bypass_set(hw, BYPASS_PAGE_CTL1, mask, value);
	FUNC5(adapter);

	/* Now set up the SYSCTL infrastructure */

	/*
	 * The log routine is kept separate from the other
	 * children so a general display command like:
	 * `sysctl dev.ix.0.bypass` will not show the log.
	 */
	FUNC1(FUNC3(dev),
	    FUNC2(FUNC4(dev)),
	    OID_AUTO, "bypass_log", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_log, "I", "Bypass Log");

	/* All other setting are hung from the 'bypass' node */
	bp_node = FUNC0(FUNC3(dev),
	    FUNC2(FUNC4(dev)),
	    OID_AUTO, "bypass", CTLFLAG_RD, NULL, "Bypass");

	bp_list = FUNC2(bp_node);

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "version", CTLTYPE_INT | CTLFLAG_RD,
	    adapter, 0, ixgbe_bp_version, "I", "Bypass Version");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "state", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_set_state, "I", "Bypass State");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "timeout", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_timeout, "I", "Bypass Timeout");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "main_on", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_main_on, "I", "Bypass Main On");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "main_off", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_main_off, "I", "Bypass Main Off");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "aux_on", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_aux_on, "I", "Bypass Aux On");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "aux_off", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_aux_off, "I", "Bypass Aux Off");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "wd_set", CTLTYPE_INT | CTLFLAG_RW,
	    adapter, 0, ixgbe_bp_wd_set, "I", "Set BP Watchdog");

	FUNC1(FUNC3(dev), bp_list,
	    OID_AUTO, "wd_reset", CTLTYPE_INT | CTLFLAG_WR,
	    adapter, 0, ixgbe_bp_wd_reset, "S", "Bypass WD Reset");

	adapter->feat_en |= IXGBE_FEATURE_BYPASS;
}