
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5210_desc {int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; } ;


 int AR_AntModeXmit ;
 int AR_BufLen ;
 int AR_ClearDestMask ;
 int AR_EncryptKeyIdx ;
 int AR_FrameLen ;
 int AR_FrmType ;
 int AR_LongPkt ;
 int AR_More ;
 int AR_RTSCTSEnable ;
 int AR_RTSDuration ;
 int AR_TxInterReq ;
 int AR_XmitRate ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5210_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5210_decode_txdesc(struct if_ath_alq_payload *a)
{
 struct ar5210_desc txc;


 memcpy(&txc, &a->payload, sizeof(struct ar5210_desc));

 printf("[%u.%06u] [%llu] TXD\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid));

 printf("  link=0x%08x, data=0x%08x\n",
     txc.ds_link,
     txc.ds_data);


 printf("    Frame Len=%d\n", txc.ds_ctl0 & AR_FrameLen);
 printf("    TX Rate=0x%02x, RtsEna=%d, ClrDstMask=%d AntModeXmit=0x%02x\n",
     MS(txc.ds_ctl0, AR_XmitRate),
     MF(txc.ds_ctl0, AR_RTSCTSEnable),
     MF(txc.ds_ctl0, AR_ClearDestMask),
     MF(txc.ds_ctl0, AR_AntModeXmit));
 printf("    FrmType=0x%02x, TxIntrReq=%d\n",
     MS(txc.ds_ctl0, AR_FrmType),
     MF(txc.ds_ctl0, AR_TxInterReq));
 printf("    LongPkt=%d\n", MF(txc.ds_ctl0, AR_LongPkt));


 printf("    BufLen=%d, TxMore=%d, EncryptKeyIdx=%d, RtsDuration=%d\n",
     txc.ds_ctl1 & AR_BufLen,
     MF(txc.ds_ctl1, AR_More),
     MS(txc.ds_ctl1, AR_EncryptKeyIdx),
     MS(txc.ds_ctl1, AR_RTSDuration));

 printf("\n ------ \n");
}
