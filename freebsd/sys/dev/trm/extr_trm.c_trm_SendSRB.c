
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_15__ {int ACBFlag; scalar_t__ pActiveDCB; } ;
struct TYPE_14__ {scalar_t__ MaxActiveCommandCnt; scalar_t__ GoingSRBCnt; TYPE_1__* pGoingLastSRB; TYPE_1__* pGoingSRB; TYPE_1__* pWaitingSRB; } ;
struct TYPE_13__ {struct TYPE_13__* pNextSRB; TYPE_2__* pSRBDCB; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;
typedef TYPE_3__* PACB ;


 int RESET_DETECT ;
 int RESET_DEV ;
 int RESET_DONE ;
 int TRM_DPRINTF (char*,int) ;
 int trm_RewaitSRB0 (TYPE_2__*,TYPE_1__*) ;
 int trm_SRBwaiting (TYPE_2__*,TYPE_1__*) ;
 int trm_StartSCSI (TYPE_3__*,TYPE_2__*,TYPE_1__*) ;

__attribute__((used)) static void
trm_SendSRB(PACB pACB, PSRB pSRB)
{
 PDCB pDCB;

 pDCB = pSRB->pSRBDCB;
 if (!(pDCB->MaxActiveCommandCnt > pDCB->GoingSRBCnt) || (pACB->pActiveDCB)
     || (pACB->ACBFlag & (RESET_DETECT+RESET_DONE+RESET_DEV))) {
  TRM_DPRINTF("pDCB->MaxCommand=%d \n",pDCB->MaxActiveCommandCnt);
  TRM_DPRINTF("pDCB->GoingSRBCnt=%d \n",pDCB->GoingSRBCnt);
  TRM_DPRINTF("pACB->pActiveDCB=%8x \n",(u_int)pACB->pActiveDCB);
  TRM_DPRINTF("pACB->ACBFlag=%x \n",pACB->ACBFlag);
      trm_SRBwaiting(pDCB, pSRB);
  goto SND_EXIT;
 }

 if (pDCB->pWaitingSRB) {
  trm_SRBwaiting(pDCB, pSRB);
  pSRB = pDCB->pWaitingSRB;
  pDCB->pWaitingSRB = pSRB->pNextSRB;
  pSRB->pNextSRB = ((void*)0);
 }

 if (!trm_StartSCSI(pACB, pDCB, pSRB)) {





  pDCB->GoingSRBCnt++;
  if (pDCB->pGoingSRB) {
   pDCB->pGoingLastSRB->pNextSRB = pSRB;
   pDCB->pGoingLastSRB = pSRB;
  } else {
   pDCB->pGoingSRB = pSRB;
   pDCB->pGoingLastSRB = pSRB;
  }
 } else {





  trm_RewaitSRB0(pDCB, pSRB);
 }
SND_EXIT:
 return;
}
