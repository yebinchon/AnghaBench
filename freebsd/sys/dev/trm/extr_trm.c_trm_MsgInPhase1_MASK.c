#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int16_t ;
struct TYPE_3__ {int SRBState; } ;
typedef  TYPE_1__* PSRB ;
typedef  int /*<<< orphan*/  PACB ;

/* Variables and functions */
 int /*<<< orphan*/  DO_CLRFIFO ; 
 int /*<<< orphan*/  DO_DATALATCH ; 
 int /*<<< orphan*/  SCMD_FIFO_IN ; 
 int SRB_DISCONNECT ; 
 int SRB_MSGIN ; 
 int /*<<< orphan*/  TRMREG_SCSI_COMMAND ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRMREG_SCSI_COUNTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{

	FUNC0(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
	FUNC1(1,TRMREG_SCSI_COUNTER);
	if (!(pSRB->SRBState & SRB_MSGIN)) {
		pSRB->SRBState &= SRB_DISCONNECT;
		pSRB->SRBState |= SRB_MSGIN;
	}
	FUNC0(DO_DATALATCH, TRMREG_SCSI_CONTROL);
	/* it's important for atn stop*/
	/*
	 * SCSI cammand 
	 */
	FUNC2(SCMD_FIFO_IN, TRMREG_SCSI_COMMAND);
}