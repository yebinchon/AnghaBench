#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mlx4_vport_state {int tx_rate; scalar_t__ default_vlan; int qos_vport; } ;
struct TYPE_8__ {TYPE_2__* slave_state; TYPE_1__* vf_admin; } ;
struct TYPE_9__ {TYPE_3__ master; } ;
struct mlx4_priv {TYPE_4__ mfunc; } ;
struct TYPE_10__ {int flags2; } ;
struct mlx4_dev {TYPE_5__ caps; } ;
struct TYPE_7__ {scalar_t__ active; } ;
struct TYPE_6__ {struct mlx4_vport_state* vport; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int MLX4_DEV_CAP_FLAG2_QOS_VPP ; 
 int MLX4_DEV_CAP_FLAG2_UPDATE_QP ; 
 scalar_t__ MLX4_VGT ; 
 int MLX4_VPP_DEFAULT_VPORT ; 
 int FUNC0 (struct mlx4_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int,struct mlx4_vport_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_priv*,int,int) ; 
 struct mlx4_priv* FUNC5 (struct mlx4_dev*) ; 
 int FUNC6 (struct mlx4_priv*,int,int,int) ; 
 int FUNC7 (struct mlx4_dev*,int,int) ; 

int FUNC8(struct mlx4_dev *dev, int port, int vf, int min_tx_rate,
		     int max_tx_rate)
{
	int err;
	int slave;
	struct mlx4_vport_state *vf_admin;
	struct mlx4_priv *priv = FUNC5(dev);

	if (!FUNC2(dev) ||
	    !(dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_QOS_VPP))
		return -EPROTONOSUPPORT;

	if (min_tx_rate) {
		FUNC1(dev, "Minimum BW share not supported\n");
		return -EPROTONOSUPPORT;
	}

	slave = FUNC0(dev, vf);
	if (slave < 0)
		return -EINVAL;

	port = FUNC7(dev, slave, port);
	vf_admin = &priv->mfunc.master.vf_admin[slave].vport[port];

	err = FUNC6(priv, slave, port, max_tx_rate);
	if (err) {
		FUNC1(dev, "vf %d failed to set rate %d\n", vf,
			  max_tx_rate);
		return err;
	}

	vf_admin->tx_rate = max_tx_rate;
	/* if VF is not in supported mode (VST with supported prio),
	 * we do not change vport configuration for its QPs, but save
	 * the rate, so it will be enforced when it moves to supported
	 * mode next time.
	 */
	if (!FUNC3(dev, port, vf_admin)) {
		FUNC1(dev,
			  "rate set for VF %d when not in valid state\n", vf);

		if (vf_admin->default_vlan != MLX4_VGT)
			FUNC1(dev, "VST priority not supported by QoS\n");
		else
			FUNC1(dev, "VF in VGT mode (needed VST)\n");

		FUNC1(dev,
			  "rate %d take affect when VF moves to valid state\n",
			  max_tx_rate);
		return 0;
	}

	/* If user sets rate 0 assigning default vport for its QPs */
	vf_admin->qos_vport = max_tx_rate ? slave : MLX4_VPP_DEFAULT_VPORT;

	if (priv->mfunc.master.slave_state[slave].active &&
	    dev->caps.flags2 & MLX4_DEV_CAP_FLAG2_UPDATE_QP)
		FUNC4(priv, slave, port);

	return 0;
}