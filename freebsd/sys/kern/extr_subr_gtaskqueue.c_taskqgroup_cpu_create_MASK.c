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
struct taskqgroup_cpu {int tgc_cpu; int /*<<< orphan*/  tgc_taskq; int /*<<< orphan*/  tgc_tasks; } ;
struct taskqgroup {int /*<<< orphan*/  tqg_name; struct taskqgroup_cpu* tqg_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PI_SOFT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static void
FUNC3(struct taskqgroup *qgroup, int idx, int cpu)
{
	struct taskqgroup_cpu *qcpu;

	qcpu = &qgroup->tqg_queue[idx];
	FUNC0(&qcpu->tgc_tasks);
	qcpu->tgc_taskq = FUNC1(NULL, M_WAITOK,
	    taskqueue_thread_enqueue, &qcpu->tgc_taskq);
	FUNC2(&qcpu->tgc_taskq, 1, PI_SOFT,
	    "%s_%d", qgroup->tqg_name, idx);
	qcpu->tgc_cpu = cpu;
}