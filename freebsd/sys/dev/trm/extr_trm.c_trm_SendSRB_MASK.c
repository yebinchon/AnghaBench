#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct TYPE_15__ {int ACBFlag; scalar_t__ pActiveDCB; } ;
struct TYPE_14__ {scalar_t__ MaxActiveCommandCnt; scalar_t__ GoingSRBCnt; TYPE_1__* pGoingLastSRB; TYPE_1__* pGoingSRB; TYPE_1__* pWaitingSRB; } ;
struct TYPE_13__ {struct TYPE_13__* pNextSRB; TYPE_2__* pSRBDCB; } ;
typedef  TYPE_1__* PSRB ;
typedef  TYPE_2__* PDCB ;
typedef  TYPE_3__* PACB ;

/* Variables and functions */
 int RESET_DETECT ; 
 int RESET_DEV ; 
 int RESET_DONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(PACB pACB, PSRB pSRB)
{
	PDCB	pDCB;

	pDCB = pSRB->pSRBDCB;
	if (!(pDCB->MaxActiveCommandCnt > pDCB->GoingSRBCnt) || (pACB->pActiveDCB)
	    || (pACB->ACBFlag & (RESET_DETECT+RESET_DONE+RESET_DEV))) {
		FUNC0("pDCB->MaxCommand=%d \n",pDCB->MaxActiveCommandCnt);        
		FUNC0("pDCB->GoingSRBCnt=%d \n",pDCB->GoingSRBCnt);
		FUNC0("pACB->pActiveDCB=%8x \n",(u_int)pACB->pActiveDCB);
		FUNC0("pACB->ACBFlag=%x \n",pACB->ACBFlag);
	    	FUNC2(pDCB, pSRB);
		goto SND_EXIT;
	}

	if (pDCB->pWaitingSRB) {
		FUNC2(pDCB, pSRB);
		pSRB = pDCB->pWaitingSRB;
		pDCB->pWaitingSRB = pSRB->pNextSRB;
		pSRB->pNextSRB = NULL;
	}

	if (!FUNC3(pACB, pDCB, pSRB)) { 
	/* 
	 * If trm_StartSCSI return 0 :
	 * current interrupt status is interrupt enable 
	 * It's said that SCSI processor is unoccupied 
	 */
		pDCB->GoingSRBCnt++; /* stack waiting SRB*/
		if (pDCB->pGoingSRB) {
			pDCB->pGoingLastSRB->pNextSRB = pSRB;
			pDCB->pGoingLastSRB = pSRB;
		} else {
			pDCB->pGoingSRB = pSRB;
			pDCB->pGoingLastSRB = pSRB;
		}
	} else {
	/* 
	 * If trm_StartSCSI return 1 :
	 * current interrupt status is interrupt disreenable 
	 * It's said that SCSI processor has more one SRB need to do
	 */
		FUNC1(pDCB, pSRB);
	}
SND_EXIT:
	return;
}