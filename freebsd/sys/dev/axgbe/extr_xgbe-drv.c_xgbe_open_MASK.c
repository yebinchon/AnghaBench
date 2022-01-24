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
struct xgbe_desc_if {int (* alloc_ring_resources ) (struct xgbe_prv_data*) ;int /*<<< orphan*/  (* free_ring_resources ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int rx_buf_size; int /*<<< orphan*/  dev_state; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  service_work; struct xgbe_desc_if desc_if; } ;
struct ifnet {struct xgbe_prv_data* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  XGBE_DOWN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct xgbe_prv_data*) ; 
 int FUNC7 (struct xgbe_prv_data*) ; 
 int FUNC8 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct xgbe_prv_data*) ; 
 int FUNC11 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  xgbe_restart ; 
 int /*<<< orphan*/  xgbe_service ; 
 int FUNC12 (struct xgbe_prv_data*) ; 

int FUNC13(struct ifnet *netdev)
{
	struct xgbe_prv_data *pdata = netdev->if_softc;
	struct xgbe_desc_if *desc_if = &pdata->desc_if;
	int ret;

	FUNC0("-->xgbe_open\n");

	/* Initialize the phy */
	ret = FUNC11(pdata);
	if (ret)
		return ret;

	/* Calculate the Rx buffer size before allocating rings */
	ret = FUNC8(netdev, FUNC3(netdev));
	if (ret < 0) {
		goto err_ptpclk;
	}
	pdata->rx_buf_size = ret;

	/* Allocate the channel and ring structures */
	ret = FUNC7(pdata);
	if (ret) {
		FUNC4("xgbe_alloc_channels failed\n");
		goto err_ptpclk;
	}

	/* Allocate the ring descriptors and buffers */
	ret = desc_if->alloc_ring_resources(pdata);
	if (ret) {
		FUNC4("desc_if->alloc_ring_resources failed\n");
		goto err_channels;
	}

	FUNC1(&pdata->service_work, 0, xgbe_service, pdata);
	FUNC1(&pdata->restart_work, 0, xgbe_restart, pdata);
	FUNC10(pdata);

	ret = FUNC12(pdata);
	if (ret)
		goto err_rings;

	FUNC2(XGBE_DOWN, &pdata->dev_state);

	FUNC0("<--xgbe_open\n");

	return 0;

err_rings:
	desc_if->free_ring_resources(pdata);

err_channels:
	FUNC9(pdata);

err_ptpclk:

	return ret;
}