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
struct mlx5_ib_ucontext {int /*<<< orphan*/  uuari; } ;
struct TYPE_4__ {scalar_t__ umem; } ;
struct mlx5_ib_qp_base {TYPE_2__ ubuffer; } ;
struct mlx5_ib_qp {int /*<<< orphan*/  uuarn; int /*<<< orphan*/  db; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_3__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_ib_ucontext*,int /*<<< orphan*/ *) ; 
 struct mlx5_ib_ucontext* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ib_pd *pd, struct mlx5_ib_qp *qp,
			    struct mlx5_ib_qp_base *base)
{
	struct mlx5_ib_ucontext *context;

	context = FUNC3(pd->uobject->context);
	FUNC2(context, &qp->db);
	if (base->ubuffer.umem)
		FUNC1(base->ubuffer.umem);
	FUNC0(&context->uuari, qp->uuarn);
}