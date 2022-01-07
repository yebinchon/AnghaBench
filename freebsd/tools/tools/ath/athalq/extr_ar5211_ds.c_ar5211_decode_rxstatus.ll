; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5211_ds.c_ar5211_decode_rxstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5211_ds.c_ar5211_decode_rxstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5211_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"[%u.%06u] [%llu] RXSTATUS\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  link=0x%08x, data=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"  DataLen=%d, ArMore=%d, RSSI=%d, RcvAntenna=0x%x\0A\00", align 1
@AR_DataLen = common dso_local global i32 0, align 4
@AR_More = common dso_local global i32 0, align 4
@AR_RcvSigStrength = common dso_local global i32 0, align 4
@AR_RcvAntenna = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\0A\00", align 1
@AR_Done = common dso_local global i32 0, align 4
@AR_FrmRcvOK = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"  KeyIdxValid=%d\0A\00", align 1
@AR_KeyIdxValid = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"  PhyErrCode=0x%02x\0A\00", align 1
@AR_PHYErr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"  KeyMiss=%d\0A\00", align 1
@AR_KeyCacheMiss = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"  Timetamp: 0x%05x\0A\00", align 1
@AR_RcvTimestamp = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [10 x i8] c"\0A ------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5211_decode_rxstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5211_decode_rxstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5211_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5211_desc* %3, i32* %5, i32 16)
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
  %25 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_DataLen, align 4
  %33 = and i32 %31, %32
  %34 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR_More, align 4
  %37 = call i32 @MF(i32 %35, i32 %36)
  %38 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AR_RcvSigStrength, align 4
  %41 = call i32 @MS(i32 %39, i32 %40)
  %42 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AR_RcvAntenna, align 4
  %45 = call i32 @MS(i32 %43, i32 %44)
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %37, i32 %41, i32 %45)
  %47 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AR_Done, align 4
  %50 = call i32 @MF(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AR_FrmRcvOK, align 4
  %54 = call i32 @MF(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AR_CRCErr, align 4
  %58 = call i32 @MF(i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AR_DecryptCRCErr, align 4
  %62 = call i32 @MF(i32 %60, i32 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %54, i32 %58, i32 %62)
  %64 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AR_KeyIdxValid, align 4
  %67 = call i32 @MF(i32 %65, i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AR_PHYErr, align 4
  %72 = call i32 @MS(i32 %70, i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %72)
  %74 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AR_KeyCacheMiss, align 4
  %77 = call i32 @MF(i32 %75, i32 %76)
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  %79 = getelementptr inbounds %struct.ar5211_desc, %struct.ar5211_desc* %3, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AR_RcvTimestamp, align 4
  %82 = call i32 @MS(i32 %80, i32 %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5211_desc*, i32*, i32) #1

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
