#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_ib_dev {TYPE_6__* mdev; } ;
struct TYPE_20__ {scalar_t__ db; } ;
struct TYPE_18__ {int npages; scalar_t__ page_shift; } ;
struct TYPE_13__ {TYPE_5__ buf; } ;
struct TYPE_14__ {int cqe_sz; scalar_t__ arm_db; scalar_t__ set_ci_db; } ;
struct mlx5_ib_cq {TYPE_7__ db; TYPE_10__ buf; TYPE_1__ mcq; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_16__ {TYPE_2__* uars; } ;
struct TYPE_17__ {TYPE_3__ uuari; } ;
struct TYPE_19__ {TYPE_4__ priv; } ;
struct TYPE_15__ {int index; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ MLX5_ADAPTER_PAGE_SHIFT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mlx5_ib_dev*,TYPE_10__*,int,int) ; 
 int /*<<< orphan*/ * cq_context ; 
 int /*<<< orphan*/  create_cq_in ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_dev*,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_ib_cq*,TYPE_10__*) ; 
 int /*<<< orphan*/  log_page_size ; 
 int FUNC7 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct mlx5_ib_dev *dev, struct mlx5_ib_cq *cq,
			    int entries, int cqe_size,
			    u32 **cqb, int *index, int *inlen)
{
	__be64 *pas;
	void *cqc;
	int err;

	err = FUNC7(dev->mdev, &cq->db);
	if (err)
		return err;

	cq->mcq.set_ci_db  = cq->db.db;
	cq->mcq.arm_db     = cq->db.db + 1;
	cq->mcq.cqe_sz = cqe_size;

	err = FUNC4(dev, &cq->buf, entries, cqe_size);
	if (err)
		goto err_db;

	FUNC6(cq, &cq->buf);

	*inlen = FUNC3(create_cq_in) +
		 FUNC1(create_cq_in, pas[0]) * cq->buf.buf.npages;
	*cqb = FUNC10(*inlen);
	if (!*cqb) {
		err = -ENOMEM;
		goto err_buf;
	}

	pas = (__be64 *)FUNC0(create_cq_in, *cqb, pas);
	FUNC9(&cq->buf.buf, pas);

	cqc = FUNC0(create_cq_in, *cqb, cq_context);
	FUNC2(cqc, cqc, log_page_size,
		 cq->buf.buf.page_shift - MLX5_ADAPTER_PAGE_SHIFT);

	*index = dev->mdev->priv.uuari.uars[0].index;

	return 0;

err_buf:
	FUNC5(dev, &cq->buf);

err_db:
	FUNC8(dev->mdev, &cq->db);
	return err;
}