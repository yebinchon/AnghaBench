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
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct mlx5e_rq {TYPE_1__ dim; int /*<<< orphan*/  cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_rq*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_rq*) ; 

__attribute__((used)) static void
FUNC4(struct mlx5e_rq *rq)
{

	FUNC3(rq);
	FUNC1(&rq->cq);
	FUNC0(&rq->dim.work);
	FUNC2(rq);
}