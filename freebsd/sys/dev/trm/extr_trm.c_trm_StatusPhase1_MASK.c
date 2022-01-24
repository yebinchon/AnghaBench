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
struct TYPE_3__ {int /*<<< orphan*/  SRBState; } ;
typedef  TYPE_1__* PSRB ;
typedef  int /*<<< orphan*/  PACB ;

/* Variables and functions */
 int /*<<< orphan*/  CLRXFIFO ; 
 int /*<<< orphan*/  DO_CLRFIFO ; 
 int /*<<< orphan*/  DO_DATALATCH ; 
 int /*<<< orphan*/  SCMD_COMP ; 
 int /*<<< orphan*/  SRB_STATUS ; 
 int /*<<< orphan*/  TRMREG_DMA_COMMAND ; 
 int /*<<< orphan*/  TRMREG_DMA_CONTROL ; 
 int /*<<< orphan*/  TRMREG_DMA_FIFOCNT ; 
 int /*<<< orphan*/  TRMREG_SCSI_COMMAND ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRMREG_SCSI_FIFOCNT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(PACB pACB, PSRB pSRB, u_int16_t *pscsi_status)
{

	if (FUNC0(TRMREG_DMA_COMMAND) & 0x0001) {
		if (!(FUNC1(TRMREG_SCSI_FIFOCNT) & 0x40))
	       		FUNC2(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
		if (!(FUNC0(TRMREG_DMA_FIFOCNT) & 0x8000))
			FUNC3(CLRXFIFO, TRMREG_DMA_CONTROL);
	} else {
		if (!(FUNC0(TRMREG_DMA_FIFOCNT) & 0x8000))
			FUNC3(CLRXFIFO, TRMREG_DMA_CONTROL);
		if (!(FUNC1(TRMREG_SCSI_FIFOCNT) & 0x40))
			FUNC2(DO_CLRFIFO, TRMREG_SCSI_CONTROL);
	}
	pSRB->SRBState = SRB_STATUS;
	FUNC2(DO_DATALATCH, TRMREG_SCSI_CONTROL);
	/* it's important for atn stop */
	/*
	 * SCSI cammand 
	 */
	FUNC3(SCMD_COMP, TRMREG_SCSI_COMMAND);
}