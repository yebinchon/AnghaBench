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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {struct device* dma_device; } ;
struct mlx5_ib_dev {TYPE_1__ ib_dev; } ;
struct ib_umem {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5_IB_MTT_PRESENT ; 
 scalar_t__ MLX5_UMR_ALIGN ; 
 int /*<<< orphan*/  MLX5_UMR_MTT_ALIGNMENT ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_ib_dev*,struct ib_umem*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct mlx5_ib_dev *dev, struct ib_umem *umem,
			  int npages, int page_shift, int *size,
			  __be64 **mr_pas, dma_addr_t *dma)
{
	__be64 *pas;
	struct device *ddev = dev->ib_dev.dma_device;

	/*
	 * UMR copies MTTs in units of MLX5_UMR_MTT_ALIGNMENT bytes.
	 * To avoid copying garbage after the pas array, we allocate
	 * a little more.
	 */
	*size = FUNC0(sizeof(u64) * npages, MLX5_UMR_MTT_ALIGNMENT);
	*mr_pas = FUNC5(*size + MLX5_UMR_ALIGN - 1, GFP_KERNEL);
	if (!(*mr_pas))
		return -ENOMEM;

	pas = FUNC1(*mr_pas, MLX5_UMR_ALIGN);
	FUNC7(dev, umem, page_shift, pas, MLX5_IB_MTT_PRESENT);
	/* Clear padding after the actual pages. */
	FUNC6(pas + npages, 0, *size - npages * sizeof(u64));

	*dma = FUNC2(ddev, pas, *size, DMA_TO_DEVICE);
	if (FUNC3(ddev, *dma)) {
		FUNC4(*mr_pas);
		return -ENOMEM;
	}

	return 0;
}