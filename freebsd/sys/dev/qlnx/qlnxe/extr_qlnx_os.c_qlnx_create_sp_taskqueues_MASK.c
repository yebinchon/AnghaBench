#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  tq_name ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_5__ {int num_hwfns; struct ecore_hwfn* hwfns; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** sp_taskqueue; int /*<<< orphan*/ * sp_task; TYPE_1__ cdev; } ;
typedef  TYPE_2__ qlnx_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PI_NET ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  qlnx_sp_taskqueue ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread_enqueue ; 

__attribute__((used)) static int
FUNC6(qlnx_host_t *ha)
{
	int	i;
	uint8_t	tq_name[32];

	for (i = 0; i < ha->cdev.num_hwfns; i++) {

                struct ecore_hwfn *p_hwfn = &ha->cdev.hwfns[i];

		FUNC2(tq_name, sizeof (tq_name));
		FUNC3(tq_name, sizeof (tq_name), "ql_sp_tq_%d", i);

		FUNC1(&ha->sp_task[i], 0, qlnx_sp_taskqueue, p_hwfn);

		ha->sp_taskqueue[i] = FUNC4(tq_name, M_NOWAIT,
			 taskqueue_thread_enqueue, &ha->sp_taskqueue[i]);

		if (ha->sp_taskqueue[i] == NULL) 
			return (-1);

		FUNC5(&ha->sp_taskqueue[i], 1, PI_NET, "%s",
			tq_name);

		FUNC0(ha, "%p\n", ha->sp_taskqueue[i]);
	}

	return (0);
}