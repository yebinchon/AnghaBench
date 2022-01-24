#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct mlx5_fw_page {int /*<<< orphan*/  dev; int /*<<< orphan*/  load_done; int /*<<< orphan*/  dma_addr; } ;
struct TYPE_3__ {int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_LOAD_ST_FAILURE ; 
 int /*<<< orphan*/  MLX5_LOAD_ST_SUCCESS ; 

__attribute__((used)) static void
FUNC5(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct mlx5_fw_page *fwp;
	uint8_t owned;

	fwp = (struct mlx5_fw_page *)arg;
	owned = FUNC3(fwp->dev);

	if (!owned)
		FUNC2(fwp->dev);

	if (error == 0) {
		FUNC0(nseg == 1, ("Number of segments is different from 1"));
		fwp->dma_addr = segs->ds_addr;
		fwp->load_done = MLX5_LOAD_ST_SUCCESS;
	} else {
		fwp->load_done = MLX5_LOAD_ST_FAILURE;
	}
	FUNC1(fwp->dev);

	if (!owned)
		FUNC4(fwp->dev);
}