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
typedef  int u32 ;
struct TYPE_2__ {int sz_m1; } ;
struct mlx5e_cq {TYPE_1__ wq; } ;
struct mlx5_cqe64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static inline void
FUNC2(struct mlx5e_cq *cq, u32 cc, void *data)
{
	FUNC0(FUNC1(&cq->wq, cc & cq->wq.sz_m1),
	    data, sizeof(struct mlx5_cqe64));
}