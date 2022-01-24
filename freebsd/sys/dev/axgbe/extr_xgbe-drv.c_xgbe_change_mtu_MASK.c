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
struct xgbe_prv_data {int rx_buf_size; } ;
struct ifnet {int if_mtu; struct xgbe_prv_data* if_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xgbe_prv_data*) ; 

int FUNC3(struct ifnet *netdev, int mtu)
{
	struct xgbe_prv_data *pdata = netdev->if_softc;
	int ret;

	FUNC0("-->xgbe_change_mtu\n");

	ret = FUNC1(netdev, mtu);
	if (ret < 0)
		return -ret;

	pdata->rx_buf_size = ret;
	netdev->if_mtu = mtu;

	FUNC2(pdata);

	FUNC0("<--xgbe_change_mtu\n");

	return 0;
}