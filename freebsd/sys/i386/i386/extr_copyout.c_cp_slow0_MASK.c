#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  scalar_t__ vm_offset_t ;
struct pcpu {int /*<<< orphan*/  pc_copyout_mlock; int /*<<< orphan*/  pc_copyout_slock; scalar_t__ pc_copyout_saddr; scalar_t__ pc_copyout_maddr; } ;
struct TYPE_6__ {TYPE_1__* p_vmspace; } ;
struct TYPE_5__ {scalar_t__ td_vslock_sz; int td_pflags; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm_map; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int TDP_NOFAULTING ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int VM_PROT_QUICK_NOFAULT ; 
 int VM_PROT_READ ; 
 int VM_PROT_WRITE ; 
 TYPE_3__* curproc ; 
 TYPE_2__* curthread ; 
 struct pcpu* FUNC2 () ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,size_t,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 

int
FUNC15(vm_offset_t uva, size_t len, bool write,
    void (*f)(vm_offset_t, void *), void *arg)
{
	struct pcpu *pc;
	vm_page_t m[2];
	vm_offset_t kaddr;
	int error, i, plen;
	bool sleepable;

	plen = FUNC3(uva - FUNC12(uva) + len, PAGE_SIZE);
	FUNC0(plen <= FUNC6(m));
	error = 0;
	i = FUNC13(&curproc->p_vmspace->vm_map, uva, len,
	    (write ? VM_PROT_WRITE : VM_PROT_READ) | VM_PROT_QUICK_NOFAULT,
	    m, FUNC6(m));
	if (i != plen)
		return (EFAULT);
	FUNC8();
	pc = FUNC2();
	if (!FUNC1() || curthread->td_vslock_sz > 0 ||
	    (curthread->td_pflags & TDP_NOFAULTING) != 0) {
		sleepable = false;
		FUNC4(&pc->pc_copyout_mlock);
		kaddr = pc->pc_copyout_maddr;
	} else {
		sleepable = true;
		FUNC10(&pc->pc_copyout_slock);
		kaddr = pc->pc_copyout_saddr;
	}
	FUNC7(kaddr, plen, m);
	kaddr += uva - FUNC12(uva);
	f(kaddr, arg);
	FUNC9();
	if (sleepable)
		FUNC11(&pc->pc_copyout_slock);
	else
		FUNC5(&pc->pc_copyout_mlock);
	FUNC14(m, plen);
	return (error);
}