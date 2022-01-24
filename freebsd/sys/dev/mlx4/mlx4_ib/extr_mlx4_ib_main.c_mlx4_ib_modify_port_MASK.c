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
typedef  size_t u8 ;
typedef  int u32 ;
struct mlx4_ib_dev {int /*<<< orphan*/  cap_mask_mutex; TYPE_1__* dev; } ;
struct ib_port_modify {int set_port_cap_mask; int clr_port_cap_mask; } ;
struct ib_port_attr {int port_cap_flags; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {scalar_t__* port_type; } ;
struct TYPE_3__ {TYPE_2__ caps; } ;

/* Variables and functions */
 int IB_PORT_RESET_QKEY_CNTR ; 
 scalar_t__ MLX4_PORT_TYPE_ETH ; 
 int FUNC0 (struct mlx4_ib_dev*,size_t,int,int) ; 
 int FUNC1 (struct ib_device*,size_t,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx4_ib_dev* FUNC4 (struct ib_device*) ; 

__attribute__((used)) static int FUNC5(struct ib_device *ibdev, u8 port, int mask,
			       struct ib_port_modify *props)
{
	struct mlx4_ib_dev *mdev = FUNC4(ibdev);
	u8 is_eth = mdev->dev->caps.port_type[port] == MLX4_PORT_TYPE_ETH;
	struct ib_port_attr attr;
	u32 cap_mask;
	int err;

	/* return OK if this is RoCE. CM calls ib_modify_port() regardless
	 * of whether port link layer is ETH or IB. For ETH ports, qkey
	 * violations and port capabilities are not meaningful.
	 */
	if (is_eth)
		return 0;

	FUNC2(&mdev->cap_mask_mutex);

	err = FUNC1(ibdev, port, &attr);
	if (err)
		goto out;

	cap_mask = (attr.port_cap_flags | props->set_port_cap_mask) &
		~props->clr_port_cap_mask;

	err = FUNC0(mdev, port,
			       !!(mask & IB_PORT_RESET_QKEY_CNTR),
			       cap_mask);

out:
	FUNC3(&FUNC4(ibdev)->cap_mask_mutex);
	return err;
}