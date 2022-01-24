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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; int /*<<< orphan*/  ib_dev; } ;
struct ib_gid_attr {scalar_t__ gid_type; int /*<<< orphan*/  ndev; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 scalar_t__ IB_GID_TYPE_ROCE_UDP_ENCAP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,union ib_gid*,struct ib_gid_attr*) ; 
 int /*<<< orphan*/  r_roce_min_src_udp_port ; 

__be16 FUNC4(struct mlx5_ib_dev *dev, u8 port_num,
			       int index)
{
	struct ib_gid_attr attr;
	union ib_gid gid;

	if (FUNC3(&dev->ib_dev, port_num, index, &gid, &attr))
		return 0;

	if (!attr.ndev)
		return 0;

	FUNC2(attr.ndev);

	if (attr.gid_type != IB_GID_TYPE_ROCE_UDP_ENCAP)
		return 0;

	return FUNC1(FUNC0(dev->mdev, r_roce_min_src_udp_port));
}