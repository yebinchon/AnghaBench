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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_port_eth_proto {int /*<<< orphan*/  oper; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,int,int,struct mlx5e_port_eth_proto*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptys_extended_ethernet ; 

int FUNC3(struct mlx5_core_dev *mdev, u32 *speed)
{
	struct mlx5e_port_eth_proto eproto;
	bool ext;
	int err;

	ext = FUNC0(mdev, ptys_extended_ethernet);
	err = FUNC1(mdev, 1, ext, &eproto);
	if (err)
		goto out;

	*speed = FUNC2(mdev, eproto.oper);
	if (!(*speed))
		err = -EINVAL;

out:
	return err;
}