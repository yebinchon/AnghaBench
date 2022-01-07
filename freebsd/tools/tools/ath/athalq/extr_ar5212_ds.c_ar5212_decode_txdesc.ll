; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5212_ds.c_ar5212_decode_txdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5212_ds.c_ar5212_decode_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5212_desc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"[%u.%06u] [%llu] TXD\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  link=0x%08x, data=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"    Frame Len=%d\0A\00", align 1
@AR_FrameLen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [72 x i8] c"    TX power0=%d, RtsEna=%d, Veol=%d, ClrDstMask=%d AntModeXmit=0x%02x\0A\00", align 1
@AR_XmitPower = common dso_local global i32 0, align 4
@AR_RTSCTSEnable = common dso_local global i32 0, align 4
@AR_VEOL = common dso_local global i32 0, align 4
@AR_ClearDestMask = common dso_local global i32 0, align 4
@AR_AntModeXmit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"    TxIntrReq=%d, DestIdxValid=%d, CtsEnable=%d\0A\00", align 1
@AR_TxInterReq = common dso_local global i32 0, align 4
@AR_DestIdxValid = common dso_local global i32 0, align 4
@AR_CTSEnable = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"    BufLen=%d, TxMore=%d, DestIdx=%d, FrType=0x%x\0A\00", align 1
@AR_BufLen = common dso_local global i32 0, align 4
@AR_More = common dso_local global i32 0, align 4
@AR_DestIdx = common dso_local global i32 0, align 4
@AR_FrmType = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"    NoAck=%d, CompProc=%d, CompIVLen=%d, CompICVLen=%d\0A\00", align 1
@AR_NoAck = common dso_local global i32 0, align 4
@AR_CompProc = common dso_local global i32 0, align 4
@AR_CompIVLen = common dso_local global i32 0, align 4
@AR_CompICVLen = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"    DurUpEna=%d, Burstdur=0x%04x\0A\00", align 1
@AR_DurUpdateEna = common dso_local global i32 0, align 4
@AR_RTSCTSDuration = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [40 x i8] c"    Try0=%d, Try1=%d, Try2=%d, Try3=%d\0A\00", align 1
@AR_XmitDataTries0 = common dso_local global i32 0, align 4
@AR_XmitDataTries1 = common dso_local global i32 0, align 4
@AR_XmitDataTries2 = common dso_local global i32 0, align 4
@AR_XmitDataTries3 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [60 x i8] c"    rate0=0x%02x, rate1=0x%02x, rate2=0x%02x, rate3=0x%02x\0A\00", align 1
@AR_XmitRate0 = common dso_local global i32 0, align 4
@AR_XmitRate1 = common dso_local global i32 0, align 4
@AR_XmitRate2 = common dso_local global i32 0, align 4
@AR_XmitRate3 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [23 x i8] c"    RtsCtsRate=0x%02x\0A\00", align 1
@AR_RTSCTSRate = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"\0A ------ \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5212_decode_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5212_decode_txdesc(%struct.if_ath_alq_payload* %0) #0 {
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
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %18, i64 %23)
  %25 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_FrameLen, align 4
  %33 = and i32 %31, %32
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AR_XmitPower, align 4
  %38 = call i32 @MS(i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR_RTSCTSEnable, align 4
  %42 = call i32 @MF(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AR_VEOL, align 4
  %46 = call i32 @MF(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AR_ClearDestMask, align 4
  %50 = call i32 @MF(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AR_AntModeXmit, align 4
  %54 = call i32 @MF(i32 %52, i32 %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %42, i32 %46, i32 %50, i32 %54)
  %56 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AR_TxInterReq, align 4
  %59 = call i32 @MF(i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AR_DestIdxValid, align 4
  %63 = call i32 @MF(i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AR_CTSEnable, align 4
  %67 = call i32 @MF(i32 %65, i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %63, i32 %67)
  %69 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AR_BufLen, align 4
  %72 = and i32 %70, %71
  %73 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AR_More, align 4
  %76 = call i32 @MF(i32 %74, i32 %75)
  %77 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AR_DestIdx, align 4
  %80 = call i32 @MS(i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR_FrmType, align 4
  %84 = call i32 @MS(i32 %82, i32 %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %76, i32 %80, i32 %84)
  %86 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AR_NoAck, align 4
  %89 = call i32 @MF(i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AR_CompProc, align 4
  %93 = call i32 @MS(i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AR_CompIVLen, align 4
  %97 = call i32 @MS(i32 %95, i32 %96)
  %98 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AR_CompICVLen, align 4
  %101 = call i32 @MS(i32 %99, i32 %100)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %93, i32 %97, i32 %101)
  %103 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AR_DurUpdateEna, align 4
  %106 = call i32 @MF(i32 %104, i32 %105)
  %107 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AR_RTSCTSDuration, align 4
  %110 = call i32 @MS(i32 %108, i32 %109)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %106, i32 %110)
  %112 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AR_XmitDataTries0, align 4
  %115 = call i32 @MS(i32 %113, i32 %114)
  %116 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @AR_XmitDataTries1, align 4
  %119 = call i32 @MS(i32 %117, i32 %118)
  %120 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AR_XmitDataTries2, align 4
  %123 = call i32 @MS(i32 %121, i32 %122)
  %124 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AR_XmitDataTries3, align 4
  %127 = call i32 @MS(i32 %125, i32 %126)
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %115, i32 %119, i32 %123, i32 %127)
  %129 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AR_XmitRate0, align 4
  %132 = call i32 @MS(i32 %130, i32 %131)
  %133 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AR_XmitRate1, align 4
  %136 = call i32 @MS(i32 %134, i32 %135)
  %137 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AR_XmitRate2, align 4
  %140 = call i32 @MS(i32 %138, i32 %139)
  %141 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @AR_XmitRate3, align 4
  %144 = call i32 @MS(i32 %142, i32 %143)
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.9, i64 0, i64 0), i32 %132, i32 %136, i32 %140, i32 %144)
  %146 = getelementptr inbounds %struct.ar5212_desc, %struct.ar5212_desc* %3, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AR_RTSCTSRate, align 4
  %149 = call i32 @MS(i32 %147, i32 %148)
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %149)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5212_desc*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @MF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
