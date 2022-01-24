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
struct xgbe_desc_if {int /*<<< orphan*/  (* free_ring_resources ) (struct xgbe_prv_data*) ;} ;
struct xgbe_prv_data {int /*<<< orphan*/  dev_state; struct xgbe_desc_if desc_if; } ;
struct ifnet {struct xgbe_prv_data* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  XGBE_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct xgbe_prv_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xgbe_prv_data*) ; 

int FUNC5(struct ifnet *netdev)
{
	struct xgbe_prv_data *pdata = netdev->if_softc;
	struct xgbe_desc_if *desc_if = &pdata->desc_if;

	FUNC0("-->xgbe_close\n");

	/* Stop the device */
	FUNC4(pdata);

	/* Free the ring descriptors and buffers */
	desc_if->free_ring_resources(pdata);

	/* Free the channel and ring structures */
	FUNC3(pdata);

	FUNC1(XGBE_DOWN, &pdata->dev_state);

	FUNC0("<--xgbe_close\n");

	return 0;
}