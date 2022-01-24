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
struct TYPE_2__ {int hw_mtu; } ;
struct mlx5e_priv {TYPE_1__ params_ethtool; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ifnet {int if_mtu; struct mlx5e_priv* if_softc; } ;

/* Variables and functions */
 int E2BIG ; 
 int EINVAL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*,char*,...) ; 
 int FUNC3 (struct mlx5_core_dev*,int*) ; 
 int FUNC4 (struct mlx5_core_dev*,int*) ; 
 int FUNC5 (struct mlx5_core_dev*,int) ; 
 int FUNC6 (struct mlx5_core_dev*,int) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, int sw_mtu)
{
	struct mlx5e_priv *priv = ifp->if_softc;
	struct mlx5_core_dev *mdev = priv->mdev;
	int hw_mtu;
	int err;

	hw_mtu = FUNC1(sw_mtu);

	err = FUNC5(mdev, hw_mtu);
	if (err) {
		FUNC2(ifp, "mlx5_set_port_mtu failed setting %d, err=%d\n",
		    sw_mtu, err);
		return (err);
	}

	/* Update vport context MTU */
	err = FUNC6(mdev, hw_mtu);
	if (err) {
		FUNC2(ifp,
		    "Failed updating vport context with MTU size, err=%d\n",
		    err);
	}

	ifp->if_mtu = sw_mtu;

	err = FUNC4(mdev, &hw_mtu);
	if (err || !hw_mtu) {
		/* fallback to port oper mtu */
		err = FUNC3(mdev, &hw_mtu);
	}
	if (err) {
		FUNC2(ifp,
		    "Query port MTU, after setting new MTU value, failed\n");
		return (err);
	} else if (FUNC0(hw_mtu) < sw_mtu) {
		err = -E2BIG,
		FUNC2(ifp,
		    "Port MTU %d is smaller than ifp mtu %d\n",
		    hw_mtu, sw_mtu);
	} else if (FUNC0(hw_mtu) > sw_mtu) {
		err = -EINVAL;
                FUNC2(ifp,
		    "Port MTU %d is bigger than ifp mtu %d\n",
		    hw_mtu, sw_mtu);
	}
	priv->params_ethtool.hw_mtu = hw_mtu;

	return (err);
}