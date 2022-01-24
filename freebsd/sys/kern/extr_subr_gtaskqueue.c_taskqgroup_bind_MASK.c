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
struct taskqgroup {int tqg_cnt; TYPE_1__* tqg_queue; } ;
struct taskq_bind_task {int /*<<< orphan*/  bt_task; int /*<<< orphan*/  bt_cpuid; } ;
struct TYPE_2__ {int /*<<< orphan*/  tgc_taskq; int /*<<< orphan*/  tgc_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct taskq_bind_task*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct taskq_bind_task* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  taskqgroup_binder ; 

__attribute__((used)) static void
FUNC3(struct taskqgroup *qgroup)
{
	struct taskq_bind_task *gtask;
	int i;

	/*
	 * Bind taskqueue threads to specific CPUs, if they have been assigned
	 * one.
	 */
	if (qgroup->tqg_cnt == 1)
		return;

	for (i = 0; i < qgroup->tqg_cnt; i++) {
		gtask = FUNC2(sizeof (*gtask), M_DEVBUF, M_WAITOK);
		FUNC0(&gtask->bt_task, 0, 0, taskqgroup_binder, gtask);
		gtask->bt_cpuid = qgroup->tqg_queue[i].tgc_cpu;
		FUNC1(qgroup->tqg_queue[i].tgc_taskq,
		    &gtask->bt_task);
	}
}