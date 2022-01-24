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
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  in ;

/* Variables and functions */
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_REG_QETCR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ets ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qetc_reg ; 

__attribute__((used)) static int FUNC4(struct mlx5_core_dev *mdev, u32 *out,
				     int outlen)
{
	u32 in[FUNC1(qetc_reg)];

	if (!FUNC0(mdev, ets))
		return -ENOTSUPP;

	FUNC2(in, 0, sizeof(in));
	return FUNC3(mdev, in, sizeof(in), out, outlen,
				    MLX5_REG_QETCR, 0, 0);
}