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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct TYPE_5__ {int /*<<< orphan*/  switch_sem; scalar_t__ use_events; } ;
struct TYPE_6__ {TYPE_2__ cmd; } ;
struct TYPE_4__ {int state; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 int MLX4_DEVICE_STATE_INTERNAL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int FUNC4 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_dev*) ; 
 TYPE_3__* FUNC7 (struct mlx4_dev*) ; 
 int FUNC8 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

int FUNC11(struct mlx4_dev *dev, u64 in_param, u64 *out_param,
	       int out_is_imm, u32 in_modifier, u8 op_modifier,
	       u16 op, unsigned long timeout, int native)
{
	if (FUNC9(dev->persist->pdev))
		return FUNC2(dev, op, op_modifier, -EIO);

	if (!FUNC6(dev) || (native && FUNC5(dev))) {
		int ret;

		if (dev->persist->state & MLX4_DEVICE_STATE_INTERNAL_ERROR)
			return FUNC4(dev, op,
							  op_modifier);
		FUNC0(&FUNC7(dev)->cmd.switch_sem);
		if (FUNC7(dev)->cmd.use_events)
			ret = FUNC3(dev, in_param, out_param,
					    out_is_imm, in_modifier,
					    op_modifier, op, timeout);
		else
			ret = FUNC1(dev, in_param, out_param,
					    out_is_imm, in_modifier,
					    op_modifier, op, timeout);

		FUNC10(&FUNC7(dev)->cmd.switch_sem);
		return ret;
	}
	return FUNC8(dev, in_param, out_param, out_is_imm,
			      in_modifier, op_modifier, op, timeout);
}