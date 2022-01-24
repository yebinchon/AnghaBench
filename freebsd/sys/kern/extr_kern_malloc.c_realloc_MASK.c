#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  TYPE_2__* uma_slab_t ;
struct malloc_type {scalar_t__ ks_magic; } ;
struct TYPE_7__ {scalar_t__ td_critnest; } ;
struct TYPE_6__ {int us_flags; unsigned long us_size; TYPE_1__* us_keg; } ;
struct TYPE_5__ {unsigned long uk_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned long MINALLOCSIZE ; 
 scalar_t__ M_MAGIC ; 
 unsigned long REALLOC_FRACTION ; 
 scalar_t__ FUNC1 () ; 
 int UMA_SLAB_MALLOC ; 
 int UMA_SLAB_MASK ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,int /*<<< orphan*/ ) ; 
 TYPE_4__* curthread ; 
 int /*<<< orphan*/  FUNC3 (void*,struct malloc_type*) ; 
 scalar_t__ FUNC4 (void*) ; 
 void* FUNC5 (size_t,struct malloc_type*,int) ; 
 void* FUNC6 (void*,size_t,struct malloc_type*,int) ; 
 int /*<<< orphan*/  FUNC7 (size_t,unsigned long) ; 
 unsigned long FUNC8 (void*) ; 
 TYPE_2__* FUNC9 (int) ; 

void *
FUNC10(void *addr, size_t size, struct malloc_type *mtp, int flags)
{
	uma_slab_t slab;
	unsigned long alloc;
	void *newaddr;

	FUNC0(mtp->ks_magic == M_MAGIC,
	    ("realloc: bad malloc type magic"));
	FUNC0(curthread->td_critnest == 0 || FUNC1(),
	    ("realloc: called with spinlock or critical section held"));

	/* realloc(NULL, ...) is equivalent to malloc(...) */
	if (addr == NULL)
		return (FUNC5(size, mtp, flags));

	/*
	 * XXX: Should report free of old memory and alloc of new memory to
	 * per-CPU stats.
	 */

#ifdef DEBUG_MEMGUARD
	if (is_memguard_addr(addr))
		return (memguard_realloc(addr, size, mtp, flags));
#endif

#ifdef DEBUG_REDZONE
	slab = NULL;
	alloc = redzone_get_size(addr);
#else
	slab = FUNC9((vm_offset_t)addr & ~(UMA_SLAB_MASK));

	/* Sanity check */
	FUNC0(slab != NULL,
	    ("realloc: address %p out of range", (void *)addr));

	/* Get the size of the original block */
	if (!(slab->us_flags & UMA_SLAB_MALLOC))
		alloc = slab->us_keg->uk_size;
	else
		alloc = slab->us_size;

	/* Reuse the original block if appropriate */
	if (size <= alloc
	    && (size > (alloc >> REALLOC_FRACTION) || alloc == MINALLOCSIZE))
		return (addr);
#endif /* !DEBUG_REDZONE */

	/* Allocate a new, bigger (or smaller) block */
	if ((newaddr = FUNC5(size, mtp, flags)) == NULL)
		return (NULL);

	/* Copy over original contents */
	FUNC2(addr, newaddr, FUNC7(size, alloc));
	FUNC3(addr, mtp);
	return (newaddr);
}