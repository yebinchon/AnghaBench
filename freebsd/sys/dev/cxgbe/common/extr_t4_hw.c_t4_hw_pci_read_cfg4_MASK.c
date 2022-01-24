#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_7__ {int /*<<< orphan*/  pf; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCIE_CFG_SPACE_DATA ; 
 int /*<<< orphan*/  A_PCIE_CFG_SPACE_REQ ; 
 scalar_t__ CHELSIO_T5 ; 
 int F_ENABLE ; 
 int F_LOCALCFG ; 
 int F_T6_ENABLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

u32 FUNC6(adapter_t *adap, int reg)
{
	u32 req = FUNC0(adap->pf) | FUNC1(reg);
	u32 val;

	if (FUNC2(adap) <= CHELSIO_T5)
		req |= F_ENABLE;
	else
		req |= F_T6_ENABLE;

	if (FUNC3(adap))
		req |= F_LOCALCFG;

	FUNC5(adap, A_PCIE_CFG_SPACE_REQ, req);
	val = FUNC4(adap, A_PCIE_CFG_SPACE_DATA);

	/*
	 * Reset F_ENABLE to 0 so reads of PCIE_CFG_SPACE_DATA won't cause a
	 * Configuration Space read.  (None of the other fields matter when
	 * F_ENABLE is 0 so a simple register write is easier than a
	 * read-modify-write via t4_set_reg_field().)
	 */
	FUNC5(adap, A_PCIE_CFG_SPACE_REQ, 0);

	return val;
}