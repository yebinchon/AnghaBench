
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp_usec; int tstamp_sec; int threadid; } ;
struct if_ath_alq_payload {TYPE_1__ hdr; int payload; } ;
struct ar5416_desc {int ds_link; int ds_data; int ds_ctl0; int ds_ctl1; int ds_ctl2; int ds_ctl3; int ds_ctl4; int ds_ctl5; int ds_ctl6; int ds_ctl7; int ds_ctl8; int ds_ctl9; int ds_ctl10; int ds_ctl11; } ;


 int AR_2040_0 ;
 int AR_2040_1 ;
 int AR_2040_2 ;
 int AR_2040_3 ;
 int AR_AggrLen ;
 int AR_AntCtl0 ;
 int AR_AntCtl1 ;
 int AR_AntCtl2 ;
 int AR_AntCtl3 ;
 int AR_BufLen ;
 int AR_BurstDur ;
 int AR_CTSEnable ;
 int AR_ChainSel0 ;
 int AR_ChainSel1 ;
 int AR_ChainSel2 ;
 int AR_ChainSel3 ;
 int AR_ClrDestMask ;
 int AR_CorruptFCS ;
 int AR_DestIdx ;
 int AR_DestIdxValid ;
 int AR_DurUpdateEn ;
 int AR_EncrType ;
 int AR_ExtAndCtl ;
 int AR_ExtOnly ;
 int AR_FrameLen ;
 int AR_FrameType ;
 int AR_GI0 ;
 int AR_GI1 ;
 int AR_GI2 ;
 int AR_GI3 ;
 int AR_InsertTS ;
 int AR_IsAggr ;
 int AR_MoreAggr ;
 int AR_MoreRifs ;
 int AR_NoAck ;
 int AR_PacketDur0 ;
 int AR_PacketDur1 ;
 int AR_PacketDur2 ;
 int AR_PacketDur3 ;
 int AR_PadDelim ;
 int AR_RTSCTSQual0 ;
 int AR_RTSCTSQual1 ;
 int AR_RTSCTSQual2 ;
 int AR_RTSCTSQual3 ;
 int AR_RTSCTSRate ;
 int AR_RTSEnable ;
 int AR_STBC0 ;
 int AR_STBC1 ;
 int AR_STBC2 ;
 int AR_STBC3 ;
 int AR_TxIntrReq ;
 int AR_TxMore ;
 int AR_VEOL ;
 int AR_VirtMoreFrag ;
 int AR_XmitDataTries0 ;
 int AR_XmitDataTries1 ;
 int AR_XmitDataTries2 ;
 int AR_XmitDataTries3 ;
 int AR_XmitPower ;
 int AR_XmitPower1 ;
 int AR_XmitPower2 ;
 int AR_XmitPower3 ;
 int AR_XmitRate0 ;
 int AR_XmitRate1 ;
 int AR_XmitRate2 ;
 int AR_XmitRate3 ;
 int MF (int,int ) ;
 int MS (int,int ) ;
 scalar_t__ be32toh (int ) ;
 scalar_t__ be64toh (int ) ;
 int memcpy (struct ar5416_desc*,int *,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ar5416_decode_txdesc(struct if_ath_alq_payload *a)
{
 struct ar5416_desc txc;


 memcpy(&txc, &a->payload, sizeof(struct ar5416_desc));

 printf("[%u.%06u] [%llu] TXD\n",
     (unsigned int) be32toh(a->hdr.tstamp_sec),
     (unsigned int) be32toh(a->hdr.tstamp_usec),
     (unsigned long long) be64toh(a->hdr.threadid));

 printf("  link=0x%08x, data=0x%08x\n",
     txc.ds_link,
     txc.ds_data);


 printf("    Frame Len=%d, VMF=%d\n",
      txc.ds_ctl0 & AR_FrameLen,
     MF(txc.ds_ctl0, AR_VirtMoreFrag));
 printf("    TX power0=%d, RtsEna=%d, Veol=%d, ClrDstMask=%d\n",
     MS(txc.ds_ctl0, AR_XmitPower),
     MF(txc.ds_ctl0, AR_RTSEnable),
     MF(txc.ds_ctl0, AR_VEOL),
     MF(txc.ds_ctl0, AR_ClrDestMask));
 printf("    TxIntrReq=%d, DestIdxValid=%d, CtsEnable=%d\n",
     MF(txc.ds_ctl0, AR_TxIntrReq),
     MF(txc.ds_ctl0, AR_DestIdxValid),
     MF(txc.ds_ctl0, AR_CTSEnable));


 printf("    BufLen=%d, TxMore=%d, DestIdx=%d,"
     " FrType=0x%x\n",
     txc.ds_ctl1 & AR_BufLen,
     MF(txc.ds_ctl1, AR_TxMore),
     MS(txc.ds_ctl1, AR_DestIdx),
     MS(txc.ds_ctl1, AR_FrameType));
 printf("    NoAck=%d, InsertTs=%d, CorruptFcs=%d, ExtOnly=%d,"
     " ExtAndCtl=%d\n",
     MF(txc.ds_ctl1, AR_NoAck),
     MF(txc.ds_ctl1, AR_InsertTS),
     MF(txc.ds_ctl1, AR_CorruptFCS),
     MF(txc.ds_ctl1, AR_ExtOnly),
     MF(txc.ds_ctl1, AR_ExtAndCtl));
 printf("    MoreAggr=%d, IsAggr=%d, MoreRifs=%d\n",
     MF(txc.ds_ctl1, AR_MoreAggr),
     MF(txc.ds_ctl1, AR_IsAggr),
     MF(txc.ds_ctl1, AR_MoreRifs));


 printf("    DurUpEna=%d, Burstdur=0x%04x\n",
     MF(txc.ds_ctl2, AR_DurUpdateEn),
     MS(txc.ds_ctl2, AR_BurstDur));
 printf("    Try0=%d, Try1=%d, Try2=%d, Try3=%d\n",
     MS(txc.ds_ctl2, AR_XmitDataTries0),
     MS(txc.ds_ctl2, AR_XmitDataTries1),
     MS(txc.ds_ctl2, AR_XmitDataTries2),
     MS(txc.ds_ctl2, AR_XmitDataTries3));


 printf("    try 0: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
     MS(txc.ds_ctl3, AR_XmitRate0),
     MS(txc.ds_ctl4, AR_PacketDur0),
     MF(txc.ds_ctl4, AR_RTSCTSQual0));
 printf("    try 1: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
     MS(txc.ds_ctl3, AR_XmitRate1),
     MS(txc.ds_ctl4, AR_PacketDur1),
     MF(txc.ds_ctl4, AR_RTSCTSQual1));


 printf("    try 2: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
     MS(txc.ds_ctl3, AR_XmitRate2),
     MS(txc.ds_ctl5, AR_PacketDur2),
     MF(txc.ds_ctl5, AR_RTSCTSQual2));
 printf("    try 3: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\n",
     MS(txc.ds_ctl3, AR_XmitRate3),
     MS(txc.ds_ctl5, AR_PacketDur3),
     MF(txc.ds_ctl5, AR_RTSCTSQual3));


 printf("    AggrLen=%d, PadDelim=%d, EncrType=%d\n",
     MS(txc.ds_ctl6, AR_AggrLen),
     MS(txc.ds_ctl6, AR_PadDelim),
     MS(txc.ds_ctl6, AR_EncrType));


 printf("    try 0: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
     MS(txc.ds_ctl7, AR_ChainSel0),
     MF(txc.ds_ctl7, AR_GI0),
     MF(txc.ds_ctl7, AR_2040_0),
     MF(txc.ds_ctl7, AR_STBC0));
 printf("    try 1: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
     MS(txc.ds_ctl7, AR_ChainSel1),
     MF(txc.ds_ctl7, AR_GI1),
     MF(txc.ds_ctl7, AR_2040_1),
     MF(txc.ds_ctl7, AR_STBC1));
 printf("    try 2: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
     MS(txc.ds_ctl7, AR_ChainSel2),
     MF(txc.ds_ctl7, AR_GI2),
     MF(txc.ds_ctl7, AR_2040_2),
     MF(txc.ds_ctl7, AR_STBC2));
 printf("    try 3: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\n",
     MS(txc.ds_ctl7, AR_ChainSel3),
     MF(txc.ds_ctl7, AR_GI3),
     MF(txc.ds_ctl7, AR_2040_3),
     MF(txc.ds_ctl7, AR_STBC3));

 printf("    RTSCtsRate=0x%02x\n", MS(txc.ds_ctl7, AR_RTSCTSRate));


 printf("    try 0: ant=0x%08x\n", txc.ds_ctl8 & AR_AntCtl0);


 printf("    try 1: TxPower=%d, ant=0x%08x\n",
     MS(txc.ds_ctl9, AR_XmitPower1),
     txc.ds_ctl9 & AR_AntCtl1);


 printf("    try 2: TxPower=%d, ant=0x%08x\n",
     MS(txc.ds_ctl10, AR_XmitPower2),
     txc.ds_ctl10 & AR_AntCtl2);


 printf("    try 3: TxPower=%d, ant=0x%08x\n",
     MS(txc.ds_ctl11, AR_XmitPower3),
     txc.ds_ctl11 & AR_AntCtl3);

 printf("\n ------ \n");
}
