
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct TYPE_10__ {size_t AdapterUnit; int AdaptType; int Config; TYPE_3__* pLinkDCB; } ;
struct TYPE_9__ {int DevMode; size_t TargetID; struct TYPE_9__* pNextDCB; int SyncMode; int MaxNegoPeriod; int AdpMode; scalar_t__ SyncOffset; scalar_t__ SyncPeriod; } ;
struct TYPE_8__ {TYPE_1__* NvramTarget; int NvramChannelCfg; } ;
struct TYPE_7__ {int NvmTarCfg0; int NvmTarPeriod; } ;
typedef TYPE_2__* PNVRAMTYPE ;
typedef TYPE_3__* PDCB ;
typedef TYPE_4__* PACB ;


 int HCC_WIDE_CARD ;
 int NTC_DO_WIDE_NEGO ;
 int SYNC_NEGO_DONE ;
 int WIDE_NEGO_DONE ;
 int WIDE_NEGO_ENABLE ;
 int * dc395u2x_clock_period ;
 int * dc395x_clock_period ;
 TYPE_2__* trm_eepromBuf ;

__attribute__((used)) static void
trm_ResetDevParam(PACB pACB)
{
 PDCB pDCB, pdcb;
 PNVRAMTYPE pEEpromBuf;
 u_int8_t PeriodIndex;

 pDCB = pACB->pLinkDCB;
 if (pDCB == ((void*)0))
  return;
 pdcb = pDCB;
 do {
  pDCB->SyncMode &= ~(SYNC_NEGO_DONE+ WIDE_NEGO_DONE);
  pDCB->SyncPeriod = 0;
  pDCB->SyncOffset = 0;
  pEEpromBuf = &trm_eepromBuf[pACB->AdapterUnit];
  pDCB->DevMode =
    pEEpromBuf->NvramTarget[pDCB->TargetID].NvmTarCfg0;
  pDCB->AdpMode = pEEpromBuf->NvramChannelCfg;
  PeriodIndex =
     pEEpromBuf->NvramTarget[pDCB->TargetID].NvmTarPeriod & 0x07;
  if (pACB->AdaptType == 1)
   pDCB->MaxNegoPeriod = dc395u2x_clock_period[PeriodIndex];
  else
   pDCB->MaxNegoPeriod = dc395x_clock_period[PeriodIndex];
  if ((pDCB->DevMode & NTC_DO_WIDE_NEGO) &&
      (pACB->Config & HCC_WIDE_CARD))
   pDCB->SyncMode |= WIDE_NEGO_ENABLE;
  pDCB = pDCB->pNextDCB;
 }
 while (pdcb != pDCB);
}
