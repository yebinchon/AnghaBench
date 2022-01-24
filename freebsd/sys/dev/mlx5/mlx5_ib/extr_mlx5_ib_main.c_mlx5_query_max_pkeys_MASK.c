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
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_ib_dev {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
#define  MLX5_VPORT_ACCESS_METHOD_HCA 130 
#define  MLX5_VPORT_ACCESS_METHOD_MAD 129 
#define  MLX5_VPORT_ACCESS_METHOD_NIC 128 
 int FUNC1 (struct ib_device*) ; 
 int FUNC2 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pkey_table_size ; 
 struct mlx5_ib_dev* FUNC4 (struct ib_device*) ; 

__attribute__((used)) static int FUNC5(struct ib_device *ibdev,
				u16 *max_pkeys)
{
	struct mlx5_ib_dev *dev = FUNC4(ibdev);
	struct mlx5_core_dev *mdev = dev->mdev;

	switch (FUNC1(ibdev)) {
	case MLX5_VPORT_ACCESS_METHOD_MAD:
		return FUNC2(ibdev, max_pkeys);

	case MLX5_VPORT_ACCESS_METHOD_HCA:
	case MLX5_VPORT_ACCESS_METHOD_NIC:
		*max_pkeys = FUNC3(FUNC0(mdev,
						pkey_table_size));
		return 0;

	default:
		return -EINVAL;
	}
}