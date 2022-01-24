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
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_net_trans_rule_id { ____Placeholder_mlx4_net_trans_rule_id } mlx4_net_trans_rule_id ;

/* Variables and functions */
 int EINVAL ; 
 int MLX4_NET_TRANS_RULE_NUM ; 
 int* __sw_id_hw ; 
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,int) ; 

int FUNC1(struct mlx4_dev *dev,
				  enum mlx4_net_trans_rule_id id)
{
	if (id >= MLX4_NET_TRANS_RULE_NUM) {
		FUNC0(dev, "Invalid network rule id. id = %d\n", id);
		return -EINVAL;
	}
	return __sw_id_hw[id];
}