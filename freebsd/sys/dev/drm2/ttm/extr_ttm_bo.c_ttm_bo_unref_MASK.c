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
struct ttm_buffer_object {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*) ; 

void FUNC2(struct ttm_buffer_object **p_bo)
{
	struct ttm_buffer_object *bo = *p_bo;

	*p_bo = NULL;
	if (FUNC0(&bo->kref))
		FUNC1(bo);
}