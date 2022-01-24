#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
typedef  TYPE_2__* uma_slab_t ;
typedef  int u_long ;
struct malloc_type {int dummy; } ;
struct TYPE_7__ {int us_flags; int us_size; TYPE_1__* us_keg; } ;
struct TYPE_6__ {int uk_size; int /*<<< orphan*/  uk_zones; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int UMA_SLAB_MALLOC ; 
 int UMA_SLAB_MASK ; 
 scalar_t__ FUNC1 (void**,struct malloc_type*) ; 
 int /*<<< orphan*/  FUNC2 (void*,struct malloc_type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct malloc_type*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int) ; 

void
FUNC8(void *addr, struct malloc_type *mtp)
{
	uma_slab_t slab;
	u_long size;

#ifdef MALLOC_DEBUG
	if (free_dbg(&addr, mtp) != 0)
		return;
#endif

	/* free(NULL, ...) does nothing */
	if (addr == NULL)
		return;

	slab = FUNC7((vm_offset_t)addr & (~UMA_SLAB_MASK));
	if (slab == NULL)
		FUNC4("free_domain: address %p(%p) has not been allocated.\n",
		    addr, (void *)((u_long)addr & (~UMA_SLAB_MASK)));

	if (!(slab->us_flags & UMA_SLAB_MALLOC)) {
		size = slab->us_keg->uk_size;
#ifdef INVARIANTS
		free_save_type(addr, mtp, size);
#endif
		FUNC6(FUNC0(&slab->us_keg->uk_zones),
		    addr, slab);
	} else {
		size = slab->us_size;
		FUNC5(slab);
	}
	FUNC3(mtp, size);
}