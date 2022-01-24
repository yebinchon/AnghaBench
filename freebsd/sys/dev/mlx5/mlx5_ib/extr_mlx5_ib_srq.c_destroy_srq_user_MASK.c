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
struct mlx5_ib_srq {int /*<<< orphan*/  umem; int /*<<< orphan*/  db; } ;
struct ib_pd {TYPE_1__* uobject; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ib_pd *pd, struct mlx5_ib_srq *srq)
{
	FUNC1(FUNC2(pd->uobject->context), &srq->db);
	FUNC0(srq->umem);
}