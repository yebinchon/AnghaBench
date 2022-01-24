#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mm_struct {int dummy; } ;
struct ib_umem {TYPE_2__* odp_data; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; int /*<<< orphan*/  hlist; } ;
struct ib_ucontext {scalar_t__ tgid; int odp_mrs_count; int /*<<< orphan*/  umem_rwsem; TYPE_1__ mn; int /*<<< orphan*/  notifier_count; int /*<<< orphan*/  no_private_counters; int /*<<< orphan*/  umem_tree; } ;
typedef  scalar_t__ pid_t ;
struct TYPE_5__ {int mn_counters_active; void* page_list; void* dma_list; int /*<<< orphan*/  no_private_counters; int /*<<< orphan*/  interval_tree; int /*<<< orphan*/  notifier_completion; int /*<<< orphan*/  umem_mutex; struct ib_umem* umem; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct ib_umem*) ; 
 int /*<<< orphan*/  ib_umem_notifiers ; 
 int FUNC8 (struct ib_umem*) ; 
 scalar_t__ FUNC9 (struct ib_umem*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_2__* FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct mm_struct*) ; 
 int FUNC16 (TYPE_1__*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (void*) ; 
 void* FUNC26 (int) ; 

int FUNC27(struct ib_ucontext *context, struct ib_umem *umem)
{
	int ret_val;
	pid_t our_pid;
	struct mm_struct *mm = FUNC6(current);

	if (!mm)
		return -EINVAL;

	/* Prevent creating ODP MRs in child processes */
	FUNC21();
	our_pid = FUNC5(FUNC23(current));
	FUNC22();
	FUNC19(our_pid);
	if (context->tgid != our_pid) {
		ret_val = -EINVAL;
		goto out_mm;
	}

	umem->odp_data = FUNC12(sizeof(*umem->odp_data), GFP_KERNEL);
	if (!umem->odp_data) {
		ret_val = -ENOMEM;
		goto out_mm;
	}
	umem->odp_data->umem = umem;

	FUNC17(&umem->odp_data->umem_mutex);

	FUNC10(&umem->odp_data->notifier_completion);

	umem->odp_data->page_list = FUNC26(FUNC8(umem) *
					    sizeof(*umem->odp_data->page_list));
	if (!umem->odp_data->page_list) {
		ret_val = -ENOMEM;
		goto out_odp_data;
	}

	umem->odp_data->dma_list = FUNC26(FUNC8(umem) *
					  sizeof(*umem->odp_data->dma_list));
	if (!umem->odp_data->dma_list) {
		ret_val = -ENOMEM;
		goto out_page_list;
	}

	/*
	 * When using MMU notifiers, we will get a
	 * notification before the "current" task (and MM) is
	 * destroyed. We use the umem_rwsem semaphore to synchronize.
	 */
	FUNC3(&context->umem_rwsem);
	context->odp_mrs_count++;
	if (FUNC13(FUNC9(umem) != FUNC7(umem)))
		FUNC20(&umem->odp_data->interval_tree,
				   &context->umem_tree);
	if (FUNC13(!FUNC1(&context->notifier_count)) ||
	    context->odp_mrs_count == 1)
		umem->odp_data->mn_counters_active = true;
	else
		FUNC14(&umem->odp_data->no_private_counters,
			 &context->no_private_counters);
	FUNC4(&context->umem_rwsem);

	if (context->odp_mrs_count == 1) {
		/*
		 * Note that at this point, no MMU notifier is running
		 * for this context!
		 */
		FUNC2(&context->notifier_count, 0);
		FUNC0(&context->mn.hlist);
		context->mn.ops = &ib_umem_notifiers;
		/*
		 * Lock-dep detects a false positive for mmap_sem vs.
		 * umem_rwsem, due to not grasping downgrade_write correctly.
		 */
		ret_val = FUNC16(&context->mn, mm);
		if (ret_val) {
			FUNC18("Failed to register mmu_notifier %d\n", ret_val);
			ret_val = -EBUSY;
			goto out_mutex;
		}
	}

	FUNC24(&context->umem_rwsem);

	/*
	 * Note that doing an mmput can cause a notifier for the relevant mm.
	 * If the notifier is called while we hold the umem_rwsem, this will
	 * cause a deadlock. Therefore, we release the reference only after we
	 * released the semaphore.
	 */
	FUNC15(mm);
	return 0;

out_mutex:
	FUNC24(&context->umem_rwsem);
	FUNC25(umem->odp_data->dma_list);
out_page_list:
	FUNC25(umem->odp_data->page_list);
out_odp_data:
	FUNC11(umem->odp_data);
out_mm:
	FUNC15(mm);
	return ret_val;
}