#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5e_cq {int /*<<< orphan*/  wq; } ;
struct mlx5_cqe64 {int op_own; } ;

/* Variables and functions */
 int MLX5_CQE_OWNER_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mlx5_cqe64* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

struct mlx5_cqe64 *
FUNC4(struct mlx5e_cq *cq)
{
	struct mlx5_cqe64 *cqe;

	cqe = FUNC2(&cq->wq, FUNC1(&cq->wq));

	if ((cqe->op_own ^ FUNC3(&cq->wq)) & MLX5_CQE_OWNER_MASK)
		return (NULL);

	/* ensure cqe content is read after cqe ownership bit */
	FUNC0();

	return (cqe);
}