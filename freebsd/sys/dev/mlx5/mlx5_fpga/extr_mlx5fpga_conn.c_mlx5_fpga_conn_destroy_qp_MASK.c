#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  bufs; } ;
struct TYPE_6__ {int /*<<< orphan*/  bufs; } ;
struct TYPE_8__ {int /*<<< orphan*/  wq_ctrl; TYPE_3__ rq; TYPE_2__ sq; int /*<<< orphan*/  mqp; } ;
struct mlx5_fpga_conn {TYPE_4__ qp; TYPE_1__* fdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mlx5_fpga_conn *conn)
{
	FUNC1(conn->fdev->mdev, &conn->qp.mqp);
	FUNC3(conn);
	FUNC2(conn);
	FUNC0(conn->qp.sq.bufs);
	FUNC0(conn->qp.rq.bufs);
	FUNC4(&conn->qp.wq_ctrl);
}