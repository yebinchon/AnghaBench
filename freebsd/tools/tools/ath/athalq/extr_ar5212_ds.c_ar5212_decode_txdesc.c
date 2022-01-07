
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5212_desc {int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_ctl2; int ds_ctl3; } ;


 int AR_AntModeXmit ;
 int AR_BufLen ;
 int AR_CTSEnable ;
 int AR_ClearDestMask ;
 int AR_CompICVLen ;
 int AR_CompIVLen ;
 int AR_CompProc ;
 int AR_DestIdx ;
 int AR_DestIdxValid ;
 int AR_DurUpdateEna ;
 int AR_FrameLen ;
 int AR_FrmType ;
 int AR_More ;
 int AR_NoAck ;
 int AR_RTSCTSDuration ;
 int AR_RTSCTSEnable ;
 int AR_RTSCTSRate ;
 int AR_TxInterReq ;
 int AR_VEOL ;
 int AR_XmitDataTries0 ;
 int AR_XmitDataTries1 ;
 int AR_XmitDataTries2 ;
 int AR_XmitDataTries3 ;
 int AR_XmitPower ;
 int AR_XmitRate0 ;
 int AR_XmitRate1 ;
 int AR_XmitRate2 ;
 int AR_XmitRate3 ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5212_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5212_decode_txdesc(struct if_ath_alq_payload *a)
{
 struct ar5212_desc txc;


 memcpy(&txc, &a->payload, sizeof(struct ar5212_desc));

 printf("[%u.%06u] [%llu] TXD\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid));

 printf("  link=0x%08x, data=0x%08x\n",
     txc.ds_link,
     txc.ds_data);


 printf("    Frame Len=%d\n", txc.ds_ctl0 & AR_FrameLen);
 printf("    TX power0=%d, RtsEna=%d, Veol=%d, ClrDstMask=%d AntModeXmit=0x%02x\n",
     MS(txc.ds_ctl0, AR_XmitPower),
     MF(txc.ds_ctl0, AR_RTSCTSEnable),
     MF(txc.ds_ctl0, AR_VEOL),
     MF(txc.ds_ctl0, AR_ClearDestMask),
     MF(txc.ds_ctl0, AR_AntModeXmit));
 printf("    TxIntrReq=%d, DestIdxValid=%d, CtsEnable=%d\n",
     MF(txc.ds_ctl0, AR_TxInterReq),
     MF(txc.ds_ctl0, AR_DestIdxValid),
     MF(txc.ds_ctl0, AR_CTSEnable));


 printf("    BufLen=%d, TxMore=%d, DestIdx=%d,"
     " FrType=0x%x\n",
     txc.ds_ctl1 & AR_BufLen,
     MF(txc.ds_ctl1, AR_More),
     MS(txc.ds_ctl1, AR_DestIdx),
     MS(txc.ds_ctl1, AR_FrmType));
 printf("    NoAck=%d, CompProc=%d, CompIVLen=%d, CompICVLen=%d\n",
     MF(txc.ds_ctl1, AR_NoAck),
     MS(txc.ds_ctl1, AR_CompProc),
     MS(txc.ds_ctl1, AR_CompIVLen),
     MS(txc.ds_ctl1, AR_CompICVLen));


 printf("    DurUpEna=%d, Burstdur=0x%04x\n",
     MF(txc.ds_ctl2, AR_DurUpdateEna),
     MS(txc.ds_ctl2, AR_RTSCTSDuration));
 printf("    Try0=%d, Try1=%d, Try2=%d, Try3=%d\n",
     MS(txc.ds_ctl2, AR_XmitDataTries0),
     MS(txc.ds_ctl2, AR_XmitDataTries1),
     MS(txc.ds_ctl2, AR_XmitDataTries2),
     MS(txc.ds_ctl2, AR_XmitDataTries3));


 printf("    rate0=0x%02x, rate1=0x%02x, rate2=0x%02x, rate3=0x%02x\n",
     MS(txc.ds_ctl3, AR_XmitRate0),
     MS(txc.ds_ctl3, AR_XmitRate1),
     MS(txc.ds_ctl3, AR_XmitRate2),
     MS(txc.ds_ctl3, AR_XmitRate3));
 printf("    RtsCtsRate=0x%02x\n",
     MS(txc.ds_ctl3, AR_RTSCTSRate));

 printf("\n ------ \n");
}
