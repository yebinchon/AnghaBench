#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vmci_work_fn ;
struct vmci_delayed_work_info {void* data; int /*<<< orphan*/ * work_fn; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmci_delayed_work_task; int /*<<< orphan*/  vmci_delayed_work_lock; int /*<<< orphan*/  vmci_delayed_work_infos; } ;

/* Variables and functions */
 int VMCI_ERROR_NO_MEM ; 
 int /*<<< orphan*/  VMCI_MEMORY_ATOMIC ; 
 int VMCI_SUCCESS ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 
 struct vmci_delayed_work_info* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct vmci_delayed_work_info*,int /*<<< orphan*/ ) ; 
 TYPE_1__* vmci_sc ; 

int
FUNC5(vmci_work_fn *work_fn, void *data)
{
	struct vmci_delayed_work_info *delayed_work_info;

	delayed_work_info = FUNC3(sizeof(*delayed_work_info),
	    VMCI_MEMORY_ATOMIC);

	if (!delayed_work_info)
		return (VMCI_ERROR_NO_MEM);

	delayed_work_info->work_fn = work_fn;
	delayed_work_info->data = data;
	FUNC0(&vmci_sc->vmci_delayed_work_lock);
	FUNC4(&vmci_sc->vmci_delayed_work_infos,
	    delayed_work_info, entry);
	FUNC1(&vmci_sc->vmci_delayed_work_lock);

	FUNC2(taskqueue_thread,
	    &vmci_sc->vmci_delayed_work_task);

	return (VMCI_SUCCESS);
}