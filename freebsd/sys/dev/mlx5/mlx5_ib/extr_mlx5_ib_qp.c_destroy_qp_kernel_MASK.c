#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  wrid; } ;
struct TYPE_10__ {int /*<<< orphan*/  wr_data; int /*<<< orphan*/  wrid; int /*<<< orphan*/  w_list; int /*<<< orphan*/  wqe_head; } ;
struct mlx5_ib_qp {TYPE_3__* bf; int /*<<< orphan*/  buf; TYPE_1__ rq; TYPE_4__ sq; int /*<<< orphan*/  db; } ;
struct mlx5_ib_dev {TYPE_5__* mdev; } ;
struct TYPE_8__ {int /*<<< orphan*/  uuari; } ;
struct TYPE_11__ {TYPE_2__ priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  uuarn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp)
{
	FUNC3(dev->mdev, &qp->db);
	FUNC1(qp->sq.wqe_head);
	FUNC1(qp->sq.w_list);
	FUNC1(qp->sq.wrid);
	FUNC1(qp->sq.wr_data);
	FUNC1(qp->rq.wrid);
	FUNC2(dev->mdev, &qp->buf);
	FUNC0(&dev->mdev->priv.uuari, qp->bf->uuarn);
}