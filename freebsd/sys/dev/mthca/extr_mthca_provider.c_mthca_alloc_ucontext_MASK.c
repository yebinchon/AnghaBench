#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ib_ucontext {int dummy; } ;
struct mthca_ucontext {struct ib_ucontext ibucontext; scalar_t__ reg_mr_warned; int /*<<< orphan*/  uar; int /*<<< orphan*/  db_tab; } ;
struct mthca_alloc_ucontext_resp {scalar_t__ uarc_size; int /*<<< orphan*/  qp_tab_size; } ;
struct ib_udata {int dummy; } ;
struct ib_device {int dummy; } ;
struct TYPE_10__ {scalar_t__ uarc_size; } ;
struct TYPE_9__ {int /*<<< orphan*/  num_qps; } ;
struct TYPE_11__ {TYPE_2__ uar_table; TYPE_1__ limits; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EFAULT ; 
 int ENOMEM ; 
 struct ib_ucontext* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ib_udata*,struct mthca_alloc_ucontext_resp*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_ucontext*) ; 
 struct mthca_ucontext* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mthca_alloc_ucontext_resp*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 int FUNC10 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (struct ib_device*) ; 

__attribute__((used)) static struct ib_ucontext *FUNC13(struct ib_device *ibdev,
						struct ib_udata *udata)
{
	struct mthca_alloc_ucontext_resp uresp;
	struct mthca_ucontext           *context;
	int                              err;

	if (!(FUNC12(ibdev)->active))
		return FUNC0(-EAGAIN);

	FUNC6(&uresp, 0, sizeof uresp);

	uresp.qp_tab_size = FUNC12(ibdev)->limits.num_qps;
	if (FUNC9(FUNC12(ibdev)))
		uresp.uarc_size = FUNC12(ibdev)->uar_table.uarc_size;
	else
		uresp.uarc_size = 0;

	context = FUNC5(sizeof *context, GFP_KERNEL);
	if (!context)
		return FUNC0(-ENOMEM);

	err = FUNC10(FUNC12(ibdev), &context->uar);
	if (err) {
		FUNC4(context);
		return FUNC0(err);
	}

	context->db_tab = FUNC8(FUNC12(ibdev));
	if (FUNC1(context->db_tab)) {
		err = FUNC2(context->db_tab);
		FUNC11(FUNC12(ibdev), &context->uar);
		FUNC4(context);
		return FUNC0(err);
	}

	if (FUNC3(udata, &uresp, sizeof uresp)) {
		FUNC7(FUNC12(ibdev), &context->uar, context->db_tab);
		FUNC11(FUNC12(ibdev), &context->uar);
		FUNC4(context);
		return FUNC0(-EFAULT);
	}

	context->reg_mr_warned = 0;

	return &context->ibucontext;
}