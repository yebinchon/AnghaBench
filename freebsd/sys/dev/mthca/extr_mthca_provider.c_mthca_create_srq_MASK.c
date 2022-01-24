#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mthca_ucontext {int /*<<< orphan*/  db_tab; int /*<<< orphan*/  uar; } ;
struct ib_srq {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_5__ {TYPE_1__ ibmr; } ;
struct mthca_srq {struct ib_srq ibsrq; int /*<<< orphan*/  srqn; int /*<<< orphan*/  db_index; TYPE_2__ mr; } ;
struct mthca_create_srq {int /*<<< orphan*/  db_index; int /*<<< orphan*/  lkey; int /*<<< orphan*/  db_page; } ;
struct ib_udata {int dummy; } ;
struct ib_srq_init_attr {scalar_t__ srq_type; int /*<<< orphan*/  attr; } ;
struct ib_pd {int /*<<< orphan*/  device; TYPE_3__* uobject; } ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_6__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int ENOSYS ; 
 struct ib_srq* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IB_SRQT_BASIC ; 
 scalar_t__ FUNC1 (struct mthca_create_srq*,struct ib_udata*,int) ; 
 scalar_t__ FUNC2 (struct ib_udata*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mthca_srq*) ; 
 struct mthca_srq* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mthca_srq*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct mthca_srq*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ib_pd*) ; 
 struct mthca_ucontext* FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct ib_srq *FUNC12(struct ib_pd *pd,
				       struct ib_srq_init_attr *init_attr,
				       struct ib_udata *udata)
{
	struct mthca_create_srq ucmd;
	struct mthca_ucontext *context = NULL;
	struct mthca_srq *srq;
	int err;

	if (init_attr->srq_type != IB_SRQT_BASIC)
		return FUNC0(-ENOSYS);

	srq = FUNC4(sizeof *srq, GFP_KERNEL);
	if (!srq)
		return FUNC0(-ENOMEM);

	if (pd->uobject) {
		context = FUNC11(pd->uobject->context);

		if (FUNC1(&ucmd, udata, sizeof ucmd)) {
			err = -EFAULT;
			goto err_free;
		}

		err = FUNC7(FUNC9(pd->device), &context->uar,
					context->db_tab, ucmd.db_index,
					ucmd.db_page);

		if (err)
			goto err_free;

		srq->mr.ibmr.lkey = ucmd.lkey;
		srq->db_index     = ucmd.db_index;
	}

	err = FUNC5(FUNC9(pd->device), FUNC10(pd),
			      &init_attr->attr, srq);

	if (err && pd->uobject)
		FUNC8(FUNC9(pd->device), &context->uar,
				    context->db_tab, ucmd.db_index);

	if (err)
		goto err_free;

	if (context && FUNC2(udata, &srq->srqn, sizeof (__u32))) {
		FUNC6(FUNC9(pd->device), srq);
		err = -EFAULT;
		goto err_free;
	}

	return &srq->ibsrq;

err_free:
	FUNC3(srq);

	return FUNC0(err);
}