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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx5_fw_page {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  func_id; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 struct mlx5_fw_page* FUNC2 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fw_page*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fw_page*) ; 
 int FUNC5 (struct mlx5_core_dev*,struct mlx5_fw_page*) ; 

__attribute__((used)) static int
FUNC6(struct mlx5_core_dev *dev, u64 *addr, u16 func_id)
{
	struct mlx5_fw_page *fwp;
	int err;

	fwp = FUNC2(dev, GFP_KERNEL, 1);
	if (fwp == NULL)
		return (-ENOMEM);

	fwp->func_id = func_id;

	FUNC0(dev);
	err = FUNC5(dev, fwp);
	FUNC1(dev);

	if (err != 0) {
		FUNC3(fwp);
	} else {
		/* make sure cached data is cleaned */
		FUNC4(fwp);

		/* store DMA address */
		*addr = fwp->dma_addr;
	}
	return (err);
}