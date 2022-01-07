
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* u_int8_t ;
typedef size_t u_int16_t ;
struct TYPE_6__ {int max_id; int max_lun; int TagMaxNum; scalar_t__ ACBFlag; void* AdaptType; scalar_t__ DeviceCnt; scalar_t__ AdaptSCSILUN; int AdaptSCSIID; void* AdapterUnit; int * pActiveDCB; int * pDCBRunRobin; int * pLinkDCB; } ;
struct TYPE_5__ {int NvramChannelCfg; int NvramMaxTag; int NvramScsiId; } ;
typedef TYPE_1__* PNVRAMTYPE ;
typedef TYPE_2__* PACB ;


 int NAC_SCANLUN ;
 int TRM_DPRINTF (char*,int,int) ;
 TYPE_1__* trm_eepromBuf ;

__attribute__((used)) static void
trm_initACB(PACB pACB, u_int8_t adaptType, u_int16_t unit)
{
 PNVRAMTYPE pEEpromBuf;

 pEEpromBuf = &trm_eepromBuf[unit];
 pACB->max_id = 15;

 if (pEEpromBuf->NvramChannelCfg & NAC_SCANLUN)
    pACB->max_lun = 7;
 else
  pACB->max_lun = 0;

 TRM_DPRINTF("trm: pACB->max_id= %d pACB->max_lun= %d \n",
     pACB->max_id, pACB->max_lun);
 pACB->pLinkDCB = ((void*)0);
 pACB->pDCBRunRobin = ((void*)0);
 pACB->pActiveDCB = ((void*)0);
 pACB->AdapterUnit = (u_int8_t)unit;
 pACB->AdaptSCSIID = pEEpromBuf->NvramScsiId;
 pACB->AdaptSCSILUN = 0;
 pACB->DeviceCnt = 0;
 pACB->AdaptType = adaptType;
 pACB->TagMaxNum = 2 << pEEpromBuf->NvramMaxTag;
 pACB->ACBFlag = 0;
 return;
}
