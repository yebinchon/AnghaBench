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
typedef  int u_int16_t ;
struct TYPE_7__ {int /*<<< orphan*/ * ppath; scalar_t__ ACBFlag; int /*<<< orphan*/ * pActiveDCB; } ;
typedef  TYPE_1__* PACB ;

/* Variables and functions */
 int /*<<< orphan*/  AC_BUS_RESET ; 
 int CLRXFIFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DO_CLRFIFO ; 
 int EN_SCSIINTR ; 
 int /*<<< orphan*/  TRMREG_DMA_CONTROL ; 
 int /*<<< orphan*/  TRMREG_DMA_INTEN ; 
 int /*<<< orphan*/  TRMREG_SCSI_CONTROL ; 
 int /*<<< orphan*/  TRMREG_SCSI_INTEN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(PACB pACB)
{
	int		intflag;
	u_int16_t	i;

    	FUNC1("trm: RESET");
    	intflag = FUNC2();
	FUNC9(0x00, TRMREG_DMA_INTEN);
	FUNC9(0x00, TRMREG_SCSI_INTEN);

	FUNC7(pACB);
	for (i = 0; i < 500; i++)
		FUNC0(1000);
    	FUNC9(0x7F, TRMREG_SCSI_INTEN); 
	/* Enable DMA interrupt	*/
	FUNC9(EN_SCSIINTR, TRMREG_DMA_INTEN);
	/* Clear DMA FIFO */
	FUNC9(CLRXFIFO, TRMREG_DMA_CONTROL);
	/* Clear SCSI FIFO */
	FUNC8(DO_CLRFIFO,TRMREG_SCSI_CONTROL);
	FUNC6(pACB);
	FUNC5(pACB);
	pACB->pActiveDCB = NULL;
	pACB->ACBFlag = 0;/* RESET_DETECT, RESET_DONE ,RESET_DEV */
	FUNC4(pACB);
	/* Tell the XPT layer that a bus reset occurred    */
	if (pACB->ppath != NULL)
		FUNC10(AC_BUS_RESET, pACB->ppath, NULL);
	FUNC3(intflag);
    	return;
}