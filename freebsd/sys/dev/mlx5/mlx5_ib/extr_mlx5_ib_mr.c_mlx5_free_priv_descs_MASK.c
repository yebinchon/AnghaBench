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
struct TYPE_2__ {struct ib_device* device; } ;
struct mlx5_ib_mr {int max_descs; int desc_size; int /*<<< orphan*/ * descs; int /*<<< orphan*/  descs_alloc; int /*<<< orphan*/  desc_map; TYPE_1__ ibmr; } ;
struct ib_device {int /*<<< orphan*/  dma_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct mlx5_ib_mr *mr)
{
	if (mr->descs) {
		struct ib_device *device = mr->ibmr.device;
		int size = mr->max_descs * mr->desc_size;

		FUNC0(device->dma_device, mr->desc_map,
				 size, DMA_TO_DEVICE);
		FUNC1(mr->descs_alloc);
		mr->descs = NULL;
	}
}