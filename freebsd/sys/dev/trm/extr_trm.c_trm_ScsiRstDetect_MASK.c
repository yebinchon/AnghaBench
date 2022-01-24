#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
struct TYPE_6__ {int ACBFlag; int /*<<< orphan*/ * pActiveDCB; } ;
typedef  TYPE_1__* PACB ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DO_CLRFIFO ; 
 int RESET_DETECT ; 
 int RESET_DEV ; 
 int RESET_DONE ; 
 int /*<<< orphan*/  STOPDMAXFER ; 
 int /*<<< orphan*/  TRMREG_DMA_CONTROL ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC9(PACB pACB)
{
	int	intflag;
	u_long	wlval;

	FUNC1("trm_ScsiRstDetect \n");
	wlval = 1000;
	while (--wlval)
		FUNC0(1000);
	intflag = FUNC2();
    	FUNC8(STOPDMAXFER,TRMREG_DMA_CONTROL);

	FUNC7(DO_CLRFIFO,TRMREG_SCSI_CONTROL);

	if (pACB->ACBFlag & RESET_DEV)
		pACB->ACBFlag |= RESET_DONE;
	else {
		pACB->ACBFlag |= RESET_DETECT;
		FUNC6(pACB);
		/*	trm_DoingSRB_Done(pACB); ???? */
		FUNC5(pACB);
		pACB->pActiveDCB = NULL;
		pACB->ACBFlag = 0;
		FUNC4(pACB);
	}
	FUNC3(intflag);
    	return;
}