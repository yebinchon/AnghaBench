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
struct task_struct {int dummy; } ;
struct mm_struct {unsigned long pinned_vm; int /*<<< orphan*/  mmap_sem; } ;
struct ib_umem {unsigned long diff; int /*<<< orphan*/  work; struct mm_struct* mm; int /*<<< orphan*/  pid; struct ib_ucontext* context; scalar_t__ odp_data; } ;
struct ib_ucontext {scalar_t__ closing; int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ib_umem*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  ib_umem_account ; 
 unsigned long FUNC6 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC7 (struct ib_umem*) ; 
 int /*<<< orphan*/  ib_wq ; 
 int /*<<< orphan*/  FUNC8 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC9 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

void FUNC14(struct ib_umem *umem)
{
	struct ib_ucontext *context = umem->context;
	struct mm_struct *mm;
	struct task_struct *task;
	unsigned long diff;

	if (umem->odp_data) {
		FUNC7(umem);
		return;
	}

	FUNC1(umem->context->device, umem, 1);

	task = FUNC4(umem->pid, PIDTYPE_PID);
	FUNC10(umem->pid);
	if (!task)
		goto out;
	mm = FUNC5(task);
	FUNC11(task);
	if (!mm)
		goto out;

	diff = FUNC6(umem);

	/*
	 * We may be called with the mm's mmap_sem already held.  This
	 * can happen when a userspace munmap() is the call that drops
	 * the last reference to our file and calls our release
	 * method.  If there are memory regions to destroy, we'll end
	 * up here and not be able to take the mmap_sem.  In that case
	 * we defer the vm_locked accounting to the system workqueue.
	 */
	if (context->closing) {
		if (!FUNC3(&mm->mmap_sem)) {
			FUNC0(&umem->work, ib_umem_account);
			umem->mm   = mm;
			umem->diff = diff;

			FUNC12(ib_wq, &umem->work);
			return;
		}
	} else
		FUNC2(&mm->mmap_sem);

	mm->pinned_vm -= diff;
	FUNC13(&mm->mmap_sem);
	FUNC9(mm);
out:
	FUNC8(umem);
}