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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_dev {int /*<<< orphan*/  mdev; } ;
struct ib_device {int dummy; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int IB_LINK_LAYER_INFINIBAND ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int MLX5_ROCE_L3_TYPE_IPV4_CAP ; 
 int MLX5_ROCE_L3_TYPE_IPV6_CAP ; 
 int MLX5_ROCE_VERSION_1_CAP ; 
 int MLX5_ROCE_VERSION_2_CAP ; 
 int /*<<< orphan*/  RDMA_CORE_PORT_IBA_IB ; 
 int /*<<< orphan*/  RDMA_CORE_PORT_IBA_ROCE ; 
 int /*<<< orphan*/  RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP ; 
 int /*<<< orphan*/  l3_type ; 
 int FUNC1 (struct ib_device*,int) ; 
 int /*<<< orphan*/  roce_version ; 
 struct mlx5_ib_dev* FUNC2 (struct ib_device*) ; 

__attribute__((used)) static u32 FUNC3(struct ib_device *ibdev)
{
	struct mlx5_ib_dev *dev = FUNC2(ibdev);
	enum rdma_link_layer ll = FUNC1(ibdev, 1);
	u8 l3_type_cap = FUNC0(dev->mdev, l3_type);
	u8 roce_version_cap = FUNC0(dev->mdev, roce_version);
	u32 ret = 0;

	if (ll == IB_LINK_LAYER_INFINIBAND)
		return RDMA_CORE_PORT_IBA_IB;

	if (!(l3_type_cap & MLX5_ROCE_L3_TYPE_IPV4_CAP))
		return 0;

	if (!(l3_type_cap & MLX5_ROCE_L3_TYPE_IPV6_CAP))
		return 0;

	if (roce_version_cap & MLX5_ROCE_VERSION_1_CAP)
		ret |= RDMA_CORE_PORT_IBA_ROCE;

	if (roce_version_cap & MLX5_ROCE_VERSION_2_CAP)
		ret |= RDMA_CORE_PORT_IBA_ROCE_UDP_ENCAP;

	return ret;
}