#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cc; } ;
struct TYPE_5__ {TYPE_2__ wq; int /*<<< orphan*/  tasklet; } ;
struct mlx5_fpga_conn {TYPE_1__ cq; int /*<<< orphan*/  fdev; } ;
struct mlx5_cqe64 {int dummy; } ;

/* Variables and functions */
 struct mlx5_cqe64* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_fpga_conn*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_fpga_conn*,struct mlx5_cqe64*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static inline void FUNC8(struct mlx5_fpga_conn *conn,
				       unsigned int budget)
{
	struct mlx5_cqe64 *cqe;

	while (budget) {
		cqe = FUNC0(&conn->cq.wq);
		if (!cqe)
			break;

		budget--;
		FUNC1(&conn->cq.wq);
		FUNC4(conn, cqe);
		FUNC2(&conn->cq.wq);
	}
	if (!budget) {
		FUNC6(&conn->cq.tasklet);
		return;
	}

	FUNC5(conn->fdev, "Re-arming CQ with cc# %u\n", conn->cq.wq.cc);
	/* ensure cq space is freed before enabling more cqes */
	FUNC7();
	FUNC3(conn);
}