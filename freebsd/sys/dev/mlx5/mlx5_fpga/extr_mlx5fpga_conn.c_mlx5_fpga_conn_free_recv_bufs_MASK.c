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
struct TYPE_3__ {int size; int /*<<< orphan*/ ** bufs; } ;
struct TYPE_4__ {TYPE_1__ rq; } ;
struct mlx5_fpga_conn {TYPE_2__ qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_fpga_conn*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct mlx5_fpga_conn *conn)
{
	int ix;

	for (ix = 0; ix < conn->qp.rq.size; ix++) {
		if (!conn->qp.rq.bufs[ix])
			continue;
		FUNC1(conn, conn->qp.rq.bufs[ix]);
		FUNC0(conn->qp.rq.bufs[ix]);
		conn->qp.rq.bufs[ix] = NULL;
	}
}