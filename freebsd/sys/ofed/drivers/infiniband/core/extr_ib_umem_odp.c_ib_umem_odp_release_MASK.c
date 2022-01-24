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
struct mm_struct {int dummy; } ;
struct ib_umem {struct ib_umem* odp_data; int /*<<< orphan*/  page_list; int /*<<< orphan*/  dma_list; int /*<<< orphan*/  notifier_completion; int /*<<< orphan*/  no_private_counters; int /*<<< orphan*/  mn_counters_active; int /*<<< orphan*/  interval_tree; struct ib_ucontext* context; } ;
struct ib_ucontext {int /*<<< orphan*/  umem_rwsem; int /*<<< orphan*/  mn; int /*<<< orphan*/  tgid; int /*<<< orphan*/  odp_mrs_count; int /*<<< orphan*/  umem_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIDTYPE_PID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC4 (struct task_struct*) ; 
 scalar_t__ FUNC5 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_umem*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_umem*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC13 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

void FUNC17(struct ib_umem *umem)
{
	struct ib_ucontext *context = umem->context;

	/*
	 * Ensure that no more pages are mapped in the umem.
	 *
	 * It is the driver's responsibility to ensure, before calling us,
	 * that the hardware will not attempt to access the MR any more.
	 */
	FUNC6(umem, FUNC7(umem),
				    FUNC5(umem));

	FUNC1(&context->umem_rwsem);
	if (FUNC9(FUNC7(umem) != FUNC5(umem)))
		FUNC14(&umem->odp_data->interval_tree,
				   &context->umem_tree);
	context->odp_mrs_count--;
	if (!umem->odp_data->mn_counters_active) {
		FUNC10(&umem->odp_data->no_private_counters);
		FUNC0(&umem->odp_data->notifier_completion);
	}

	/*
	 * Downgrade the lock to a read lock. This ensures that the notifiers
	 * (who lock the mutex for reading) will be able to finish, and we
	 * will be able to enventually obtain the mmu notifiers SRCU. Note
	 * that since we are doing it atomically, no other user could register
	 * and unregister while we do the check.
	 */
	FUNC2(&context->umem_rwsem);
	if (!context->odp_mrs_count) {
		struct task_struct *owning_process = NULL;
		struct mm_struct *owning_mm        = NULL;

		owning_process = FUNC3(context->tgid,
					      PIDTYPE_PID);
		if (owning_process == NULL)
			/*
			 * The process is already dead, notifier were removed
			 * already.
			 */
			goto out;

		owning_mm = FUNC4(owning_process);
		if (owning_mm == NULL)
			/*
			 * The process' mm is already dead, notifier were
			 * removed already.
			 */
			goto out_put_task;
		FUNC12(&context->mn, owning_mm);

		FUNC11(owning_mm);

out_put_task:
		FUNC13(owning_process);
	}
out:
	FUNC15(&context->umem_rwsem);

	FUNC16(umem->odp_data->dma_list);
	FUNC16(umem->odp_data->page_list);
	FUNC8(umem->odp_data);
	FUNC8(umem);
}