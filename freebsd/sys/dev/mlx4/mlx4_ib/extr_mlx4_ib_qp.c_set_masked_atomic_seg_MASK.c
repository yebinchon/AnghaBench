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
struct mlx4_wqe_masked_atomic_seg {void* compare_mask; void* compare; void* swap_add_mask; void* swap_add; } ;
struct ib_atomic_wr {int /*<<< orphan*/  compare_add_mask; int /*<<< orphan*/  compare_add; int /*<<< orphan*/  swap_mask; int /*<<< orphan*/  swap; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct mlx4_wqe_masked_atomic_seg *aseg,
				  struct ib_atomic_wr *wr)
{
	aseg->swap_add		= FUNC0(wr->swap);
	aseg->swap_add_mask	= FUNC0(wr->swap_mask);
	aseg->compare		= FUNC0(wr->compare_add);
	aseg->compare_mask	= FUNC0(wr->compare_add_mask);
}