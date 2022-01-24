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
struct xgbe_phy_if {int (* phy_start ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* phy_stop ) (struct xgbe_prv_data*) ;} ;
struct xgbe_hw_if {int /*<<< orphan*/  (* exit ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* enable_rx ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* enable_tx ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* init ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int /*<<< orphan*/  service_work; int /*<<< orphan*/  dev_workqueue; struct xgbe_phy_if phy_if; struct xgbe_hw_if hw_if; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct xgbe_prv_data*) ; 
 int FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct xgbe_prv_data*) ; 
 int FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 

__attribute__((used)) static int FUNC11(struct xgbe_prv_data *pdata)
{
	struct xgbe_hw_if *hw_if = &pdata->hw_if;
	struct xgbe_phy_if *phy_if = &pdata->phy_if;
	int ret;

	FUNC0("-->xgbe_start\n");

	hw_if->init(pdata);

	ret = phy_if->phy_start(pdata);
	if (ret)
		goto err_phy;

	ret = FUNC9(pdata);
	if (ret)
		goto err_napi;

	hw_if->enable_tx(pdata);
	hw_if->enable_rx(pdata);

	FUNC8(pdata);

	FUNC10(pdata);
	FUNC7(pdata->dev_workqueue, &pdata->service_work);

	FUNC0("<--xgbe_start\n");

	return 0;

err_napi:
	phy_if->phy_stop(pdata);

err_phy:
	hw_if->exit(pdata);

	return ret;
}