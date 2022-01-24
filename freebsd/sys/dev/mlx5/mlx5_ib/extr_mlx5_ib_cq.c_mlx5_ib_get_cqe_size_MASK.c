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
struct mlx5_ib_dev {int dummy; } ;
struct mlx5_ib_cq {int cqe_size; } ;
struct ib_cq {int dummy; } ;

/* Variables and functions */
 struct mlx5_ib_cq* FUNC0 (struct ib_cq*) ; 

int FUNC1(struct mlx5_ib_dev *dev, struct ib_cq *ibcq)
{
	struct mlx5_ib_cq *cq;

	if (!ibcq)
		return 128;

	cq = FUNC0(ibcq);
	return cq->cqe_size;
}