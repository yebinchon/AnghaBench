
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int* R; scalar_t__ RxFIFOPtrs; } ;
typedef TYPE_1__ CHANNEL_T ;
typedef int Byte_t ;


 int FALSE ;
 int RESRXFCNT ;
 int TRUE ;
 int _CMD_REG ;
 int _INDX_ADDR ;
 int _INDX_DATA ;
 int _INT_CHAN ;
 int rp_readch1 (TYPE_1__*,int ) ;
 int rp_writech1 (TYPE_1__*,int ,int) ;
 int rp_writech2 (TYPE_1__*,int ,scalar_t__) ;
 int sDisRxFIFO (TYPE_1__*) ;
 int sEnRxFIFO (TYPE_1__*) ;
 scalar_t__ sGetChanNum (TYPE_1__*) ;
 int sGetChanStatus (TYPE_1__*) ;
 scalar_t__ sGetRxCnt (TYPE_1__*) ;

void sFlushRxFIFO(CHANNEL_T *ChP)
{
   int i;
   Byte_t Ch;
   int RxFIFOEnabled;

   if(sGetRxCnt(ChP) == 0)
      return;

   RxFIFOEnabled = FALSE;
   if(ChP->R[0x32] == 0x08)
   {
      RxFIFOEnabled = TRUE;
      sDisRxFIFO(ChP);
      for(i=0; i < 2000/200; i++)
  rp_readch1(ChP,_INT_CHAN);
   }
   sGetChanStatus(ChP);
   Ch = (Byte_t)sGetChanNum(ChP);
   rp_writech1(ChP,_CMD_REG,Ch | RESRXFCNT);
   rp_writech1(ChP,_CMD_REG,Ch);
   rp_writech2(ChP,_INDX_ADDR,ChP->RxFIFOPtrs);
   rp_writech2(ChP,_INDX_DATA,0);
   rp_writech2(ChP,_INDX_ADDR,ChP->RxFIFOPtrs + 2);
   rp_writech2(ChP,_INDX_DATA,0);
   if(RxFIFOEnabled)
      sEnRxFIFO(ChP);
}
