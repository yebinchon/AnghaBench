#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_19__ ;
typedef  struct TYPE_23__   TYPE_16__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_3__* vm_page_t ;
typedef  int vm_offset_t ;
struct mtx {int dummy; } ;
struct faultstate {int lookup_still_valid; scalar_t__ first_pindex; scalar_t__ map_generation; TYPE_4__* first_object; TYPE_2__* map; TYPE_16__* entry; TYPE_4__* object; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_28__ {scalar_t__ size; int /*<<< orphan*/ * backing_object; int /*<<< orphan*/  paging_in_progress; } ;
struct TYPE_27__ {int psind; scalar_t__ pindex; } ;
struct TYPE_26__ {scalar_t__ timestamp; int /*<<< orphan*/  pmap; } ;
struct TYPE_25__ {int /*<<< orphan*/  ru_majflt; } ;
struct TYPE_24__ {TYPE_1__ td_ru; } ;
struct TYPE_23__ {int offset; int end; int start; int /*<<< orphan*/  max_protection; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int KERN_FAILURE ; 
 int KERN_NOT_RECEIVER ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int PMAP_ENTER_WIRED ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int VM_FAULT_WIRE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int VM_PAGER_BAD ; 
 int VM_PAGER_OK ; 
 int FUNC7 (int) ; 
 TYPE_19__* curthread ; 
 int /*<<< orphan*/  FUNC8 (struct mtx*) ; 
 int* pagesizes ; 
 int FUNC9 (int /*<<< orphan*/ ,int,TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC13 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_16__*,TYPE_3__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (struct faultstate*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,struct mtx**) ; 
 TYPE_3__* FUNC20 (TYPE_4__*,scalar_t__) ; 
 TYPE_3__* FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int FUNC24 (TYPE_4__*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC25(struct faultstate *fs, vm_prot_t prot, int fault_type,
    int fault_flags, boolean_t wired, vm_page_t *m_hold)
{
	struct mtx *m_mtx;
	vm_offset_t vaddr;
	vm_page_t m;
	vm_pindex_t map_first, map_last, pager_first, pager_last, pidx;
	int i, npages, psind, rv;

	FUNC1(fs->object == fs->first_object);
	FUNC4(fs->first_object);
	FUNC1(FUNC3(fs->first_object->paging_in_progress) > 0);
	FUNC1(fs->first_object->backing_object == NULL);
	FUNC1(fs->lookup_still_valid);

	pager_first = FUNC2(fs->entry->offset);
	pager_last = pager_first + FUNC7(fs->entry->end - fs->entry->start) - 1;
	FUNC12(fs);
	FUNC13(fs);

	/*
	 * Call the pager (driver) populate() method.
	 *
	 * There is no guarantee that the method will be called again
	 * if the current fault is for read, and a future fault is
	 * for write.  Report the entry's maximum allowed protection
	 * to the driver.
	 */
	rv = FUNC24(fs->first_object, fs->first_pindex,
	    fault_type, fs->entry->max_protection, &pager_first, &pager_last);

	FUNC4(fs->first_object);
	if (rv == VM_PAGER_BAD) {
		/*
		 * VM_PAGER_BAD is the backdoor for a pager to request
		 * normal fault handling.
		 */
		FUNC17(fs);
		if (fs->map->timestamp != fs->map_generation)
			return (KERN_RESOURCE_SHORTAGE); /* RetryFault */
		return (KERN_NOT_RECEIVER);
	}
	if (rv != VM_PAGER_OK)
		return (KERN_FAILURE); /* AKA SIGSEGV */

	/* Ensure that the driver is obeying the interface. */
	FUNC1(pager_first <= pager_last);
	FUNC1(fs->first_pindex <= pager_last);
	FUNC1(fs->first_pindex >= pager_first);
	FUNC1(pager_last < fs->first_object->size);

	FUNC17(fs);
	if (fs->map->timestamp != fs->map_generation) {
		FUNC16(fs->first_object, pager_first,
		    pager_last);
		return (KERN_RESOURCE_SHORTAGE); /* RetryFault */
	}

	/*
	 * The map is unchanged after our last unlock.  Process the fault.
	 *
	 * The range [pager_first, pager_last] that is given to the
	 * pager is only a hint.  The pager may populate any range
	 * within the object that includes the requested page index.
	 * In case the pager expanded the range, clip it to fit into
	 * the map entry.
	 */
	map_first = FUNC2(fs->entry->offset);
	if (map_first > pager_first) {
		FUNC16(fs->first_object, pager_first,
		    map_first - 1);
		pager_first = map_first;
	}
	map_last = map_first + FUNC7(fs->entry->end - fs->entry->start) - 1;
	if (map_last < pager_last) {
		FUNC16(fs->first_object, map_last + 1,
		    pager_last);
		pager_last = map_last;
	}
	for (pidx = pager_first, m = FUNC20(fs->first_object, pidx);
	    pidx <= pager_last;
	    pidx += npages, m = FUNC21(&m[npages - 1])) {
		vaddr = fs->entry->start + FUNC0(pidx) - fs->entry->offset;
#if defined(__aarch64__) || defined(__amd64__) || (defined(__arm__) && \
    __ARM_ARCH >= 6) || defined(__i386__) || defined(__riscv)
		psind = m->psind;
		if (psind > 0 && ((vaddr & (pagesizes[psind] - 1)) != 0 ||
		    pidx + FUNC2(pagesizes[psind]) - 1 > pager_last ||
		    !FUNC10(fs->map->pmap) || wired))
			psind = 0;
#else
		psind = 0;
#endif		
		npages = FUNC7(pagesizes[psind]);
		for (i = 0; i < npages; i++) {
			FUNC15(&m[i]);
			FUNC14(fs->entry, &m[i], prot, fault_type,
			    fault_flags, true);
		}
		FUNC6(fs->first_object);
		rv = FUNC9(fs->map->pmap, vaddr, m, prot, fault_type |
		    (wired ? PMAP_ENTER_WIRED : 0), psind);
#if defined(__amd64__)
		if (psind > 0 && rv == KERN_FAILURE) {
			for (i = 0; i < npages; i++) {
				rv = FUNC9(fs->map->pmap, vaddr + FUNC11(i),
				    &m[i], prot, fault_type |
				    (wired ? PMAP_ENTER_WIRED : 0), 0);
				FUNC1(rv == KERN_SUCCESS);
			}
		}
#else
		MPASS(rv == KERN_SUCCESS);
#endif
		FUNC5(fs->first_object);
		m_mtx = NULL;
		for (i = 0; i < npages; i++) {
			if ((fault_flags & VM_FAULT_WIRE) != 0) {
				FUNC22(&m[i]);
			} else {
				FUNC19(&m[i], &m_mtx);
				FUNC18(&m[i]);
			}
			if (m_hold != NULL && m[i].pindex == fs->first_pindex) {
				*m_hold = &m[i];
				FUNC22(&m[i]);
			}
			FUNC23(&m[i]);
		}
		if (m_mtx != NULL)
			FUNC8(m_mtx);
	}
	curthread->td_ru.ru_majflt++;
	return (KERN_SUCCESS);
}