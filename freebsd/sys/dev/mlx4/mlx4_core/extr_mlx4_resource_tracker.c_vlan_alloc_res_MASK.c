#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct mlx4_slave_state {int old_vlan_api; } ;
struct TYPE_4__ {struct mlx4_slave_state* slave_state; } ;
struct TYPE_5__ {TYPE_1__ master; } ;
struct mlx4_priv {TYPE_2__ mfunc; } ;
struct TYPE_6__ {int num_ports; } ;
struct mlx4_dev {TYPE_3__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int RES_OP_RESERVE_AND_MAP ; 
 int FUNC0 (struct mlx4_dev*,int,scalar_t__,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,scalar_t__) ; 
 int FUNC2 (scalar_t__*) ; 
 struct mlx4_priv* FUNC3 (struct mlx4_dev*) ; 
 int FUNC4 (struct mlx4_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mlx4_dev*,int,scalar_t__,int,int) ; 

__attribute__((used)) static int FUNC7(struct mlx4_dev *dev, int slave, int op, int cmd,
			  u64 in_param, u64 *out_param, int in_port)
{
	struct mlx4_priv *priv = FUNC3(dev);
	struct mlx4_slave_state *slave_state = priv->mfunc.master.slave_state;
	int err;
	u16 vlan;
	int vlan_index;
	int port;

	port = !in_port ? FUNC2(out_param) : in_port;

	if (!port || op != RES_OP_RESERVE_AND_MAP)
		return -EINVAL;

	port = FUNC4(
			dev, slave, port);

	if (port < 0)
		return -EINVAL;
	/* upstream kernels had NOP for reg/unreg vlan. Continue this. */
	if (!in_port && port > 0 && port <= dev->caps.num_ports) {
		slave_state[slave].old_vlan_api = true;
		return 0;
	}

	vlan = (u16) in_param;

	err = FUNC0(dev, port, vlan, &vlan_index);
	if (!err) {
		FUNC5(out_param, (u32) vlan_index);
		err = FUNC6(dev, slave, vlan, port, vlan_index);
		if (err)
			FUNC1(dev, port, vlan);
	}
	return err;
}