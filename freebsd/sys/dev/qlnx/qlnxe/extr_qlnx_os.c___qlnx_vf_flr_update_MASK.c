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
struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_6__ {TYPE_1__* sriov_task; int /*<<< orphan*/  sriov_initialized; } ;
typedef  TYPE_2__ qlnx_host_t ;
struct TYPE_5__ {int /*<<< orphan*/  pf_task; int /*<<< orphan*/ * pf_taskqueue; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,TYPE_2__*,scalar_t__,struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct ecore_hwfn *p_hwfn)
{
	qlnx_host_t *ha = (qlnx_host_t *)p_hwfn->p_dev;
	int i;

	if (!ha->sriov_initialized)
		return;

	FUNC0(ha,  "ha = %p cdev = %p p_hwfn = %p \n",
		ha, p_hwfn->p_dev, p_hwfn);

	if ((i = FUNC2(p_hwfn)) == -1)
		return;


	if (ha->sriov_task[i].pf_taskqueue != NULL) {

		FUNC1(&ha->sriov_task[i].flags,
			QLNX_SRIOV_TASK_FLAGS_VF_FLR_UPDATE);

		FUNC3(ha->sriov_task[i].pf_taskqueue,
			&ha->sriov_task[i].pf_task);
	}

	return;
}