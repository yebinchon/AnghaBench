
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* pWaitingLastSRB; TYPE_1__* pWaitingSRB; } ;
struct TYPE_5__ {struct TYPE_5__* pNextSRB; } ;
typedef TYPE_1__* PSRB ;
typedef TYPE_2__* PDCB ;


 int splcam () ;
 int splx (int) ;

__attribute__((used)) static void
trm_RewaitSRB0(PDCB pDCB, PSRB pSRB)
{
 PSRB psrb1;
 int intflag;

 intflag = splcam();
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
