#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {TYPE_1__* pqi_reg; } ;
typedef  TYPE_2__ pqisrc_softstate_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_6__ {int /*<<< orphan*/  legacy_intr_mask_set; int /*<<< orphan*/  legacy_intr_mask_clr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PQISRC_LEGACY_INTX_MASK ; 
 int /*<<< orphan*/  PQI_LEGACY_INTR_MASK_CLR ; 

void FUNC3(pqisrc_softstate_t *softs, boolean_t enable_intx)
{
	uint32_t intx_mask;
	uint32_t *reg_addr = NULL;
	
	FUNC0("IN\n");
	
	if (enable_intx)
		reg_addr = &softs->pqi_reg->legacy_intr_mask_clr;
	else
		reg_addr = &softs->pqi_reg->legacy_intr_mask_set;
	
	intx_mask = FUNC1(softs, reg_addr, PQI_LEGACY_INTR_MASK_CLR);
	intx_mask |= PQISRC_LEGACY_INTX_MASK;
	FUNC2(softs, reg_addr, PQI_LEGACY_INTR_MASK_CLR ,intx_mask);
	
	FUNC0("OUT\n");
}