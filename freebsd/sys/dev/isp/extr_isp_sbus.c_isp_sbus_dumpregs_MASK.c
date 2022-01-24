#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  isp_dev; } ;
typedef  TYPE_1__ ispsoftc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BIU_CONF1 ; 
 int /*<<< orphan*/  BIU_ICR ; 
 int /*<<< orphan*/  BIU_ISR ; 
 int /*<<< orphan*/  BIU_SEMA ; 
 int /*<<< orphan*/  CDMA_CONF ; 
 int /*<<< orphan*/  CDMA_FIFO_STS ; 
 int /*<<< orphan*/  CDMA_STATUS ; 
 int /*<<< orphan*/  DDMA_CONF ; 
 int /*<<< orphan*/  DDMA_FIFO_STS ; 
 int /*<<< orphan*/  DDMA_STATUS ; 
 int /*<<< orphan*/  HCCR ; 
 int /*<<< orphan*/  HCCR_CMD_PAUSE ; 
 int /*<<< orphan*/  HCCR_CMD_RELEASE ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OUTMAILBOX0 ; 
 int /*<<< orphan*/  OUTMAILBOX1 ; 
 int /*<<< orphan*/  OUTMAILBOX2 ; 
 int /*<<< orphan*/  OUTMAILBOX3 ; 
 int /*<<< orphan*/  OUTMAILBOX4 ; 
 int /*<<< orphan*/  SXP_GROSS_ERR ; 
 int /*<<< orphan*/  SXP_INTERRUPT ; 
 int /*<<< orphan*/  SXP_PINS_CTRL ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(ispsoftc_t *isp, const char *msg)
{
	if (msg)
		FUNC3("%s: %s\n", FUNC2(isp->isp_dev), msg);
	else
		FUNC3("%s:\n", FUNC2(isp->isp_dev));
	FUNC3("    biu_conf1=%x", FUNC0(isp, BIU_CONF1));
	FUNC3(" biu_icr=%x biu_isr=%x biu_sema=%x ", FUNC0(isp, BIU_ICR),
	    FUNC0(isp, BIU_ISR), FUNC0(isp, BIU_SEMA));
	FUNC3("risc_hccr=%x\n", FUNC0(isp, HCCR));


	FUNC1(isp, HCCR, HCCR_CMD_PAUSE);
	FUNC3("    cdma_conf=%x cdma_sts=%x cdma_fifostat=%x\n",
		FUNC0(isp, CDMA_CONF), FUNC0(isp, CDMA_STATUS),
		FUNC0(isp, CDMA_FIFO_STS));
	FUNC3("    ddma_conf=%x ddma_sts=%x ddma_fifostat=%x\n",
		FUNC0(isp, DDMA_CONF), FUNC0(isp, DDMA_STATUS),
		FUNC0(isp, DDMA_FIFO_STS));
	FUNC3("    sxp_int=%x sxp_gross=%x sxp(scsi_ctrl)=%x\n",
		FUNC0(isp, SXP_INTERRUPT),
		FUNC0(isp, SXP_GROSS_ERR),
		FUNC0(isp, SXP_PINS_CTRL));
	FUNC1(isp, HCCR, HCCR_CMD_RELEASE);
	FUNC3("    mbox regs: %x %x %x %x %x\n",
	    FUNC0(isp, OUTMAILBOX0), FUNC0(isp, OUTMAILBOX1),
	    FUNC0(isp, OUTMAILBOX2), FUNC0(isp, OUTMAILBOX3),
	    FUNC0(isp, OUTMAILBOX4));
}