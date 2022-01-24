#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ isp_state; } ;
typedef  TYPE_1__ ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIU2100_CSR ; 
 int /*<<< orphan*/  BIU2100_FB_REGS ; 
 int /*<<< orphan*/  BIU2100_FPM0_REGS ; 
 int /*<<< orphan*/  BIU2100_RISC_REGS ; 
 int /*<<< orphan*/  BIU2400_HCCR ; 
 int /*<<< orphan*/  BIU2400_ICR ; 
 int /*<<< orphan*/  BIU_ICR ; 
 int /*<<< orphan*/  FBMCMD_FIFO_RESET_ALL ; 
 int /*<<< orphan*/  FBM_CMD ; 
 int /*<<< orphan*/  FPM_DIAG_CONFIG ; 
 int /*<<< orphan*/  FPM_SOFT_RESET ; 
 int /*<<< orphan*/  HCCR ; 
 int /*<<< orphan*/  HCCR_2400_CMD_PAUSE ; 
 int /*<<< orphan*/  HCCR_CMD_PAUSE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ ISP_RESETSTATE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void
FUNC5(ispsoftc_t *isp)
{

	if (isp->isp_state >= ISP_RESETSTATE)
		FUNC4(isp);
	FUNC0(isp);
	if (FUNC3(isp)) {
		if (FUNC2(isp)) {
			FUNC1(isp, BIU2400_ICR, 0);
			FUNC1(isp, BIU2400_HCCR, HCCR_2400_CMD_PAUSE);
		} else {
			FUNC1(isp, BIU_ICR, 0);
			FUNC1(isp, HCCR, HCCR_CMD_PAUSE);
			FUNC1(isp, BIU2100_CSR, BIU2100_FPM0_REGS);
			FUNC1(isp, FPM_DIAG_CONFIG, FPM_SOFT_RESET);
			FUNC1(isp, BIU2100_CSR, BIU2100_FB_REGS);
			FUNC1(isp, FBM_CMD, FBMCMD_FIFO_RESET_ALL);
			FUNC1(isp, BIU2100_CSR, BIU2100_RISC_REGS);
		}
	} else {
		FUNC1(isp, BIU_ICR, 0);
		FUNC1(isp, HCCR, HCCR_CMD_PAUSE);
	}
}