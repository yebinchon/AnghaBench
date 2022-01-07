
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tstamp; int threadid; } ;
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

 printf("[%u] [%llu] TXD\n",
     (unsigned int) be32toh(a->hdr.tstamp),
     (unsigned long long) be64toh(a->hdr.threadid));
}
