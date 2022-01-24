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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
#define  MLX5_INTERFACE_PROTOCOL_ETH 129 
#define  MLX5_INTERFACE_PROTOCOL_IB 128 
 scalar_t__ MLX5_QCOUNTER_SETS_NETDEV ; 
 int /*<<< orphan*/  max_qp_cnt ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,int) ; 

__attribute__((used)) static u32 FUNC2(struct mlx5_core_dev *mdev,
					      int client_id)
{
	switch (client_id) {
	case MLX5_INTERFACE_PROTOCOL_IB:
		return (FUNC0(mdev, max_qp_cnt) -
			MLX5_QCOUNTER_SETS_NETDEV);
	case MLX5_INTERFACE_PROTOCOL_ETH:
		return MLX5_QCOUNTER_SETS_NETDEV;
	default:
		FUNC1(mdev, "Unknown Client: %d\n", client_id);
		return 0;
	}
}