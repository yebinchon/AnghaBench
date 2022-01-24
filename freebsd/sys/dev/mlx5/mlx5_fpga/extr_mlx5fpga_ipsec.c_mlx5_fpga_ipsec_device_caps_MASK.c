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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_fpga_device {TYPE_1__* ipsec; } ;
struct mlx5_core_dev {struct mlx5_fpga_device* fpga; } ;
struct TYPE_2__ {int /*<<< orphan*/  caps; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_ACCEL_IPSEC_DEVICE ; 
 int /*<<< orphan*/  MLX5_ACCEL_IPSEC_ESP ; 
 int /*<<< orphan*/  MLX5_ACCEL_IPSEC_IPV6 ; 
 int /*<<< orphan*/  MLX5_ACCEL_IPSEC_LSO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  esp ; 
 int /*<<< orphan*/  ipsec_extended_cap ; 
 int /*<<< orphan*/  ipv6 ; 
 int /*<<< orphan*/  lso ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*) ; 

u32 FUNC2(struct mlx5_core_dev *mdev)
{
	struct mlx5_fpga_device *fdev = mdev->fpga;
	u32 ret = 0;

	if (FUNC1(mdev))
		ret |= MLX5_ACCEL_IPSEC_DEVICE;
	else
		return ret;

	if (!fdev->ipsec)
		return ret;

	if (FUNC0(ipsec_extended_cap, fdev->ipsec->caps, esp))
		ret |= MLX5_ACCEL_IPSEC_ESP;

	if (FUNC0(ipsec_extended_cap, fdev->ipsec->caps, ipv6))
		ret |= MLX5_ACCEL_IPSEC_IPV6;

	if (FUNC0(ipsec_extended_cap, fdev->ipsec->caps, lso))
		ret |= MLX5_ACCEL_IPSEC_LSO;

	return ret;
}