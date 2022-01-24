#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_zone_t ;
struct malloc_type {int dummy; } ;
typedef  void* caddr_t ;
struct TYPE_5__ {TYPE_1__** kz_zone; } ;
struct TYPE_4__ {size_t uz_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 size_t KMEM_ZBASE ; 
 size_t KMEM_ZMASK ; 
 size_t KMEM_ZSHIFT ; 
 int M_EXEC ; 
 int M_WAITOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 size_t kmem_zmax ; 
 int* kmemsize ; 
 TYPE_3__* kmemzones ; 
 int /*<<< orphan*/ * krequests ; 
 scalar_t__ FUNC1 (void**,size_t*,struct malloc_type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct malloc_type*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct malloc_type*,size_t,int) ; 
 size_t FUNC4 (struct malloc_type*) ; 
 void* FUNC5 (void*,unsigned long) ; 
 size_t FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  t_malloc_fail ; 
 int /*<<< orphan*/  time_uptime ; 
 void* FUNC7 (size_t,int) ; 
 void* FUNC8 (TYPE_1__*,int) ; 

void *
(FUNC9)(size_t size, struct malloc_type *mtp, int flags)
{
	int indx;
	caddr_t va;
	uma_zone_t zone;
#if defined(DEBUG_REDZONE)
	unsigned long osize = size;
#endif

#ifdef MALLOC_DEBUG
	va = NULL;
	if (malloc_dbg(&va, &size, mtp, flags) != 0)
		return (va);
#endif

	if (size <= kmem_zmax && (flags & M_EXEC) == 0) {
		if (size & KMEM_ZMASK)
			size = (size & ~KMEM_ZMASK) + KMEM_ZBASE;
		indx = kmemsize[size >> KMEM_ZSHIFT];
		zone = kmemzones[indx].kz_zone[FUNC4(mtp)];
#ifdef MALLOC_PROFILE
		krequests[size >> KMEM_ZSHIFT]++;
#endif
		va = FUNC8(zone, flags);
		if (va != NULL)
			size = zone->uz_size;
		FUNC3(mtp, va == NULL ? 0 : size, indx);
	} else {
		size = FUNC6(size, PAGE_SIZE);
		zone = NULL;
		va = FUNC7(size, flags);
		FUNC2(mtp, va == NULL ? 0 : size);
	}
	if (flags & M_WAITOK)
		FUNC0(va != NULL, ("malloc(M_WAITOK) returned NULL"));
	else if (va == NULL)
		t_malloc_fail = time_uptime;
#ifdef DEBUG_REDZONE
	if (va != NULL)
		va = redzone_setup(va, osize);
#endif
	return ((void *) va);
}