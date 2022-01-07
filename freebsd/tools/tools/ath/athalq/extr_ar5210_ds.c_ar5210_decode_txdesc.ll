; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5210_ds.c_ar5210_decode_txdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5210_ds.c_ar5210_decode_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5210_desc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"[%u.%06u] [%llu] TXD\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  link=0x%08x, data=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"    Frame Len=%d\0A\00", align 1
@AR_FrameLen = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"    TX Rate=0x%02x, RtsEna=%d, ClrDstMask=%d AntModeXmit=0x%02x\0A\00", align 1
@AR_XmitRate = common dso_local global i32 0, align 4
@AR_RTSCTSEnable = common dso_local global i32 0, align 4
@AR_ClearDestMask = common dso_local global i32 0, align 4
@AR_AntModeXmit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"    FrmType=0x%02x, TxIntrReq=%d\0A\00", align 1
@AR_FrmType = common dso_local global i32 0, align 4
@AR_TxInterReq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"    LongPkt=%d\0A\00", align 1
@AR_LongPkt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"    BufLen=%d, TxMore=%d, EncryptKeyIdx=%d, RtsDuration=%d\0A\00", align 1
@AR_BufLen = common dso_local global i32 0, align 4
@AR_More = common dso_local global i32 0, align 4
@AR_EncryptKeyIdx = common dso_local global i32 0, align 4
@AR_RTSDuration = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"\0A ------ \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5210_decode_txdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5210_decode_txdesc(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5210_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5210_desc* %3, i32* %5, i32 16)
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
  %25 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_FrameLen, align 4
  %33 = and i32 %31, %32
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @AR_XmitRate, align 4
  %38 = call i32 @MS(i32 %36, i32 %37)
  %39 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR_RTSCTSEnable, align 4
  %42 = call i32 @MF(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AR_ClearDestMask, align 4
  %46 = call i32 @MF(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AR_AntModeXmit, align 4
  %50 = call i32 @MF(i32 %48, i32 %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %38, i32 %42, i32 %46, i32 %50)
  %52 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AR_FrmType, align 4
  %55 = call i32 @MS(i32 %53, i32 %54)
  %56 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AR_TxInterReq, align 4
  %59 = call i32 @MF(i32 %57, i32 %58)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32 %59)
  %61 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AR_LongPkt, align 4
  %64 = call i32 @MF(i32 %62, i32 %63)
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @AR_BufLen, align 4
  %69 = and i32 %67, %68
  %70 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @AR_More, align 4
  %73 = call i32 @MF(i32 %71, i32 %72)
  %74 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AR_EncryptKeyIdx, align 4
  %77 = call i32 @MS(i32 %75, i32 %76)
  %78 = getelementptr inbounds %struct.ar5210_desc, %struct.ar5210_desc* %3, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AR_RTSDuration, align 4
  %81 = call i32 @MS(i32 %79, i32 %80)
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %69, i32 %73, i32 %77, i32 %81)
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5210_desc*, i32*, i32) #1

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
