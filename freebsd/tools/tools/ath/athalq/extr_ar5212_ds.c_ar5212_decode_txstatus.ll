; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5212_ds.c_ar5212_decode_txstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5212_ds.c_ar5212_decode_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ar5212_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"[%u.%06u] [%llu] TXSTATUS: TxDone=%d, TS=0x%08x\0A\0A\00", align 1
@AR_Done = common dso_local global i32 0, align 4
@AR_SendTimestamp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\0A\00", align 1
@AR_FrmXmitOK = common dso_local global i32 0, align 4
@AR_ExcessiveRetries = common dso_local global i32 0, align 4
@AR_FIFOUnderrun = common dso_local global i32 0, align 4
@AR_Filtered = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"    RTScnt=%d, FailCnt=%d, VCollCnt=%d\0A\00", align 1
@AR_RTSFailCnt = common dso_local global i32 0, align 4
@AR_DataFailCnt = common dso_local global i32 0, align 4
@AR_VirtCollCnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"    SndTimestamp=0x%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"    Done=%d, SeqNum=0x%04x, AckRSSI=%d, FinalTSI=%d\0A\00", align 1
@AR_SeqNum = common dso_local global i32 0, align 4
@AR_AckSigStrength = common dso_local global i32 0, align 4
@AR_FinalTSIndex = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"    CompSuccess=%d, XmitAntenna=%d\0A\00", align 1
@AR_CompSuccess = common dso_local global i32 0, align 4
@AR_XmitAtenna = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"\0A ------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5212_decode_txstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212_decode_txstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5212_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5212_desc* %3, i32* %5, i32 8)
  %7 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %8 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32toh(i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %14 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be32toh(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %20 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64toh(i32 %22)
  %24 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AR_Done, align 4
  %29 = call i32 @MF(i32 %27, i32 %28)
  %30 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AR_SendTimestamp, align 4
  %35 = call i32 @MS(i32 %33, i32 %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %18, i64 %23, i32 %29, i32 %35)
  %37 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR_FrmXmitOK, align 4
  %42 = call i32 @MF(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AR_ExcessiveRetries, align 4
  %48 = call i32 @MF(i32 %46, i32 %47)
  %49 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AR_FIFOUnderrun, align 4
  %54 = call i32 @MF(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AR_Filtered, align 4
  %60 = call i32 @MF(i32 %58, i32 %59)
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %48, i32 %54, i32 %60)
  %62 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AR_RTSFailCnt, align 4
  %67 = call i32 @MS(i32 %65, i32 %66)
  %68 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AR_DataFailCnt, align 4
  %73 = call i32 @MS(i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AR_VirtCollCnt, align 4
  %79 = call i32 @MS(i32 %77, i32 %78)
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %73, i32 %79)
  %81 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @AR_SendTimestamp, align 4
  %86 = call i32 @MS(i32 %84, i32 %85)
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AR_Done, align 4
  %93 = call i32 @MF(i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @AR_SeqNum, align 4
  %99 = call i32 @MS(i32 %97, i32 %98)
  %100 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AR_AckSigStrength, align 4
  %105 = call i32 @MS(i32 %103, i32 %104)
  %106 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AR_FinalTSIndex, align 4
  %111 = call i32 @MS(i32 %109, i32 %110)
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %93, i32 %99, i32 %105, i32 %111)
  %113 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AR_CompSuccess, align 4
  %118 = call i32 @MF(i32 %116, i32 %117)
  %119 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AR_XmitAtenna, align 4
  %124 = call i32 @MF(i32 %122, i32 %123)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %124)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5212_desc*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

declare dso_local i32 @MF(i32, i32) #1

declare dso_local i32 @MS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
