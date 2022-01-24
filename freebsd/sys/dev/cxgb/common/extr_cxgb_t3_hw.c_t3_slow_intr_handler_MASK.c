#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_19__ {int slow_intr_mask; int /*<<< orphan*/  mc5; int /*<<< orphan*/  cm; int /*<<< orphan*/  pmtx; int /*<<< orphan*/  pmrx; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_PL_INT_CAUSE0 ; 
 int F_CIM ; 
 int F_CPL_SWITCH ; 
 int F_MC5A ; 
 int F_MC7_CM ; 
 int F_MC7_PMRX ; 
 int F_MC7_PMTX ; 
 int F_MPS0 ; 
 int F_PCIM0 ; 
 int F_PM1_RX ; 
 int F_PM1_TX ; 
 int F_SGE3 ; 
 int F_T3DBG ; 
 int F_TP1 ; 
 int F_ULP2_RX ; 
 int F_ULP2_TX ; 
 int F_XGMAC0_0 ; 
 int F_XGMAC0_1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 

int FUNC18(adapter_t *adapter)
{
	u32 cause = FUNC12(adapter, A_PL_INT_CAUSE0);

	cause &= adapter->slow_intr_mask;
	if (!cause)
		return 0;
	if (cause & F_PCIM0) {
		if (FUNC2(adapter))
			FUNC7(adapter);
		else
			FUNC6(adapter);
	}
	if (cause & F_SGE3)
		FUNC13(adapter);
	if (cause & F_MC7_PMRX)
		FUNC4(&adapter->pmrx);
	if (cause & F_MC7_PMTX)
		FUNC4(&adapter->pmtx);
	if (cause & F_MC7_CM)
		FUNC4(&adapter->cm);
	if (cause & F_CIM)
		FUNC0(adapter);
	if (cause & F_TP1)
		FUNC15(adapter);
	if (cause & F_ULP2_RX)
		FUNC16(adapter);
	if (cause & F_ULP2_TX)
		FUNC17(adapter);
	if (cause & F_PM1_RX)
		FUNC9(adapter);
	if (cause & F_PM1_TX)
		FUNC10(adapter);
	if (cause & F_CPL_SWITCH)
		FUNC1(adapter);
	if (cause & F_MPS0)
		FUNC5(adapter);
	if (cause & F_MC5A)
		FUNC11(&adapter->mc5);
	if (cause & F_XGMAC0_0)
		FUNC3(adapter, 0);
	if (cause & F_XGMAC0_1)
		FUNC3(adapter, 1);
	if (cause & F_T3DBG)
		FUNC8(adapter);

	/* Clear the interrupts just processed. */
	FUNC14(adapter, A_PL_INT_CAUSE0, cause);
	(void) FUNC12(adapter, A_PL_INT_CAUSE0); /* flush */
	return 1;
}