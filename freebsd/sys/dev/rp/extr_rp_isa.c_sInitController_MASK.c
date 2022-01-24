#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_18__ {int* io_rid; scalar_t__ NumAiop; scalar_t__* AiopID; int /*<<< orphan*/ * AiopNumChan; int /*<<< orphan*/ ** io; int /*<<< orphan*/  dev; int /*<<< orphan*/  CtlID; } ;
struct TYPE_17__ {int MBaseIO; int MReg0IO; int MReg1IO; int MReg2IO; int MReg3IO; int MReg2; int MReg3; } ;
typedef  TYPE_1__ CONTROLLER_T ;
typedef  int Byte_t ;

/* Variables and functions */
 scalar_t__ AIOPID_NULL ; 
 int /*<<< orphan*/  CLOCK_PRESC ; 
 int /*<<< orphan*/  CTLID_0001 ; 
 TYPE_15__* FUNC0 (TYPE_1__*) ; 
 int PERIODIC_ONLY ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  _CLK_PRE ; 
 int /*<<< orphan*/  _INDX_ADDR ; 
 int /*<<< orphan*/  _INDX_DATA ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int rp_nisadevs ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_1__*,int) ; 
 scalar_t__* sIRQMap ; 
 scalar_t__ FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC12(	CONTROLLER_T *CtlP,
			CONTROLLER_T *MudbacCtlP,
			int AiopNum,
			int IRQNum,
			Byte_t Frequency,
			int PeriodicOnly)
{
	int		i;
	int		ctl_base, aiop_base, aiop_size;

	CtlP->CtlID = CTLID_0001;		/* controller release 1 */

	FUNC0(CtlP)->MBaseIO = rp_nisadevs;
	if (MudbacCtlP->io[FUNC0(CtlP)->MBaseIO] != NULL) {
		FUNC0(CtlP)->MReg0IO = 0x40 + 0;
		FUNC0(CtlP)->MReg1IO = 0x40 + 1;
		FUNC0(CtlP)->MReg2IO = 0x40 + 2;
		FUNC0(CtlP)->MReg3IO = 0x40 + 3;
	} else {
		MudbacCtlP->io_rid[FUNC0(CtlP)->MBaseIO] = FUNC0(CtlP)->MBaseIO;
		ctl_base = FUNC3(MudbacCtlP->io[0]) + 0x40 + 0x400 * rp_nisadevs;
		MudbacCtlP->io[FUNC0(CtlP)->MBaseIO] = FUNC1(MudbacCtlP->dev, SYS_RES_IOPORT, &CtlP->io_rid[FUNC0(CtlP)->MBaseIO], ctl_base, ctl_base + 3, 4, RF_ACTIVE);
		FUNC0(CtlP)->MReg0IO = 0;
		FUNC0(CtlP)->MReg1IO = 1;
		FUNC0(CtlP)->MReg2IO = 2;
		FUNC0(CtlP)->MReg3IO = 3;
	}
#if 1
	FUNC0(CtlP)->MReg2 = 0;			/* interrupt disable */
	FUNC0(CtlP)->MReg3 = 0;			/* no periodic interrupts */
#else
	if(sIRQMap[IRQNum] == 0)		/* interrupts globally disabled */
	{
		ISACTL(CtlP)->MReg2 = 0;		/* interrupt disable */
		ISACTL(CtlP)->MReg3 = 0;		/* no periodic interrupts */
	}
	else
	{
		ISACTL(CtlP)->MReg2 = sIRQMap[IRQNum];	/* set IRQ number */
		ISACTL(CtlP)->MReg3 = Frequency;	/* set frequency */
		if(PeriodicOnly)		/* periodic interrupt only */
		{
			ISACTL(CtlP)->MReg3 |= PERIODIC_ONLY;
		}
	}
#endif
	FUNC6(MudbacCtlP,FUNC0(CtlP)->MBaseIO,FUNC0(CtlP)->MReg2IO,FUNC0(CtlP)->MReg2);
	FUNC6(MudbacCtlP,FUNC0(CtlP)->MBaseIO,FUNC0(CtlP)->MReg3IO,FUNC0(CtlP)->MReg3);
	FUNC7(MudbacCtlP,CtlP);			/* clear EOI if warm init */

	/* Init AIOPs */
	CtlP->NumAiop = 0;
	for(i=0; i < AiopNum; i++)
	{
		if (CtlP->io[i] == NULL) {
			CtlP->io_rid[i] = i;
			aiop_base = FUNC3(CtlP->io[0]) + 0x400 * i;
			if (rp_nisadevs == 0)
				aiop_size = 0x44;
			else
				aiop_size = 0x40;
			CtlP->io[i] = FUNC1(CtlP->dev, SYS_RES_IOPORT, &CtlP->io_rid[i], aiop_base, aiop_base + aiop_size - 1, aiop_size, RF_ACTIVE);
		} else
			aiop_base = FUNC3(CtlP->io[i]);
		FUNC6(MudbacCtlP,FUNC0(CtlP)->MBaseIO,
			    FUNC0(CtlP)->MReg2IO,
			    FUNC0(CtlP)->MReg2 | (i & 0x03));	/* AIOP index */
		FUNC6(MudbacCtlP,FUNC0(CtlP)->MBaseIO,
			    FUNC0(CtlP)->MReg0IO,
			    (Byte_t)(aiop_base >> 6));		/* set up AIOP I/O in MUDBAC */
		FUNC9(MudbacCtlP,CtlP,i);			/* enable the AIOP */

		CtlP->AiopID[i] = FUNC10(CtlP, i);		/* read AIOP ID */
		if(CtlP->AiopID[i] == AIOPID_NULL)		/* if AIOP does not exist */
		{
			FUNC8(MudbacCtlP,CtlP,i);		/* disable AIOP */
			FUNC2(CtlP->dev, SYS_RES_IOPORT, CtlP->io_rid[i], CtlP->io[i]);
			CtlP->io[i] = NULL;
			break;					/* done looking for AIOPs */
		}

		CtlP->AiopNumChan[i] = FUNC11(CtlP, i);	/* num channels in AIOP */
		FUNC5(CtlP,i,_INDX_ADDR,_CLK_PRE);	/* clock prescaler */
		FUNC4(CtlP,i,_INDX_DATA,CLOCK_PRESC);
		CtlP->NumAiop++;				/* bump count of AIOPs */
		FUNC8(MudbacCtlP,CtlP,i);			/* disable AIOP */
	}

	if(CtlP->NumAiop == 0)
		return(-1);
	else
		return(CtlP->NumAiop);
}