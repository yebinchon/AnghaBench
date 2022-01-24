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
typedef  int u_int ;
struct ttm_buffer_object {int /*<<< orphan*/  list_kref; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*) ; 

void FUNC3(struct ttm_buffer_object *bo, int count,
			 bool never_free)
{
	u_int old;

	old = FUNC0(&bo->list_kref, -count);
	if (old <= count) {
		if (never_free)
			FUNC1("ttm_bo_ref_buf");
		FUNC2(bo);
	}
}