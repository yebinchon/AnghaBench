#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mlx5_fpga_dma_buf {int /*<<< orphan*/  list; } ;
struct TYPE_3__ {scalar_t__ pc; scalar_t__ cc; scalar_t__ size; int /*<<< orphan*/  lock; int /*<<< orphan*/  backlog; } ;
struct TYPE_4__ {TYPE_1__ sq; int /*<<< orphan*/  active; } ;
struct mlx5_fpga_conn {TYPE_2__ qp; } ;

/* Variables and functions */
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_conn*,struct mlx5_fpga_dma_buf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct mlx5_fpga_conn *conn,
			struct mlx5_fpga_dma_buf *buf)
{
	unsigned long flags;
	int err;

	if (!conn->qp.active)
		return -ENOTCONN;

	err = FUNC1(conn, buf);
	if (err)
		return err;

	FUNC3(&conn->qp.sq.lock, flags);

	if (conn->qp.sq.pc - conn->qp.sq.cc >= conn->qp.sq.size) {
		FUNC0(&buf->list, &conn->qp.sq.backlog);
		goto out_unlock;
	}

	FUNC2(conn, buf);

out_unlock:
	FUNC4(&conn->qp.sq.lock, flags);
	return err;
}