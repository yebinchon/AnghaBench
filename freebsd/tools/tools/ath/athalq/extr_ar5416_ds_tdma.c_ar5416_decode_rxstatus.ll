; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_decode_rxstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds_tdma.c_ar5416_decode_rxstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ar5416_decode_rxstatus.rx_tsf = internal global i32 0, align 4
@AR_RxDone = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"[%u] [%llu] RXSTATUS: RxDone=%d, TS=0x%08x (delta %d)\0A\00", align 1
@AR_2040 = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@AR_DataLen = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@AR_DupFrame = common dso_local global i32 0, align 4
@AR_GI = common dso_local global i32 0, align 4
@AR_HiRxChain = common dso_local global i32 0, align 4
@AR_KeyIdx = common dso_local global i32 0, align 4
@AR_KeyMiss = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@AR_NumDelim = common dso_local global i32 0, align 4
@AR_PHYErr = common dso_local global i32 0, align 4
@AR_PHYErrCode = common dso_local global i32 0, align 4
@AR_PostDelimCRCErr = common dso_local global i32 0, align 4
@AR_PreDelimCRCErr = common dso_local global i32 0, align 4
@AR_RxAggr = common dso_local global i32 0, align 4
@AR_RxAntenna = common dso_local global i32 0, align 4
@AR_RxFrameOK = common dso_local global i32 0, align 4
@AR_RxKeyIdxValid = common dso_local global i32 0, align 4
@AR_RxMore = common dso_local global i32 0, align 4
@AR_RxMoreAggr = common dso_local global i32 0, align 4
@AR_RxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt02 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt12 = common dso_local global i32 0, align 4
@AR_RxRSSICombined = common dso_local global i32 0, align 4
@AR_RxRate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5416_decode_rxstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416_decode_rxstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5416_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5416_desc* %3, i32* %5, i32 52)
  %7 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AR_RxDone, align 4
  %10 = call i32 @MF(i32 %8, i32 %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %15 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be32toh(i32 %17)
  %19 = trunc i64 %18 to i32
  %20 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %21 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @be64toh(i32 %23)
  %25 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AR_RxDone, align 4
  %28 = call i32 @MF(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ar5416_decode_rxstatus.rx_tsf, align 4
  %34 = sub nsw i32 %32, %33
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %24, i32 %28, i32 %30, i32 %34)
  %36 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* @ar5416_decode_rxstatus.rx_tsf, align 4
  br label %38

38:                                               ; preds = %13, %12
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
