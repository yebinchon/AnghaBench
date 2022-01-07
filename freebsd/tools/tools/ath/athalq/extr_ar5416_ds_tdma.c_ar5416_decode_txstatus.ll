; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_decode_txstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_decode_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ar5416_desc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@ar5416_decode_txstatus.tx_tsf = internal global i32 0, align 4
@AR_TxDone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"[%u] [%llu] TXSTATUS: TxDone=%d, TS=0x%08x (delta %d)\0A\00", align 1
@AR_DataFailCnt = common dso_local global i32 0, align 4
@AR_DescCfgErr = common dso_local global i32 0, align 4
@AR_ExcessiveRetries = common dso_local global i32 0, align 4
@AR_FIFOUnderrun = common dso_local global i32 0, align 4
@AR_Filtered = common dso_local global i32 0, align 4
@AR_FinalTxIdx = common dso_local global i32 0, align 4
@AR_FrmXmitOK = common dso_local global i32 0, align 4
@AR_PowerMgmt = common dso_local global i32 0, align 4
@AR_RTSFailCnt = common dso_local global i32 0, align 4
@AR_SeqNum = common dso_local global i32 0, align 4
@AR_TxBaStatus = common dso_local global i32 0, align 4
@AR_TxDataUnderrun = common dso_local global i32 0, align 4
@AR_TxDelimUnderrun = common dso_local global i32 0, align 4
@AR_TxOpExceeded = common dso_local global i32 0, align 4
@AR_TxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_TxRSSIAnt12 = common dso_local global i32 0, align 4
@AR_TxRSSICombined = common dso_local global i32 0, align 4
@AR_TxTid = common dso_local global i32 0, align 4
@AR_TxTimerExpired = common dso_local global i32 0, align 4
@AR_VirtRetryCnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5416_decode_txstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416_decode_txstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5416_desc, align 8
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5416_desc* %3, i32* %5, i32 8)
  %7 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 9
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AR_TxDone, align 4
  %14 = call i32 @MF(i32 %12, i32 %13)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %58

17:                                               ; preds = %1
  %18 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %19 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be32toh(i32 %21)
  %23 = trunc i64 %22 to i32
  %24 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %25 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be64toh(i32 %27)
  %29 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 9
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AR_TxDone, align 4
  %36 = call i32 @MF(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ar5416_decode_txstatus.tx_tsf, align 4
  %50 = sub nsw i32 %48, %49
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %28, i32 %36, i32 %42, i32 %50)
  %52 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* @ar5416_decode_txstatus.tx_tsf, align 4
  br label %58

58:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5416_desc*, i32*, i32) #1

declare dso_local i32 @MF(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
