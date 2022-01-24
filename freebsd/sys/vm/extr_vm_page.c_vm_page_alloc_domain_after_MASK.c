#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_pindex_t ;
typedef  TYPE_2__* vm_page_t ;
typedef  TYPE_3__* vm_object_t ;
typedef  int /*<<< orphan*/  uintmax_t ;
struct vm_domain {TYPE_1__* vmd_pgcache; } ;
struct TYPE_27__ {int flags; int /*<<< orphan*/  memattr; } ;
struct TYPE_26__ {int flags; int ref_count; scalar_t__ pindex; void* busy_lock; void* oflags; int /*<<< orphan*/ * object; scalar_t__ act_count; scalar_t__ aflags; } ;
struct TYPE_25__ {int /*<<< orphan*/ * zone; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int OBJ_FICTITIOUS ; 
 int OBJ_UNMANAGED ; 
 int PG_NODUMP ; 
 int PG_PCPU_CACHE ; 
 int PG_ZERO ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NODUMP ; 
 int VM_ALLOC_NOOBJ ; 
 int VM_ALLOC_SBUSY ; 
 int VM_ALLOC_WAITFAIL ; 
 int VM_ALLOC_WAITOK ; 
 int VM_ALLOC_WIRED ; 
 int VM_ALLOC_ZERO ; 
 struct vm_domain* FUNC1 (int) ; 
 int VM_FREEPOOL_DEFAULT ; 
 int VM_FREEPOOL_DIRECT ; 
 int /*<<< orphan*/  VM_MEMATTR_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 void* FUNC5 (int) ; 
 void* VPB_SINGLE_EXCLUSIVER ; 
 void* VPB_UNBUSIED ; 
 void* VPO_UNMANAGED ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct vm_domain*,TYPE_3__*,int) ; 
 scalar_t__ FUNC9 (struct vm_domain*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC11 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC12 (struct vm_domain*,int) ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,TYPE_3__*,scalar_t__,TYPE_2__*) ; 
 TYPE_2__* FUNC18 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 TYPE_2__* FUNC21 (TYPE_3__*,scalar_t__,int,int,TYPE_2__*) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (int) ; 

vm_page_t
FUNC25(vm_object_t object, vm_pindex_t pindex, int domain,
    int req, vm_page_t mpred)
{
	struct vm_domain *vmd;
	vm_page_t m;
	int flags, pool;

	FUNC0((object != NULL) == ((req & VM_ALLOC_NOOBJ) == 0) &&
	    (object != NULL || (req & VM_ALLOC_SBUSY) == 0) &&
	    ((req & (VM_ALLOC_NOBUSY | VM_ALLOC_SBUSY)) !=
	    (VM_ALLOC_NOBUSY | VM_ALLOC_SBUSY)),
	    ("inconsistent object(%p)/req(%x)", object, req));
	FUNC0(object == NULL || (req & VM_ALLOC_WAITOK) == 0,
	    ("Can't sleep and retry object insertion."));
	FUNC0(mpred == NULL || mpred->pindex < pindex,
	    ("mpred %p doesn't precede pindex 0x%jx", mpred,
	    (uintmax_t)pindex));
	if (object != NULL)
		FUNC2(object);

	flags = 0;
	m = NULL;
	pool = object != NULL ? VM_FREEPOOL_DEFAULT : VM_FREEPOOL_DIRECT;
again:
#if VM_NRESERVLEVEL > 0
	/*
	 * Can we allocate the page from a reservation?
	 */
	if (vm_object_reserv(object) &&
	    (m = vm_reserv_alloc_page(object, pindex, domain, req, mpred)) !=
	    NULL) {
		domain = vm_phys_domain(m);
		vmd = VM_DOMAIN(domain);
		goto found;
	}
#endif
	vmd = FUNC1(domain);
	if (vmd->vmd_pgcache[pool].zone != NULL) {
		m = FUNC7(vmd->vmd_pgcache[pool].zone, M_NOWAIT);
		if (m != NULL) {
			flags |= PG_PCPU_CACHE;
			goto found;
		}
	}
	if (FUNC9(vmd, req, 1)) {
		/*
		 * If not, allocate it from the free page queues.
		 */
		FUNC10(vmd);
		m = FUNC18(domain, pool, 0);
		FUNC11(vmd);
		if (m == NULL) {
			FUNC12(vmd, 1);
#if VM_NRESERVLEVEL > 0
			if (vm_reserv_reclaim_inactive(domain))
				goto again;
#endif
		}
	}
	if (m == NULL) {
		/*
		 * Not allocatable, give up.
		 */
		if (FUNC8(vmd, object, req))
			goto again;
		return (NULL);
	}

	/*
	 * At this point we had better have found a good page.
	 */
found:
	FUNC15(m);
	FUNC14(m);

	/*
	 * Initialize the page.  Only the PG_ZERO flag is inherited.
	 */
	if ((req & VM_ALLOC_ZERO) != 0)
		flags |= (m->flags & PG_ZERO);
	if ((req & VM_ALLOC_NODUMP) != 0)
		flags |= PG_NODUMP;
	m->flags = flags;
	m->aflags = 0;
	m->oflags = object == NULL || (object->flags & OBJ_UNMANAGED) != 0 ?
	    VPO_UNMANAGED : 0;
	m->busy_lock = VPB_UNBUSIED;
	if ((req & (VM_ALLOC_NOBUSY | VM_ALLOC_NOOBJ | VM_ALLOC_SBUSY)) == 0)
		m->busy_lock = VPB_SINGLE_EXCLUSIVER;
	if ((req & VM_ALLOC_SBUSY) != 0)
		m->busy_lock = FUNC5(1);
	if (req & VM_ALLOC_WIRED) {
		/*
		 * The page lock is not required for wiring a page until that
		 * page is inserted into the object.
		 */
		FUNC23(1);
		m->ref_count = 1;
	}
	m->act_count = 0;

	if (object != NULL) {
		if (FUNC17(m, object, pindex, mpred)) {
			if (req & VM_ALLOC_WIRED) {
				FUNC24(1);
				m->ref_count = 0;
			}
			FUNC0(m->object == NULL, ("page %p has object", m));
			m->oflags = VPO_UNMANAGED;
			m->busy_lock = VPB_UNBUSIED;
			/* Don't change PG_ZERO. */
			FUNC16(m);
			if (req & VM_ALLOC_WAITFAIL) {
				FUNC4(object);
				FUNC20();
				FUNC3(object);
			}
			return (NULL);
		}

		/* Ignore device objects; the pager sets "memattr" for them. */
		if (object->memattr != VM_MEMATTR_DEFAULT &&
		    (object->flags & OBJ_FICTITIOUS) == 0)
			FUNC6(m, object->memattr);
	} else
		m->pindex = pindex;

	return (m);
}