; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_decode_txdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_decode_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"[%u] [%llu] TXD\0A\00", align 1
@AR_2040_0 = common dso_local global i32 0, align 4
@AR_2040_1 = common dso_local global i32 0, align 4
@AR_2040_2 = common dso_local global i32 0, align 4
@AR_2040_3 = common dso_local global i32 0, align 4
@AR_AggrLen = common dso_local global i32 0, align 4
@AR_AntCtl0 = common dso_local global i32 0, align 4
@AR_AntCtl1 = common dso_local global i32 0, align 4
@AR_AntCtl2 = common dso_local global i32 0, align 4
@AR_AntCtl3 = common dso_local global i32 0, align 4
@AR_BufLen = common dso_local global i32 0, align 4
@AR_BurstDur = common dso_local global i32 0, align 4
@AR_CTSEnable = common dso_local global i32 0, align 4
@AR_ChainSel0 = common dso_local global i32 0, align 4
@AR_ChainSel1 = common dso_local global i32 0, align 4
@AR_ChainSel2 = common dso_local global i32 0, align 4
@AR_ChainSel3 = common dso_local global i32 0, align 4
@AR_ClrDestMask = common dso_local global i32 0, align 4
@AR_CorruptFCS = common dso_local global i32 0, align 4
@AR_DestIdx = common dso_local global i32 0, align 4
@AR_DestIdxValid = common dso_local global i32 0, align 4
@AR_DurUpdateEn = common dso_local global i32 0, align 4
@AR_EncrType = common dso_local global i32 0, align 4
@AR_ExtAndCtl = common dso_local global i32 0, align 4
@AR_ExtOnly = common dso_local global i32 0, align 4
@AR_FrameLen = common dso_local global i32 0, align 4
@AR_FrameType = common dso_local global i32 0, align 4
@AR_GI0 = common dso_local global i32 0, align 4
@AR_GI1 = common dso_local global i32 0, align 4
@AR_GI2 = common dso_local global i32 0, align 4
@AR_GI3 = common dso_local global i32 0, align 4
@AR_InsertTS = common dso_local global i32 0, align 4
@AR_IsAggr = common dso_local global i32 0, align 4
@AR_MoreAggr = common dso_local global i32 0, align 4
@AR_MoreRifs = common dso_local global i32 0, align 4
@AR_NoAck = common dso_local global i32 0, align 4
@AR_PacketDur0 = common dso_local global i32 0, align 4
@AR_PacketDur1 = common dso_local global i32 0, align 4
@AR_PacketDur2 = common dso_local global i32 0, align 4
@AR_PacketDur3 = common dso_local global i32 0, align 4
@AR_PadDelim = common dso_local global i32 0, align 4
@AR_RTSCTSQual0 = common dso_local global i32 0, align 4
@AR_RTSCTSQual1 = common dso_local global i32 0, align 4
@AR_RTSCTSQual2 = common dso_local global i32 0, align 4
@AR_RTSCTSQual3 = common dso_local global i32 0, align 4
@AR_RTSEnable = common dso_local global i32 0, align 4
@AR_STBC0 = common dso_local global i32 0, align 4
@AR_STBC1 = common dso_local global i32 0, align 4
@AR_STBC2 = common dso_local global i32 0, align 4
@AR_STBC3 = common dso_local global i32 0, align 4
@AR_TxIntrReq = common dso_local global i32 0, align 4
@AR_TxMore = common dso_local global i32 0, align 4
@AR_VEOL = common dso_local global i32 0, align 4
@AR_VirtMoreFrag = common dso_local global i32 0, align 4
@AR_XmitDataTries0 = common dso_local global i32 0, align 4
@AR_XmitDataTries1 = common dso_local global i32 0, align 4
@AR_XmitDataTries2 = common dso_local global i32 0, align 4
@AR_XmitDataTries3 = common dso_local global i32 0, align 4
@AR_XmitPower = common dso_local global i32 0, align 4
@AR_XmitPower1 = common dso_local global i32 0, align 4
@AR_XmitPower2 = common dso_local global i32 0, align 4
@AR_XmitPower3 = common dso_local global i32 0, align 4
@AR_XmitRate0 = common dso_local global i32 0, align 4
@AR_XmitRate1 = common dso_local global i32 0, align 4
@AR_XmitRate2 = common dso_local global i32 0, align 4
@AR_XmitRate3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5416_decode_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416_decode_txdesc(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5416_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5416_desc* %3, i32* %5, i32 56)
  %7 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %8 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32toh(i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %14 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be64toh(i32 %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %12, i64 %17)
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5416_desc*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
