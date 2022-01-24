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
struct mlx5_core_dev {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_SENSOR_FW_SYND_RFR ; 
 int /*<<< orphan*/  MLX5_SENSOR_NIC_DISABLED ; 
 int /*<<< orphan*/  MLX5_SENSOR_NIC_SW_RESET ; 
 int /*<<< orphan*/  MLX5_SENSOR_NO_ERR ; 
 int /*<<< orphan*/  MLX5_SENSOR_PCI_COMM_ERR ; 
 int /*<<< orphan*/  MLX5_SENSOR_PCI_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC2 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC3 (struct mlx5_core_dev*) ; 
 scalar_t__ FUNC4 (struct mlx5_core_dev*) ; 

__attribute__((used)) static u32 FUNC5(struct mlx5_core_dev *dev)
{
	if (FUNC4(dev))
		return MLX5_SENSOR_PCI_COMM_ERR;
	if (FUNC0(dev->pdev))
		return MLX5_SENSOR_PCI_ERR;
	if (FUNC2(dev))
		return MLX5_SENSOR_NIC_DISABLED;
	if (FUNC3(dev))
		return MLX5_SENSOR_NIC_SW_RESET;
	if (FUNC1(dev))
		return MLX5_SENSOR_FW_SYND_RFR;

	return MLX5_SENSOR_NO_ERR;
}