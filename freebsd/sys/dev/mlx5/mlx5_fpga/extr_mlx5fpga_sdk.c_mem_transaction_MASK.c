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
struct mlx5_fpga_device {scalar_t__ shell_conn; } ;
struct TYPE_2__ {size_t size; int direction; int /*<<< orphan*/  complete1; scalar_t__ conn; int /*<<< orphan*/  addr; void* data; } ;
struct mem_transfer {scalar_t__ status; int /*<<< orphan*/  comp; TYPE_1__ t; } ;
typedef  enum mlx5_fpga_direction { ____Placeholder_mlx5_fpga_direction } mlx5_fpga_direction ;

/* Variables and functions */
 int EIO ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mem_complete ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_device*,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct mlx5_fpga_device *fdev, size_t size, u64 addr,
			   void *buf, enum mlx5_fpga_direction direction)
{
	int ret;
	struct mem_transfer xfer;

	if (!fdev->shell_conn) {
		ret = -ENOTCONN;
		goto out;
	}

	xfer.t.data = buf;
	xfer.t.size = size;
	xfer.t.addr = addr;
	xfer.t.conn = fdev->shell_conn;
	xfer.t.direction = direction;
	xfer.t.complete1 = mem_complete;
	FUNC0(&xfer.comp);
	ret = FUNC2(&xfer.t);
	if (ret) {
		FUNC1(fdev, "Transfer execution failed: %d\n", ret);
		goto out;
	}
	FUNC3(&xfer.comp);
	if (xfer.status != 0)
		ret = -EIO;

out:
	return ret;
}