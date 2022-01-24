#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  TYPE_1__* vm_map_t ;
typedef  scalar_t__ u_long ;
struct TYPE_11__ {int /*<<< orphan*/  flags; } ;
struct vmspace {int vm_refcnt; int vm_ssize; char* vm_maxsaddr; TYPE_1__ vm_map; } ;
struct sysentvec {scalar_t__ sv_minuser; scalar_t__ sv_maxuser; scalar_t__* sv_maxssiz; scalar_t__ sv_usrstack; scalar_t__ sv_stackprot; int /*<<< orphan*/  sv_shared_page_len; int /*<<< orphan*/  sv_shared_page_base; int /*<<< orphan*/ * sv_shared_page_obj; } ;
struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;
struct proc {struct vmspace* p_vmspace; } ;
struct image_params {int vmspace_destroyed; scalar_t__ stack_sz; scalar_t__ eff_stack_sz; scalar_t__ stack_prot; int /*<<< orphan*/  map_flags; struct sysentvec* sysent; struct proc* proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct proc*,struct image_params*) ; 
 int KERN_SUCCESS ; 
 int MAP_ACC_NO_CHARGE ; 
 int MAP_ASLR ; 
 int MAP_ASLR_IGNSTART ; 
 int MAP_INHERIT_SHARE ; 
 int /*<<< orphan*/  MAP_STACK_GROWS_DOWN ; 
 int MAP_WIREFUTURE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int /*<<< orphan*/  RLIMIT_STACK ; 
 int /*<<< orphan*/  VM_PROT_ALL ; 
 int VM_PROT_EXECUTE ; 
 int VM_PROT_READ ; 
 scalar_t__ FUNC4 (struct proc*,TYPE_1__*) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*,int /*<<< orphan*/ ,struct rlimit*) ; 
 scalar_t__ map_at_zero ; 
 scalar_t__ maxssiz ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process_exec ; 
 int sgrowsiz ; 
 int /*<<< orphan*/  FUNC9 (struct vmspace*) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,scalar_t__,scalar_t__) ; 
 int FUNC17 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int FUNC22 (struct proc*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (struct vmspace*) ; 

int
FUNC24(struct image_params *imgp, struct sysentvec *sv)
{
	int error;
	struct proc *p = imgp->proc;
	struct vmspace *vmspace = p->p_vmspace;
	vm_object_t obj;
	struct rlimit rlim_stack;
	vm_offset_t sv_minuser, stack_addr;
	vm_map_t map;
	u_long ssiz;

	imgp->vmspace_destroyed = 1;
	imgp->sysent = sv;

	/* May be called with Giant held */
	FUNC0(process_exec, p, imgp);

	/*
	 * Blow away entire process VM, if address space not shared,
	 * otherwise, create a new VM space so that other threads are
	 * not disrupted
	 */
	map = &vmspace->vm_map;
	if (map_at_zero)
		sv_minuser = sv->sv_minuser;
	else
		sv_minuser = FUNC1(sv->sv_minuser, PAGE_SIZE);
	if (vmspace->vm_refcnt == 1 && FUNC14(map) == sv_minuser &&
	    FUNC13(map) == sv->sv_maxuser &&
	    FUNC4(p, map)) {
		FUNC9(vmspace);
		FUNC8(FUNC23(vmspace));
		FUNC16(map, FUNC14(map), FUNC13(map));
		/*
		 * An exec terminates mlockall(MCL_FUTURE), ASLR state
		 * must be re-evaluated.
		 */
		FUNC12(map);
		FUNC15(map, 0, MAP_WIREFUTURE | MAP_ASLR |
		    MAP_ASLR_IGNSTART);
		FUNC18(map);
	} else {
		error = FUNC22(p, sv_minuser, sv->sv_maxuser);
		if (error)
			return (error);
		vmspace = p->p_vmspace;
		map = &vmspace->vm_map;
	}
	map->flags |= imgp->map_flags;

	/* Map a shared page */
	obj = sv->sv_shared_page_obj;
	if (obj != NULL) {
		FUNC21(obj);
		error = FUNC11(map, obj, 0,
		    sv->sv_shared_page_base, sv->sv_shared_page_len,
		    VM_PROT_READ | VM_PROT_EXECUTE,
		    VM_PROT_READ | VM_PROT_EXECUTE,
		    MAP_INHERIT_SHARE | MAP_ACC_NO_CHARGE);
		if (error != KERN_SUCCESS) {
			FUNC20(obj);
			return (FUNC19(error));
		}
	}

	/* Allocate a new stack */
	if (imgp->stack_sz != 0) {
		ssiz = FUNC10(imgp->stack_sz);
		FUNC2(p);
		FUNC7(p, RLIMIT_STACK, &rlim_stack);
		FUNC3(p);
		if (ssiz > rlim_stack.rlim_max)
			ssiz = rlim_stack.rlim_max;
		if (ssiz > rlim_stack.rlim_cur) {
			rlim_stack.rlim_cur = ssiz;
			FUNC5(curthread, RLIMIT_STACK, &rlim_stack);
		}
	} else if (sv->sv_maxssiz != NULL) {
		ssiz = *sv->sv_maxssiz;
	} else {
		ssiz = maxssiz;
	}
	imgp->eff_stack_sz = FUNC6(curthread, RLIMIT_STACK);
	if (ssiz < imgp->eff_stack_sz)
		imgp->eff_stack_sz = ssiz;
	stack_addr = sv->sv_usrstack - ssiz;
	error = FUNC17(map, stack_addr, (vm_size_t)ssiz,
	    obj != NULL && imgp->stack_prot != 0 ? imgp->stack_prot :
	    sv->sv_stackprot, VM_PROT_ALL, MAP_STACK_GROWS_DOWN);
	if (error != KERN_SUCCESS)
		return (FUNC19(error));

	/*
	 * vm_ssize and vm_maxsaddr are somewhat antiquated concepts, but they
	 * are still used to enforce the stack rlimit on the process stack.
	 */
	vmspace->vm_ssize = sgrowsiz >> PAGE_SHIFT;
	vmspace->vm_maxsaddr = (char *)stack_addr;

	return (0);
}