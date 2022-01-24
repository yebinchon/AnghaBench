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
struct TYPE_2__ {int /*<<< orphan*/  cqe_sz; } ;
struct mlx5_ib_cq {TYPE_1__ mcq; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(struct mlx5_ib_cq *cq, int n)
{
	return FUNC0(&cq->buf, n, cq->mcq.cqe_sz);
}