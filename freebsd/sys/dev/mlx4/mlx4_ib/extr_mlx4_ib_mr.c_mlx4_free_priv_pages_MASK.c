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
struct mlx4_ib_mr {int /*<<< orphan*/ * pages; int /*<<< orphan*/  page_map_size; int /*<<< orphan*/  page_map; TYPE_1__ ibmr; } ;
struct ib_device {int /*<<< orphan*/  dma_device; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void
FUNC2(struct mlx4_ib_mr *mr)
{
	if (mr->pages) {
		struct ib_device *device = mr->ibmr.device;

		FUNC0(device->dma_device, mr->page_map,
				 mr->page_map_size, DMA_TO_DEVICE);
		FUNC1((unsigned long)mr->pages);
		mr->pages = NULL;
	}
}