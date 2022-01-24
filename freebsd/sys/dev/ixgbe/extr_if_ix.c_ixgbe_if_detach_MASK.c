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
typedef  int /*<<< orphan*/  u32 ;
struct adapter {int /*<<< orphan*/  mta; int /*<<< orphan*/  hw; } ;
typedef  int /*<<< orphan*/  if_ctx_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT ; 
 int /*<<< orphan*/  IXGBE_CTRL_EXT_DRV_LOAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_IXGBE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct adapter* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(if_ctx_t ctx)
{
	struct adapter *adapter = FUNC6(ctx);
	device_t       dev = FUNC5(ctx);
	u32            ctrl_ext;

	FUNC0("ixgbe_detach: begin");

	if (FUNC8(dev) != 0) {
		FUNC3(dev, "SR-IOV in use; detach first.\n");
		return (EBUSY);
	}

	FUNC9(ctx);

	/* let hardware know driver is unloading */
	ctrl_ext = FUNC1(&adapter->hw, IXGBE_CTRL_EXT);
	ctrl_ext &= ~IXGBE_CTRL_EXT_DRV_LOAD;
	FUNC2(&adapter->hw, IXGBE_CTRL_EXT, ctrl_ext);

	FUNC7(ctx);
	FUNC4(adapter->mta, M_IXGBE);

	return (0);
}