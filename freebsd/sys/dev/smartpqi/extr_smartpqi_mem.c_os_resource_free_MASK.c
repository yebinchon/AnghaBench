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
struct TYPE_4__ {int /*<<< orphan*/ * pqi_regs_res0; int /*<<< orphan*/  pqi_regs_rid0; int /*<<< orphan*/  pqi_dev; scalar_t__ pqi_parent_dmat; } ;
struct TYPE_5__ {TYPE_1__ os_specific; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(pqisrc_softstate_t *softs)
{
	if(softs->os_specific.pqi_parent_dmat)
		FUNC0(softs->os_specific.pqi_parent_dmat);

	if (softs->os_specific.pqi_regs_res0 != NULL)
                FUNC1(softs->os_specific.pqi_dev,
						SYS_RES_MEMORY,
				softs->os_specific.pqi_regs_rid0, 
				softs->os_specific.pqi_regs_res0);
}