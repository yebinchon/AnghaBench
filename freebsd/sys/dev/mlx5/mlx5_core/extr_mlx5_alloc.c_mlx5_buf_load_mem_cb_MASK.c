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
struct mlx5_buf {int /*<<< orphan*/  dev; int /*<<< orphan*/  load_done; int /*<<< orphan*/ * page_list; } ;
struct TYPE_3__ {scalar_t__ ds_len; int /*<<< orphan*/  ds_addr; } ;
typedef  TYPE_1__ bus_dma_segment_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5_LOAD_ST_FAILURE ; 
 int /*<<< orphan*/  MLX5_LOAD_ST_SUCCESS ; 
 scalar_t__ PAGE_SIZE ; 

__attribute__((used)) static void
FUNC5(void *arg, bus_dma_segment_t *segs, int nseg, int error)
{
	struct mlx5_buf *buf;
	uint8_t owned;
	int x;

	buf = (struct mlx5_buf *)arg;
	owned = FUNC3(buf->dev);

	if (!owned)
		FUNC2(buf->dev);

	if (error == 0) {
		for (x = 0; x != nseg; x++) {
			buf->page_list[x] = segs[x].ds_addr;
			FUNC0(segs[x].ds_len == PAGE_SIZE, ("Invalid segment size"));
		}
		buf->load_done = MLX5_LOAD_ST_SUCCESS;
	} else {
		buf->load_done = MLX5_LOAD_ST_FAILURE;
	}
	FUNC1(buf->dev);

	if (!owned)
		FUNC4(buf->dev);
}