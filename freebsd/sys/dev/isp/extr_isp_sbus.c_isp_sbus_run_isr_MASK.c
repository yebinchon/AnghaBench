#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_11__ {scalar_t__ isp_state; } ;
typedef  TYPE_1__ ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIU_ISR ; 
 int /*<<< orphan*/  BIU_SEMA ; 
 int BIU_SEMA_LOCK ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HCCR ; 
 int /*<<< orphan*/  HCCR_CMD_CLEAR_RISC_INT ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  ISP_LOGDEBUG3 ; 
 scalar_t__ ISP_RUNSTATE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int MBOX_COMMAND_COMPLETE ; 
 int /*<<< orphan*/  OUTMAILBOX0 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int) ; 

__attribute__((used)) static void
FUNC8(ispsoftc_t *isp)
{
	uint16_t isr, sema, info;

	isr = FUNC0(isp, FUNC3(isp, BIU_ISR));
	sema = FUNC0(isp, FUNC3(isp, BIU_SEMA));
	FUNC7(isp, ISP_LOGDEBUG3, "ISR 0x%x SEMA 0x%x", isr, sema);
	isr &= FUNC1(isp);
	sema &= BIU_SEMA_LOCK;
	if (isr == 0 && sema == 0)
		return;
	if (sema != 0) {
		info = FUNC0(isp, FUNC3(isp, OUTMAILBOX0));
		if (info & MBOX_COMMAND_COMPLETE)
			FUNC5(isp, info);
		else
			FUNC4(isp, info);
		if (isp->isp_state == ISP_RUNSTATE)
			FUNC6(isp);
	} else
		FUNC6(isp);
	FUNC2(isp, HCCR, HCCR_CMD_CLEAR_RISC_INT);
	if (sema)
		FUNC2(isp, BIU_SEMA, 0);
}