; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5212_ds.c_ar5212_decode_rxstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5212_ds.c_ar5212_decode_rxstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5212_desc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"[%u.%06u] [%llu] RXSTATUS: RxOK=%d TS=0x%08x\0A\00", align 1
@AR_Done = common dso_local global i32 0, align 4
@AR_RcvTimestamp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"  link=0x%08x, data=0x%08x, ctl0=0x%08x, ctl2=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"  DataLen=%d, ArMore=%d, DecompCrcError=%d, RcvRate=0x%02x\0A\00", align 1
@AR_DataLen = common dso_local global i32 0, align 4
@AR_More = common dso_local global i32 0, align 4
@AR_DecompCRCErr = common dso_local global i32 0, align 4
@AR_RcvRate = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"  RSSI=%d, RcvAntenna=0x%x\0A\00", align 1
@AR_RcvSigStrength = common dso_local global i32 0, align 4
@AR_RcvAntenna = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\0A\00", align 1
@AR_FrmRcvOK = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"  PhyErr=%d, MichaelErr=%d, KeyIdxValid=%d\0A\00", align 1
@AR_PHYErr = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@AR_KeyIdxValid = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"  PhyErrCode=0x%02x\0A\00", align 1
@AR_PHYErrCode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [17 x i8] c"  KeyIdx=0x%02x\0A\00", align 1
@AR_KeyIdx = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"  KeyMiss=%d\0A\00", align 1
@AR_KeyCacheMiss = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"  Timetamp: 0x%05x\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"\0A ------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5212_decode_rxstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212_decode_rxstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5212_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5212_desc* %3, i32* %5, i32 24)
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
  %24 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AR_Done, align 4
  %27 = call i32 @MF(i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AR_RcvTimestamp, align 4
  %31 = call i32 @MS(i32 %29, i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %18, i64 %23, i32 %27, i32 %31)
  %33 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36, i32 %38, i32 %40)
  %42 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AR_DataLen, align 4
  %45 = and i32 %43, %44
  %46 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @AR_More, align 4
  %49 = call i32 @MF(i32 %47, i32 %48)
  %50 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @AR_DecompCRCErr, align 4
  %53 = call i32 @MF(i32 %51, i32 %52)
  %54 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @AR_RcvRate, align 4
  %57 = call i32 @MS(i32 %55, i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %45, i32 %49, i32 %53, i32 %57)
  %59 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AR_RcvSigStrength, align 4
  %62 = call i32 @MS(i32 %60, i32 %61)
  %63 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AR_RcvAntenna, align 4
  %66 = call i32 @MS(i32 %64, i32 %65)
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %62, i32 %66)
  %68 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AR_Done, align 4
  %71 = call i32 @MF(i32 %69, i32 %70)
  %72 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AR_FrmRcvOK, align 4
  %75 = call i32 @MF(i32 %73, i32 %74)
  %76 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @AR_CRCErr, align 4
  %79 = call i32 @MF(i32 %77, i32 %78)
  %80 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AR_DecryptCRCErr, align 4
  %83 = call i32 @MF(i32 %81, i32 %82)
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %75, i32 %79, i32 %83)
  %85 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AR_PHYErr, align 4
  %88 = call i32 @MF(i32 %86, i32 %87)
  %89 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @AR_MichaelErr, align 4
  %92 = call i32 @MF(i32 %90, i32 %91)
  %93 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AR_KeyIdxValid, align 4
  %96 = call i32 @MF(i32 %94, i32 %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %88, i32 %92, i32 %96)
  %98 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AR_PHYErr, align 4
  %101 = call i32 @MF(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %1
  %104 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @AR_PHYErrCode, align 4
  %107 = call i32 @MS(i32 %105, i32 %106)
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %107)
  br label %115

109:                                              ; preds = %1
  %110 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AR_KeyIdx, align 4
  %113 = call i32 @MS(i32 %111, i32 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %103
  %116 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AR_KeyCacheMiss, align 4
  %119 = call i32 @MF(i32 %117, i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %119)
  %121 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @AR_RcvTimestamp, align 4
  %124 = call i32 @MS(i32 %122, i32 %123)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %124)
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
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
