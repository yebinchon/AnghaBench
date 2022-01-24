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
struct mlx5e_rq {int /*<<< orphan*/  mtx; int /*<<< orphan*/  watchdog; scalar_t__ enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_RQC_STATE_ERR ; 
 int /*<<< orphan*/  MLX5_RQC_STATE_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_rq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct mlx5e_rq *rq)
{
	FUNC2(&rq->mtx);
	rq->enabled = 0;
	FUNC0(&rq->watchdog);
	FUNC3(&rq->mtx);

	FUNC1(rq, MLX5_RQC_STATE_RDY, MLX5_RQC_STATE_ERR);
}