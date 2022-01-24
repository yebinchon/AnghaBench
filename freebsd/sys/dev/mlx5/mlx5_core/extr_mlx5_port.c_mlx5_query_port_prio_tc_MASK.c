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
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_REG_QTCT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int port_number ; 
 int /*<<< orphan*/  qtct_reg ; 
 int /*<<< orphan*/  tclass ; 

int FUNC5(struct mlx5_core_dev *mdev,
			    u8 prio, u8 *tc)
{
	u32 in[FUNC2(qtct_reg)];
	u32 out[FUNC2(qtct_reg)];
	int err;

	FUNC3(in, 0, sizeof(in));
	FUNC3(out, 0, sizeof(out));

	FUNC1(qtct_reg, in, port_number, 1);
	FUNC1(qtct_reg, in, prio, prio);

	err = FUNC4(mdev, in, sizeof(in), out,
				   sizeof(out), MLX5_REG_QTCT, 0, 0);
	if (!err)
		*tc = FUNC0(qtct_reg, out, tclass);

	return err;
}