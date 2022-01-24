#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ vm_ooffset_t ;
typedef  scalar_t__ u_int ;
struct vmspace {int dummy; } ;
struct ucred {int cr_ruid; int /*<<< orphan*/  cr_ruidinfo; } ;
struct timeval {int dummy; } ;
struct thread {scalar_t__ td_kstack; int td_kstack_pages; struct ucred* td_ucred; struct proc* td_proc; } ;
struct proc {int p_pid; int /*<<< orphan*/ * p_ucred; int /*<<< orphan*/  p_ktr; int /*<<< orphan*/  p_mtx; int /*<<< orphan*/  p_klist; int /*<<< orphan*/  p_vmspace; } ;
struct fork_req {int fr_flags; int fr_pages; int fr_pd_flags; int /*<<< orphan*/ * fr_pd_fd; int /*<<< orphan*/  fr_pd_fcaps; scalar_t__* fr_pidp; int /*<<< orphan*/ ** fr_procp; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct thread* FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int PD_ALLOWED_AT_FORK ; 
 int /*<<< orphan*/  PRIV_MAXPROC ; 
 int /*<<< orphan*/  PRIV_PROC_LIMIT ; 
 int RFCFDG ; 
 int RFFDG ; 
 int RFFLAGS ; 
 int RFMEM ; 
 int RFPROC ; 
 int RFPROCDESC ; 
 int RFSTOPPED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFTSIGMASK ; 
 scalar_t__ FUNC3 (int) ; 
 int RFTSIGZMB ; 
 int /*<<< orphan*/  RLIMIT_NPROC ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ _SIG_MAXSIG ; 
 int /*<<< orphan*/  allproc_lock ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC10 (struct thread*,struct fork_req*,struct proc*,struct thread*,struct vmspace*,struct file*) ; 
 int /*<<< orphan*/  FUNC11 (struct thread*,struct file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct file*,struct thread*) ; 
 int FUNC13 (struct thread*,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int kstack_pages ; 
 int /*<<< orphan*/  FUNC15 (struct thread*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct proc*) ; 
 int /*<<< orphan*/  FUNC17 (struct proc*) ; 
 int maxproc ; 
 int /*<<< orphan*/  nprocs ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 scalar_t__ FUNC19 (struct timeval*,int*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,int) ; 
 scalar_t__ FUNC21 (struct ucred*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (struct proc*,struct thread*) ; 
 int /*<<< orphan*/  FUNC23 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_zone ; 
 int FUNC24 (struct thread*,struct file**,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct proc*) ; 
 int FUNC26 (struct proc*,struct proc*) ; 
 int /*<<< orphan*/  FUNC27 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 struct thread* FUNC31 (int) ; 
 int /*<<< orphan*/  FUNC32 (struct thread*,int) ; 
 struct proc* FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ,struct proc*) ; 
 int /*<<< orphan*/  FUNC35 (struct thread*) ; 
 struct vmspace* FUNC36 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC37 (struct vmspace*) ; 

int
FUNC38(struct thread *td, struct fork_req *fr)
{
	struct proc *p1, *newproc;
	struct thread *td2;
	struct vmspace *vm2;
	struct ucred *cred;
	struct file *fp_procdesc;
	vm_ooffset_t mem_charged;
	int error, nprocs_new;
	static int curfail;
	static struct timeval lastfail;
	int flags, pages;

	flags = fr->fr_flags;
	pages = fr->fr_pages;

	if ((flags & RFSTOPPED) != 0)
		FUNC1(fr->fr_procp != NULL && fr->fr_pidp == NULL);
	else
		FUNC1(fr->fr_procp == NULL);

	/* Check for the undefined or unimplemented flags. */
	if ((flags & ~(RFFLAGS | FUNC2(RFTSIGMASK))) != 0)
		return (EINVAL);

	/* Signal value requires RFTSIGZMB. */
	if ((flags & FUNC2(RFTSIGMASK)) != 0 && (flags & RFTSIGZMB) == 0)
		return (EINVAL);

	/* Can't copy and clear. */
	if ((flags & (RFFDG|RFCFDG)) == (RFFDG|RFCFDG))
		return (EINVAL);

	/* Check the validity of the signal number. */
	if ((flags & RFTSIGZMB) != 0 && (u_int)FUNC3(flags) > _SIG_MAXSIG)
		return (EINVAL);

	if ((flags & RFPROCDESC) != 0) {
		/* Can't not create a process yet get a process descriptor. */
		if ((flags & RFPROC) == 0)
			return (EINVAL);

		/* Must provide a place to put a procdesc if creating one. */
		if (fr->fr_pd_fd == NULL)
			return (EINVAL);

		/* Check if we are using supported flags. */
		if ((fr->fr_pd_flags & ~PD_ALLOWED_AT_FORK) != 0)
			return (EINVAL);
	}

	p1 = td->td_proc;

	/*
	 * Here we don't create a new process, but we divorce
	 * certain parts of a process from itself.
	 */
	if ((flags & RFPROC) == 0) {
		if (fr->fr_procp != NULL)
			*fr->fr_procp = NULL;
		else if (fr->fr_pidp != NULL)
			*fr->fr_pidp = 0;
		return (FUNC13(td, flags));
	}

	fp_procdesc = NULL;
	newproc = NULL;
	vm2 = NULL;

	/*
	 * Increment the nprocs resource before allocations occur.
	 * Although process entries are dynamically created, we still
	 * keep a global limit on the maximum number we will
	 * create. There are hard-limits as to the number of processes
	 * that can run, established by the KVA and memory usage for
	 * the process data.
	 *
	 * Don't allow a nonprivileged user to use the last ten
	 * processes; don't let root exceed the limit.
	 */
	nprocs_new = FUNC6(&nprocs, 1) + 1;
	if (nprocs_new >= maxproc - 10) {
		if (FUNC21(td->td_ucred, PRIV_MAXPROC) != 0 ||
		    nprocs_new >= maxproc) {
			error = EAGAIN;
			FUNC29(&allproc_lock);
			if (FUNC19(&lastfail, &curfail, 1)) {
				FUNC20("maxproc limit exceeded by uid %u "
				    "(pid %d); see tuning(7) and "
				    "login.conf(5)\n",
				    td->td_ucred->cr_ruid, p1->p_pid);
			}
			FUNC30(&allproc_lock);
			goto fail2;
		}
	}

	/*
	 * If required, create a process descriptor in the parent first; we
	 * will abandon it if something goes wrong. We don't finit() until
	 * later.
	 */
	if (flags & RFPROCDESC) {
		error = FUNC24(td, &fp_procdesc, fr->fr_pd_fd,
		    fr->fr_pd_flags, fr->fr_pd_fcaps);
		if (error != 0)
			goto fail2;
	}

	mem_charged = 0;
	if (pages == 0)
		pages = kstack_pages;
	/* Allocate new proc. */
	newproc = FUNC33(proc_zone, M_WAITOK);
	td2 = FUNC0(newproc);
	if (td2 == NULL) {
		td2 = FUNC31(pages);
		if (td2 == NULL) {
			error = ENOMEM;
			goto fail2;
		}
		FUNC22(newproc, td2);
	} else {
		if (td2->td_kstack == 0 || td2->td_kstack_pages != pages) {
			if (td2->td_kstack != 0)
				FUNC35(td2);
			if (!FUNC32(td2, pages)) {
				error = ENOMEM;
				goto fail2;
			}
		}
	}

	if ((flags & RFMEM) == 0) {
		vm2 = FUNC36(p1->p_vmspace, &mem_charged);
		if (vm2 == NULL) {
			error = ENOMEM;
			goto fail2;
		}
		if (!FUNC27(mem_charged)) {
			/*
			 * The swap reservation failed. The accounting
			 * from the entries of the copied vm2 will be
			 * subtracted in vmspace_free(), so force the
			 * reservation there.
			 */
			FUNC28(mem_charged);
			error = ENOMEM;
			goto fail2;
		}
	} else
		vm2 = NULL;

	/*
	 * XXX: This is ugly; when we copy resource usage, we need to bump
	 *      per-cred resource counters.
	 */
	FUNC23(newproc, FUNC9(td->td_ucred));

	/*
	 * Initialize resource accounting for the child process.
	 */
	error = FUNC26(p1, newproc);
	if (error != 0) {
		error = EAGAIN;
		goto fail1;
	}

#ifdef MAC
	mac_proc_init(newproc);
#endif
	newproc->p_klist = FUNC14(&newproc->p_mtx);
	FUNC4(&newproc->p_ktr);

	/*
	 * Increment the count of procs running with this uid. Don't allow
	 * a nonprivileged user to exceed their current limit.
	 */
	cred = td->td_ucred;
	if (!FUNC7(cred->cr_ruidinfo, 1, FUNC15(td, RLIMIT_NPROC))) {
		if (FUNC21(cred, PRIV_PROC_LIMIT) != 0)
			goto fail0;
		FUNC7(cred->cr_ruidinfo, 1, 0);
	}

	FUNC10(td, fr, newproc, td2, vm2, fp_procdesc);
	return (0);
fail0:
	error = EAGAIN;
#ifdef MAC
	mac_proc_destroy(newproc);
#endif
	FUNC25(newproc);
fail1:
	FUNC8(newproc->p_ucred);
	newproc->p_ucred = NULL;
fail2:
	if (vm2 != NULL)
		FUNC37(vm2);
	FUNC34(proc_zone, newproc);
	if ((flags & RFPROCDESC) != 0 && fp_procdesc != NULL) {
		FUNC11(td, fp_procdesc, *fr->fr_pd_fd);
		FUNC12(fp_procdesc, td);
	}
	FUNC5(&nprocs, -1);
	FUNC18("fork", hz / 2);
	return (error);
}