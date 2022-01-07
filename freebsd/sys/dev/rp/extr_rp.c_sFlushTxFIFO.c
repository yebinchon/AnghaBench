
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int* TxControl; int TxFIFOPtrs; } ;
typedef TYPE_1__ CHANNEL_T ;
typedef int Byte_t ;


 int FALSE ;
 int RESTXFCNT ;
 int TRUE ;
 int TX_ENABLE ;
 int _CMD_REG ;
 int _INDX_ADDR ;
 int _INDX_DATA ;
 int _INT_CHAN ;
 int rp_readch1 (TYPE_1__*,int ) ;
 int rp_writech1 (TYPE_1__*,int ,int) ;
 int rp_writech2 (TYPE_1__*,int ,int ) ;
 int sDisTransmit (TYPE_1__*) ;
 int sEnTransmit (TYPE_1__*) ;
 scalar_t__ sGetChanNum (TYPE_1__*) ;
 scalar_t__ sGetTxCnt (TYPE_1__*) ;
 int sStartRxProcessor (TYPE_1__*) ;
 int sStopRxProcessor (TYPE_1__*) ;

void sFlushTxFIFO(CHANNEL_T *ChP)
{
   int i;
   Byte_t Ch;
   int TxEnabled;

   if(sGetTxCnt(ChP) == 0)
      return;

   TxEnabled = FALSE;
   if(ChP->TxControl[3] & TX_ENABLE)
   {
      TxEnabled = TRUE;
      sDisTransmit(ChP);
   }
   sStopRxProcessor(ChP);
   for(i = 0; i < 4000/200; i++)
      rp_readch1(ChP,_INT_CHAN);
   Ch = (Byte_t)sGetChanNum(ChP);
   rp_writech1(ChP,_CMD_REG,Ch | RESTXFCNT);
   rp_writech1(ChP,_CMD_REG,Ch);
   rp_writech2(ChP,_INDX_ADDR,ChP->TxFIFOPtrs);
   rp_writech2(ChP,_INDX_DATA,0);
   if(TxEnabled)
      sEnTransmit(ChP);
   sStartRxProcessor(ChP);
}
