
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int TxPrioCnt; int TxPrioBuf; } ;
typedef TYPE_1__ CHANNEL_T ;
typedef int Byte_t ;


 int PRI_PEND ;
 int _INDX_ADDR ;
 int _INDX_DATA ;
 int le16enc (int*,int ) ;
 int le32dec (int*) ;
 int rp_readch1 (TYPE_1__*,int ) ;
 int rp_writech2 (TYPE_1__*,int ,int ) ;
 int rp_writech4 (TYPE_1__*,int ,int ) ;
 int sGetTxCnt (TYPE_1__*) ;
 int sGetTxRxDataIO (TYPE_1__*) ;
 int sWriteTxByte (TYPE_1__*,int ,int) ;

int sWriteTxPrioByte(CHANNEL_T *ChP, Byte_t Data)
{
   Byte_t DWBuf[4];

   if(sGetTxCnt(ChP) > 1)
   {
      rp_writech2(ChP,_INDX_ADDR,ChP->TxPrioCnt);
      if(rp_readch1(ChP,_INDX_DATA) & PRI_PEND)
  return(0);

      le16enc(DWBuf,ChP->TxPrioBuf);

      DWBuf[2] = Data;
      DWBuf[3] = 0;
      rp_writech4(ChP,_INDX_ADDR,le32dec(DWBuf));

      le16enc(DWBuf,ChP->TxPrioCnt);

      DWBuf[2] = PRI_PEND + 1;
      DWBuf[3] = 0;
      rp_writech4(ChP,_INDX_ADDR,le32dec(DWBuf));
   }
   else
   {
      sWriteTxByte(ChP,sGetTxRxDataIO(ChP),Data);
   }
   return(1);
}
