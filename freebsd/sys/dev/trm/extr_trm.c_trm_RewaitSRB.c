
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pWaitingLastSRB; TYPE_1__* pWaitingSRB; TYPE_1__* pGoingLastSRB; TYPE_1__* pGoingSRB; int GoingSRBCnt; } ;
struct TYPE_5__ {struct TYPE_5__* pNextSRB; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;


 int splcam () ;
 int splx (int) ;

__attribute__((used)) static void
trm_RewaitSRB(PDCB pDCB, PSRB pSRB)
{
 PSRB psrb1;
 int intflag;

 intflag = splcam();
     pDCB->GoingSRBCnt--;
 psrb1 = pDCB->pGoingSRB;
 if (pSRB == psrb1)




  pDCB->pGoingSRB = psrb1->pNextSRB;
 else {




  while (pSRB != psrb1->pNextSRB)
   psrb1 = psrb1->pNextSRB;
  psrb1->pNextSRB = pSRB->pNextSRB;
  if (pSRB == pDCB->pGoingLastSRB)
   pDCB->pGoingLastSRB = psrb1;
 }
 if ((psrb1 = pDCB->pWaitingSRB)) {





  pSRB->pNextSRB = psrb1;
  pDCB->pWaitingSRB = pSRB;
 } else {
  pSRB->pNextSRB = ((void*)0);
  pDCB->pWaitingSRB = pSRB;
  pDCB->pWaitingLastSRB = pSRB;
 }
 splx(intflag);
}
