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
typedef  int /*<<< orphan*/  u_long ;
struct malloc_type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (uintptr_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 

void *
FUNC6(void *addr, unsigned long size, struct malloc_type *mtp,
    int flags)
{
	void *newaddr;
	u_long old_size;

	/*
	 * Allocate the new block.  Force the allocation to be guarded
	 * as the original may have been guarded through random
	 * chance, and that should be preserved.
	 */
	if ((newaddr = FUNC1(size, flags)) == NULL)
		return (NULL);

	/* Copy over original contents. */
	old_size = *FUNC5(FUNC4((uintptr_t)addr));
	FUNC0(addr, newaddr, FUNC3(size, old_size));
	FUNC2(addr);
	return (newaddr);
}