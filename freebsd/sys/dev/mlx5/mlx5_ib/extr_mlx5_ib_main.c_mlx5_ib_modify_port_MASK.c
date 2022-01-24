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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct mlx5_ib_dev {int /*<<< orphan*/  cap_mask_mutex; int /*<<< orphan*/  mdev; } ;
struct ib_port_modify {int set_port_cap_mask; int clr_port_cap_mask; } ;
struct ib_port_attr {int port_cap_flags; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_LINK_LAYER_ETHERNET ; 
 scalar_t__ FUNC0 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct mlx5_ib_dev* FUNC5 (struct ib_device*) ; 

__attribute__((used)) static int FUNC6(struct ib_device *ibdev, u8 port, int mask,
			       struct ib_port_modify *props)
{
	struct mlx5_ib_dev *dev = FUNC5(ibdev);
	struct ib_port_attr attr;
	u32 tmp;
	int err;

	/*
	 * CM layer calls ib_modify_port() regardless of the link
	 * layer. For Ethernet ports, qkey violation and Port
	 * capabilities are meaningless.
	 */
	if (FUNC0(ibdev, port) == IB_LINK_LAYER_ETHERNET)
		return 0;

	FUNC3(&dev->cap_mask_mutex);

	err = FUNC1(ibdev, port, &attr);
	if (err)
		goto out;

	tmp = (attr.port_cap_flags | props->set_port_cap_mask) &
		~props->clr_port_cap_mask;

	err = FUNC2(dev->mdev, port, tmp);

out:
	FUNC4(&dev->cap_mask_mutex);
	return err;
}