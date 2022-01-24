#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_9__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_20__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_15__ ;
typedef  struct TYPE_23__   TYPE_14__ ;

/* Type definitions */
typedef  int vm_prot_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  int vm_offset_t ;
struct faultstate {TYPE_9__* first_object; TYPE_15__* entry; TYPE_14__* map; int /*<<< orphan*/  first_pindex; int /*<<< orphan*/ * vp; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_28__ {int flags; } ;
struct TYPE_27__ {int flags; size_t psind; } ;
struct TYPE_25__ {int /*<<< orphan*/  ru_minflt; } ;
struct TYPE_26__ {TYPE_1__ td_ru; } ;
struct TYPE_24__ {int start; scalar_t__ end; } ;
struct TYPE_23__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 int KERN_FAILURE ; 
 int KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int OBJ_UNMANAGED ; 
 int /*<<< orphan*/  PFBAK ; 
 int /*<<< orphan*/  PFFOR ; 
 int PG_FICTITIOUS ; 
 int PMAP_ENTER_NOSLEEP ; 
 int PMAP_ENTER_WIRED ; 
 int PS_ALL_DIRTY ; 
 int PS_ALL_VALID ; 
 int PS_NONE_BUSY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int VM_PROT_WRITE ; 
 TYPE_20__* curthread ; 
 int* pagesizes ; 
 int FUNC3 (int /*<<< orphan*/ ,int,TYPE_2__*,int,int,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_15__*,TYPE_2__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct faultstate*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_14__*,TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 TYPE_2__* FUNC14 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 TYPE_2__* FUNC17 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC18(struct faultstate *fs, vm_offset_t vaddr, vm_prot_t prot,
    int fault_type, int fault_flags, boolean_t wired, vm_page_t *m_hold)
{
	vm_page_t m, m_map;
#if (defined(__aarch64__) || defined(__amd64__) || (defined(__arm__) && \
    __ARM_ARCH >= 6) || defined(__i386__) || defined(__riscv)) && \
    VM_NRESERVLEVEL > 0
	vm_page_t m_super;
	int flags;
#endif
	int psind, rv;

	FUNC0(fs->vp == NULL);
	FUNC10(fs->first_object);
	m = FUNC14(fs->first_object, fs->first_pindex);
	/* A busy page can be mapped for read|execute access. */
	if (m == NULL || ((prot & VM_PROT_WRITE) != 0 &&
	    FUNC13(m)) || !FUNC12(m)) {
		rv = KERN_FAILURE;
		goto out;
	}
	m_map = m;
	psind = 0;
#if (defined(__aarch64__) || defined(__amd64__) || (defined(__arm__) && \
    __ARM_ARCH >= 6) || defined(__i386__) || defined(__riscv)) && \
    VM_NRESERVLEVEL > 0
	if ((m->flags & PG_FICTITIOUS) == 0 &&
	    (m_super = vm_reserv_to_superpage(m)) != NULL &&
	    rounddown2(vaddr, pagesizes[m_super->psind]) >= fs->entry->start &&
	    roundup2(vaddr + 1, pagesizes[m_super->psind]) <= fs->entry->end &&
	    (vaddr & (pagesizes[m_super->psind] - 1)) == (VM_PAGE_TO_PHYS(m) &
	    (pagesizes[m_super->psind] - 1)) && !wired &&
	    pmap_ps_enabled(fs->map->pmap)) {
		flags = PS_ALL_VALID;
		if ((prot & VM_PROT_WRITE) != 0) {
			/*
			 * Create a superpage mapping allowing write access
			 * only if none of the constituent pages are busy and
			 * all of them are already dirty (except possibly for
			 * the page that was faulted on).
			 */
			flags |= PS_NONE_BUSY;
			if ((fs->first_object->flags & OBJ_UNMANAGED) == 0)
				flags |= PS_ALL_DIRTY;
		}
		if (vm_page_ps_test(m_super, flags, m)) {
			m_map = m_super;
			psind = m_super->psind;
			vaddr = rounddown2(vaddr, pagesizes[psind]);
			/* Preset the modified bit for dirty superpages. */
			if ((flags & PS_ALL_DIRTY) != 0)
				fault_type |= VM_PROT_WRITE;
		}
	}
#endif
	rv = FUNC3(fs->map->pmap, vaddr, m_map, prot, fault_type |
	    PMAP_ENTER_NOSLEEP | (wired ? PMAP_ENTER_WIRED : 0), psind);
	if (rv != KERN_SUCCESS)
		goto out;
	if (m_hold != NULL) {
		*m_hold = m;
		FUNC16(m);
	}
	FUNC7(fs->entry, m, prot, fault_type, fault_flags, false);
	if (psind == 0 && !wired)
		FUNC8(fs, vaddr, PFBAK, PFFOR, true);
	FUNC1(fs->first_object);
	FUNC9(fs->map, fs->entry);
	curthread->td_ru.ru_minflt++;

out:
	FUNC11(fs->first_object);
	return (rv);
}