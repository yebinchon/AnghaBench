#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct freelist {scalar_t__ count; scalar_t__ reserved_count; int size; int /*<<< orphan*/  tag; struct freelist* next; } ;
struct TYPE_3__ {scalar_t__ vbus; struct freelist* freelist_dma_head; struct freelist* freelist_head; } ;
typedef  TYPE_1__* PVBUS_EXT ;
typedef  int /*<<< orphan*/  PVBUS ;
typedef  int HPT_UPTR ;
typedef  int /*<<< orphan*/  BUS_ADDRESS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int PAGE_SIZE ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 void* FUNC6 (struct freelist*) ; 
 void* FUNC7 (struct freelist*,int /*<<< orphan*/ *) ; 
 int os_max_cache_pages ; 

__attribute__((used)) static void FUNC8(PVBUS_EXT vbus_ext)
{
	struct freelist *f;
	void *p;
	int i;
	BUS_ADDRESS bus;

	for (f=vbus_ext->freelist_head; f; f=f->next) {
#if DBG
		if (f->count!=f->reserved_count) {
			KdPrint(("memory leak for freelist %s (%d/%d)", f->tag, f->count, f->reserved_count));
		}
#endif
		while ((p=FUNC6(f)))
			FUNC4(p, M_DEVBUF);
	}

	for (i=0; i<os_max_cache_pages; i++) {
		p = FUNC2((PVBUS)vbus_ext->vbus, &bus);
		FUNC0(p);
		FUNC5(p, 0);
	}

	for (f=vbus_ext->freelist_dma_head; f; f=f->next) {
		int order, size;
#if DBG
		if (f->count!=f->reserved_count) {
			KdPrint(("memory leak for dma freelist %s (%d/%d)", f->tag, f->count, f->reserved_count));
		}
#endif
		for (order=0, size=PAGE_SIZE; size<f->size; order++, size<<=1) ;

		while ((p=FUNC7(f, &bus))) {
			if (order)
				FUNC5(p, order);
			else {
			/* can't free immediately since other blocks in this page may still be in the list */
				if (((HPT_UPTR)p & (PAGE_SIZE-1))==0)
					FUNC3((PVBUS)vbus_ext->vbus, p, bus);
			}
		}
	}
	
	while ((p = FUNC2((PVBUS)vbus_ext->vbus, &bus)))
		FUNC5(p, 0);
}