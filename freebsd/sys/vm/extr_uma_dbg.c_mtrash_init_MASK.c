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
struct malloc_type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int /*<<< orphan*/ *) ; 

int
FUNC2(void *mem, int size, int flags)
{
	struct malloc_type **ksp;

#ifdef DEBUG_MEMGUARD
	if (is_memguard_addr(mem))
		return (0);
#endif

	FUNC1(mem, size, NULL);

	ksp = (struct malloc_type **)mem;
	ksp += (size / sizeof(struct malloc_type *)) - 1;
	*ksp = NULL;
	return (0);
}