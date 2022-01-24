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
struct adapter {scalar_t__ link_active; int link_speed; int feat_en; int task_requests; int /*<<< orphan*/  hw; scalar_t__ link_up; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IXGBE_FEATURE_SRIOV ; 
 int IXGBE_REQUEST_TASK_FDIR ; 
 int IXGBE_REQUEST_TASK_MBX ; 
 int IXGBE_REQUEST_TASK_MOD ; 
 int IXGBE_REQUEST_TASK_MSF ; 
 int IXGBE_REQUEST_TASK_PHY ; 
 int /*<<< orphan*/  LINK_STATE_DOWN ; 
 int /*<<< orphan*/  LINK_STATE_UP ; 
 scalar_t__ TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*) ; 

__attribute__((used)) static void
FUNC14(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC3(ctx);
	device_t       dev = FUNC2(ctx);

	if (adapter->link_up) {
		if (adapter->link_active == FALSE) {
			if (bootverbose)
				FUNC1(dev, "Link is up %d Gbps %s \n",
				    ((adapter->link_speed == 128) ? 10 : 1),
				    "Full Duplex");
			adapter->link_active = TRUE;
			/* Update any Flow Control changes */
			FUNC6(&adapter->hw);
			/* Update DMA coalescing config */
			FUNC5(adapter);
			/* should actually be negotiated value */
			FUNC4(ctx, LINK_STATE_UP, FUNC0(10));

			if (adapter->feat_en & IXGBE_FEATURE_SRIOV)
				FUNC11(adapter);
		}
	} else { /* Link down */
		if (adapter->link_active == TRUE) {
			if (bootverbose)
				FUNC1(dev, "Link is Down\n");
			FUNC4(ctx, LINK_STATE_DOWN, 0);
			adapter->link_active = FALSE;
			if (adapter->feat_en & IXGBE_FEATURE_SRIOV)
				FUNC11(adapter);
		}
	}

	/* Handle task requests from msix_link() */
	if (adapter->task_requests & IXGBE_REQUEST_TASK_MOD)
		FUNC8(ctx);
	if (adapter->task_requests & IXGBE_REQUEST_TASK_MSF)
		FUNC9(ctx);
	if (adapter->task_requests & IXGBE_REQUEST_TASK_MBX)
		FUNC7(ctx);
	if (adapter->task_requests & IXGBE_REQUEST_TASK_FDIR)
		FUNC12(ctx);
	if (adapter->task_requests & IXGBE_REQUEST_TASK_PHY)
		FUNC10(ctx);
	adapter->task_requests = 0;

	FUNC13(adapter);
}