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
struct ttm_buffer_object {int /*<<< orphan*/  reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_buffer_object*) ; 

void FUNC3(struct ttm_buffer_object *bo)
{
	FUNC1(bo);
	FUNC0(&bo->reserved, 0);
	FUNC2(bo);
}