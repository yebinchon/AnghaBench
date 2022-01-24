#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int num_hwfns; } ;
struct TYPE_11__ {int error_recovery; int /*<<< orphan*/ * idle_chk_dwords; int /*<<< orphan*/ * grcdump_dwords; TYPE_1__ cdev; TYPE_2__* ifp; } ;
typedef  TYPE_3__ qlnx_host_t ;
struct TYPE_10__ {int if_drv_flags; } ;

/* Variables and functions */
 int IFF_DRV_OACTIVE ; 
 int IFF_DRV_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4(qlnx_host_t *ha)
{
	int	i;

	if (ha->ifp != NULL)
		ha->ifp->if_drv_flags &= ~(IFF_DRV_OACTIVE | IFF_DRV_RUNNING);

	FUNC0(ha, "enter\n");

	if (FUNC3(ha) == 0)
		return;

	ha->error_recovery = 1;

	for (i = 0; i < ha->cdev.num_hwfns; i++) {
		FUNC1(ha, &ha->grcdump_dwords[i], i);
		FUNC2(ha, &ha->idle_chk_dwords[i], i);
	}

	FUNC0(ha, "exit\n");

	return;
}