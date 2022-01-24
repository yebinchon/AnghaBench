#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_hwfns; } ;
struct TYPE_7__ {TYPE_2__* sriov_task; TYPE_1__ cdev; } ;
typedef  TYPE_3__ qlnx_host_t ;
struct TYPE_6__ {int /*<<< orphan*/ * pf_taskqueue; int /*<<< orphan*/  pf_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(qlnx_host_t *ha)
{
	int	i;

	for (i = 0; i < ha->cdev.num_hwfns; i++) {
		if (ha->sriov_task[i].pf_taskqueue != NULL) {
			FUNC0(ha->sriov_task[i].pf_taskqueue,
				&ha->sriov_task[i].pf_task);
			FUNC1(ha->sriov_task[i].pf_taskqueue);
			ha->sriov_task[i].pf_taskqueue = NULL;
		}
	}
	return;
}