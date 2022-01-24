#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {scalar_t__ res; } ;
struct mlx5_core_srq {TYPE_1__ common; } ;
struct mlx5_core_dev {int /*<<< orphan*/  issi; } ;

/* Variables and functions */
 scalar_t__ MLX5_RES_XSRQ ; 
 int FUNC0 (struct mlx5_core_dev*,struct mlx5_core_srq*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mlx5_core_dev*,struct mlx5_core_srq*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mlx5_core_dev*,struct mlx5_core_srq*,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx5_core_dev *dev, struct mlx5_core_srq *srq,
		      u16 lwm, int is_srq)
{
	if (!dev->issi)
		return FUNC1(dev, srq, lwm, is_srq);
	else if (srq->common.res == MLX5_RES_XSRQ)
		return FUNC2(dev, srq, lwm);
	else
		return FUNC0(dev, srq, lwm);
}