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
struct xgbe_prv_data {TYPE_1__* netdev; } ;
struct TYPE_2__ {int if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 

__attribute__((used)) static void FUNC5(struct xgbe_prv_data *pdata)
{
	FUNC0("-->xgbe_restart_dev\n");

	/* If not running, "restart" will happen on open */
	if ((pdata->netdev->if_drv_flags & IFF_DRV_RUNNING) == 0)
		return;

	FUNC4(pdata);

	FUNC2(pdata);
	FUNC1(pdata);

	FUNC3(pdata);

	FUNC0("<--xgbe_restart_dev\n");
}