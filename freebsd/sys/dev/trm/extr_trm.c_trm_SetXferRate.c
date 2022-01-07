
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int path; } ;
union ccb {TYPE_5__ ccb_h; } ;
typedef scalar_t__ u_int8_t ;
typedef scalar_t__ u_int16_t ;
struct TYPE_14__ {int valid; int sync_offset; int sync_period; } ;
struct TYPE_15__ {TYPE_3__ spi; } ;
struct ccb_trans_settings {int ccb_h; TYPE_4__ xport_specific; } ;
typedef int neg ;
struct TYPE_19__ {scalar_t__ DeviceCnt; TYPE_7__* pLinkDCB; } ;
struct TYPE_12__ {int offset; int period; } ;
struct TYPE_13__ {TYPE_1__ goal; } ;
struct TYPE_18__ {int IdentifyMsg; scalar_t__ TargetID; struct TYPE_18__* pNextDCB; int SyncMode; int SyncOffset; int SyncPeriod; TYPE_2__ tinfo; } ;
struct TYPE_17__ {union ccb* pccb; } ;
typedef TYPE_6__* PSRB ;
typedef TYPE_7__* PDCB ;
typedef TYPE_8__* PACB ;


 int AC_TRANSFER_NEG ;
 int CTS_SPI_VALID_SYNC_OFFSET ;
 int CTS_SPI_VALID_SYNC_RATE ;
 int TRM_DPRINTF (char*) ;
 int memset (struct ccb_trans_settings*,int ,int) ;
 int xpt_async (int ,int ,struct ccb_trans_settings*) ;
 int xpt_setup_ccb (int *,int ,int) ;

__attribute__((used)) static void
trm_SetXferRate(PACB pACB,PSRB pSRB, PDCB pDCB)
{
 union ccb *pccb;
 struct ccb_trans_settings neg;
 u_int16_t cnt, i;
 u_int8_t bval;
 PDCB pDCBTemp;




 TRM_DPRINTF("trm_SetXferRate\n");
 pccb = pSRB->pccb;
 memset(&neg, 0, sizeof (neg));
 neg.xport_specific.spi.sync_period = pDCB->tinfo.goal.period;
 neg.xport_specific.spi.sync_offset = pDCB->tinfo.goal.offset;
 neg.xport_specific.spi.valid =
     CTS_SPI_VALID_SYNC_RATE | CTS_SPI_VALID_SYNC_OFFSET;
 xpt_setup_ccb(&neg.ccb_h, pccb->ccb_h.path, 1);
 xpt_async(AC_TRANSFER_NEG, pccb->ccb_h.path, &neg);
 if (!(pDCB->IdentifyMsg & 0x07)) {
  pDCBTemp = pACB->pLinkDCB;
  cnt = pACB->DeviceCnt;
  bval = pDCB->TargetID;
  for (i = 0; i < cnt; i++) {
   if (pDCBTemp->TargetID == bval) {
    pDCBTemp->SyncPeriod = pDCB->SyncPeriod;
    pDCBTemp->SyncOffset = pDCB->SyncOffset;
    pDCBTemp->SyncMode = pDCB->SyncMode;
   }
   pDCBTemp = pDCBTemp->pNextDCB;
  }
 }
 return;
}
