; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5210_ds.c_ar5210_decode_txstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5210_ds.c_ar5210_decode_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5210_desc = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"[%u.%06u] [%llu] TXSTATUS\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\0A\00", align 1
@AR_FrmXmitOK = common dso_local global i32 0, align 4
@AR_ExcessiveRetries = common dso_local global i32 0, align 4
@AR_FIFOUnderrun = common dso_local global i32 0, align 4
@AR_Filtered = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"    LongRetryCnt=%d, ShortRetryCnt=%d\0A\00", align 1
@AR_LongRetryCnt = common dso_local global i32 0, align 4
@AR_ShortRetryCnt = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"    SndTimestamp=0x%04x\0A\00", align 1
@AR_SendTimestamp = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"    Done=%d, SeqNum=0x%04x, AckRSSI=%d\0A\00", align 1
@AR_Done = common dso_local global i32 0, align 4
@AR_SeqNum = common dso_local global i32 0, align 4
@AR_AckSigStrength = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"\0A ------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5210_decode_txstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5210_decode_txstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5210_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5210_desc* %3, i32* %5, i32 8)
  %7 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %8 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32toh(i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %14 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be32toh(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %20 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64toh(i32 %22)
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %18, i64 %23)
  %25 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @AR_FrmXmitOK, align 4
  %28 = call i32 @MF(i32 %26, i32 %27)
  %29 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @AR_ExcessiveRetries, align 4
  %32 = call i32 @MF(i32 %30, i32 %31)
  %33 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AR_FIFOUnderrun, align 4
  %36 = call i32 @MF(i32 %34, i32 %35)
  %37 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AR_Filtered, align 4
  %40 = call i32 @MF(i32 %38, i32 %39)
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %32, i32 %36, i32 %40)
  %42 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AR_LongRetryCnt, align 4
  %45 = call i32 @MS(i32 %43, i32 %44)
  %46 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR_ShortRetryCnt, align 4
  %49 = call i32 @MS(i32 %47, i32 %48)
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %49)
  %51 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AR_SendTimestamp, align 4
  %54 = call i32 @MS(i32 %52, i32 %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %54)
  %56 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AR_Done, align 4
  %59 = call i32 @MF(i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AR_SeqNum, align 4
  %63 = and i32 %61, %62
  %64 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AR_AckSigStrength, align 4
  %67 = call i32 @MS(i32 %65, i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %63, i32 %67)
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5210_desc*, i32*, i32) #1

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
