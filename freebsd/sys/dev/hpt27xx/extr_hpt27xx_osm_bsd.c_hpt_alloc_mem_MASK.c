#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct freelist {int count; int size; void** head; int alignment; int /*<<< orphan*/  tag; struct freelist* next; } ;
struct TYPE_7__ {int /*<<< orphan*/  him_handle; TYPE_1__* him; } ;
struct TYPE_9__ {TYPE_2__ ldm_adapter; struct TYPE_9__* next; } ;
struct TYPE_8__ {scalar_t__ vbus; struct freelist* freelist_dma_head; struct freelist* freelist_head; TYPE_4__* hba_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* get_meminfo ) (int /*<<< orphan*/ ) ;} ;
typedef  TYPE_3__* PVBUS_EXT ;
typedef  int /*<<< orphan*/  PVBUS ;
typedef  TYPE_4__* PHBA ;
typedef  int HPT_UPTR ;
typedef  scalar_t__ HPT_UINT ;
typedef  scalar_t__ BUS_ADDRESS ;

/* Variables and functions */
 int DMAPOOL_PAGE_SIZE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ os_max_cache_pages ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void**) ; 

__attribute__((used)) static int FUNC8(PVBUS_EXT vbus_ext)
{
	PHBA hba;
	struct freelist *f;
	HPT_UINT i;
	void **p;

	for (hba = vbus_ext->hba_list; hba; hba = hba->next)
		hba->ldm_adapter.him->get_meminfo(hba->ldm_adapter.him_handle);

	FUNC4((PVBUS)vbus_ext->vbus, 0);

	for (f=vbus_ext->freelist_head; f; f=f->next) {
		FUNC1(("%s: %d*%d=%d bytes",
			f->tag, f->count, f->size, f->count*f->size));
		for (i=0; i<f->count; i++) {
			p = (void **)FUNC5(f->size, M_DEVBUF, M_WAITOK);
			if (!p)	return (ENXIO);
			*p = f->head;
			f->head = p;
		}
	}

	for (f=vbus_ext->freelist_dma_head; f; f=f->next) {
		int order, size, j;

		FUNC0((f->size & (f->alignment-1))==0);

		for (order=0, size=PAGE_SIZE; size<f->size; order++, size<<=1)
			;

		FUNC1(("%s: %d*%d=%d bytes, order %d",
			f->tag, f->count, f->size, f->count*f->size, order));
		FUNC0(f->alignment<=PAGE_SIZE);

		for (i=0; i<f->count;) {
			p = (void **)FUNC2(order);
			if (!p) return -1;
			for (j = size/f->size; j && i<f->count; i++,j--) {
				*p = f->head;
				*(BUS_ADDRESS *)(p+1) = (BUS_ADDRESS)FUNC7(p);
				f->head = p;
				p = (void **)((unsigned long)p + f->size);
			}
		}
	}
	
	FUNC0(PAGE_SIZE==DMAPOOL_PAGE_SIZE);

	for (i=0; i<os_max_cache_pages; i++) {
		p = (void **)FUNC2(0);
		if (!p) return -1;
		FUNC0(((HPT_UPTR)p & (DMAPOOL_PAGE_SIZE-1))==0);
		FUNC3((PVBUS)vbus_ext->vbus, p, (BUS_ADDRESS)FUNC7(p));
	}

	return 0;
}