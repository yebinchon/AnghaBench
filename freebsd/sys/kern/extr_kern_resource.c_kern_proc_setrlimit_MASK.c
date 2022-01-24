#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_size_t ;
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  size_t u_int ;
struct thread {int dummy; } ;
struct rlimit {scalar_t__ rlim_cur; scalar_t__ rlim_max; } ;
struct proc {scalar_t__ p_cpulimit; int p_flag; TYPE_2__* p_vmspace; TYPE_1__* p_sysent; struct plimit* p_limit; int /*<<< orphan*/  p_limco; } ;
struct plimit {struct rlimit* pl_rlimit; } ;
struct TYPE_4__ {int /*<<< orphan*/  vm_map; } ;
struct TYPE_3__ {scalar_t__ sv_usrstack; int /*<<< orphan*/  sv_stackprot; int /*<<< orphan*/  (* sv_fixlimit ) (struct rlimit*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  PRIV_PROC_SETRLIMIT ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc*) ; 
 int P_INEXEC ; 
#define  RLIMIT_CPU 132 
#define  RLIMIT_DATA 131 
#define  RLIMIT_NOFILE 130 
#define  RLIMIT_NPROC 129 
#define  RLIMIT_STACK 128 
 scalar_t__ RLIM_INFINITY ; 
 size_t RLIM_NLIMITS ; 
 int /*<<< orphan*/  SBT_1S ; 
 int /*<<< orphan*/  VM_PROT_NONE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct proc*,int /*<<< orphan*/ ) ; 
 struct thread* curthread ; 
 struct plimit* FUNC5 () ; 
 int /*<<< orphan*/  lim_cb ; 
 int /*<<< orphan*/  FUNC6 (struct plimit*,struct plimit*) ; 
 int /*<<< orphan*/  FUNC7 (struct plimit*) ; 
 void* maxdsiz ; 
 void* maxfilesperproc ; 
 void* maxprocperuid ; 
 void* maxssiz ; 
 int FUNC8 (struct thread*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct rlimit*,int const) ; 
 int /*<<< orphan*/  FUNC11 (struct rlimit*,size_t) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC14(struct thread *td, struct proc *p, u_int which,
    struct rlimit *limp)
{
	struct plimit *newlim, *oldlim;
	struct rlimit *alimp;
	struct rlimit oldssiz;
	int error;

	if (which >= RLIM_NLIMITS)
		return (EINVAL);

	/*
	 * Preserve historical bugs by treating negative limits as unsigned.
	 */
	if (limp->rlim_cur < 0)
		limp->rlim_cur = RLIM_INFINITY;
	if (limp->rlim_max < 0)
		limp->rlim_max = RLIM_INFINITY;

	oldssiz.rlim_cur = 0;
	newlim = FUNC5();
	FUNC1(p);
	oldlim = p->p_limit;
	alimp = &oldlim->pl_rlimit[which];
	if (limp->rlim_cur > alimp->rlim_max ||
	    limp->rlim_max > alimp->rlim_max)
		if ((error = FUNC8(td, PRIV_PROC_SETRLIMIT))) {
			FUNC2(p);
			FUNC7(newlim);
			return (error);
		}
	if (limp->rlim_cur > limp->rlim_max)
		limp->rlim_cur = limp->rlim_max;
	FUNC6(newlim, oldlim);
	alimp = &newlim->pl_rlimit[which];

	switch (which) {

	case RLIMIT_CPU:
		if (limp->rlim_cur != RLIM_INFINITY &&
		    p->p_cpulimit == RLIM_INFINITY)
			FUNC4(&p->p_limco, SBT_1S, 0,
			    lim_cb, p, FUNC0(1));
		p->p_cpulimit = limp->rlim_cur;
		break;
	case RLIMIT_DATA:
		if (limp->rlim_cur > maxdsiz)
			limp->rlim_cur = maxdsiz;
		if (limp->rlim_max > maxdsiz)
			limp->rlim_max = maxdsiz;
		break;

	case RLIMIT_STACK:
		if (limp->rlim_cur > maxssiz)
			limp->rlim_cur = maxssiz;
		if (limp->rlim_max > maxssiz)
			limp->rlim_max = maxssiz;
		oldssiz = *alimp;
		if (p->p_sysent->sv_fixlimit != NULL)
			p->p_sysent->sv_fixlimit(&oldssiz,
			    RLIMIT_STACK);
		break;

	case RLIMIT_NOFILE:
		if (limp->rlim_cur > maxfilesperproc)
			limp->rlim_cur = maxfilesperproc;
		if (limp->rlim_max > maxfilesperproc)
			limp->rlim_max = maxfilesperproc;
		break;

	case RLIMIT_NPROC:
		if (limp->rlim_cur > maxprocperuid)
			limp->rlim_cur = maxprocperuid;
		if (limp->rlim_max > maxprocperuid)
			limp->rlim_max = maxprocperuid;
		if (limp->rlim_cur < 1)
			limp->rlim_cur = 1;
		if (limp->rlim_max < 1)
			limp->rlim_max = 1;
		break;
	}
	if (p->p_sysent->sv_fixlimit != NULL)
		p->p_sysent->sv_fixlimit(limp, which);
	*alimp = *limp;
	p->p_limit = newlim;
	FUNC3(p);
	FUNC2(p);
	FUNC7(oldlim);

	if (which == RLIMIT_STACK &&
	    /*
	     * Skip calls from exec_new_vmspace(), done when stack is
	     * not mapped yet.
	     */
	    (td != curthread || (p->p_flag & P_INEXEC) == 0)) {
		/*
		 * Stack is allocated to the max at exec time with only
		 * "rlim_cur" bytes accessible.  If stack limit is going
		 * up make more accessible, if going down make inaccessible.
		 */
		if (limp->rlim_cur != oldssiz.rlim_cur) {
			vm_offset_t addr;
			vm_size_t size;
			vm_prot_t prot;

			if (limp->rlim_cur > oldssiz.rlim_cur) {
				prot = p->p_sysent->sv_stackprot;
				size = limp->rlim_cur - oldssiz.rlim_cur;
				addr = p->p_sysent->sv_usrstack -
				    limp->rlim_cur;
			} else {
				prot = VM_PROT_NONE;
				size = oldssiz.rlim_cur - limp->rlim_cur;
				addr = p->p_sysent->sv_usrstack -
				    oldssiz.rlim_cur;
			}
			addr = FUNC12(addr);
			size = FUNC9(size);
			(void)FUNC13(&p->p_vmspace->vm_map,
			    addr, addr + size, prot, FALSE);
		}
	}

	return (0);
}