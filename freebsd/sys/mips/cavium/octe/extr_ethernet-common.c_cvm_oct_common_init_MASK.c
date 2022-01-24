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
typedef  int /*<<< orphan*/  uint8_t ;
struct ifnet {int /*<<< orphan*/  if_mtu; scalar_t__ if_softc; } ;
struct TYPE_3__ {int phy_id; int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ cvm_oct_private_t ;
struct TYPE_4__ {int board_type; } ;

/* Variables and functions */
#define  CVMX_BOARD_TYPE_CUST_LANNER_MR320 129 
#define  CVMX_BOARD_TYPE_CUST_LANNER_MR321X 128 
 int ENXIO ; 
 int /*<<< orphan*/  ETHERMTU ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct ifnet *ifp)
{
	uint8_t mac[6];
	cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;

	if (FUNC0(NULL, mac) != 0)
		return ENXIO;

	ifp->if_mtu = ETHERMTU;

	FUNC3(ifp);

	FUNC2(ifp, mac);
	FUNC1(ifp, ifp->if_mtu);

	/*
	 * Do any last-minute board-specific initialization.
	 */
	switch (FUNC5()->board_type) {
#if defined(OCTEON_VENDOR_LANNER)
	case CVMX_BOARD_TYPE_CUST_LANNER_MR320:
	case CVMX_BOARD_TYPE_CUST_LANNER_MR321X:
		if (priv->phy_id == 16)
			cvm_oct_mv88e61xx_setup_device(ifp);
		break;
#endif
	default:
		break;
	}

	FUNC6(priv->dev);

	return 0;
}