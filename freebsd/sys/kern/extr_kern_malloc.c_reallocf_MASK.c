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
 int /*<<< orphan*/  FUNC0 (void*,struct malloc_type*) ; 
 void* FUNC1 (void*,size_t,struct malloc_type*,int) ; 

void *
FUNC2(void *addr, size_t size, struct malloc_type *mtp, int flags)
{
	void *mem;

	if ((mem = FUNC1(addr, size, mtp, flags)) == NULL)
		FUNC0(addr, mtp);
	return (mem);
}