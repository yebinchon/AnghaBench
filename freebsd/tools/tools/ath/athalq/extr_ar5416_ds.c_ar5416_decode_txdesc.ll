; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds.c_ar5416_decode_txdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds.c_ar5416_decode_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"[%u.%06u] [%llu] TXD\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  link=0x%08x, data=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"    Frame Len=%d, VMF=%d\0A\00", align 1
@AR_FrameLen = common dso_local global i32 0, align 4
@AR_VirtMoreFrag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"    TX power0=%d, RtsEna=%d, Veol=%d, ClrDstMask=%d\0A\00", align 1
@AR_XmitPower = common dso_local global i32 0, align 4
@AR_RTSEnable = common dso_local global i32 0, align 4
@AR_VEOL = common dso_local global i32 0, align 4
@AR_ClrDestMask = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"    TxIntrReq=%d, DestIdxValid=%d, CtsEnable=%d\0A\00", align 1
@AR_TxIntrReq = common dso_local global i32 0, align 4
@AR_DestIdxValid = common dso_local global i32 0, align 4
@AR_CTSEnable = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"    BufLen=%d, TxMore=%d, DestIdx=%d, FrType=0x%x\0A\00", align 1
@AR_BufLen = common dso_local global i32 0, align 4
@AR_TxMore = common dso_local global i32 0, align 4
@AR_DestIdx = common dso_local global i32 0, align 4
@AR_FrameType = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [68 x i8] c"    NoAck=%d, InsertTs=%d, CorruptFcs=%d, ExtOnly=%d, ExtAndCtl=%d\0A\00", align 1
@AR_NoAck = common dso_local global i32 0, align 4
@AR_InsertTS = common dso_local global i32 0, align 4
@AR_CorruptFCS = common dso_local global i32 0, align 4
@AR_ExtOnly = common dso_local global i32 0, align 4
@AR_ExtAndCtl = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"    MoreAggr=%d, IsAggr=%d, MoreRifs=%d\0A\00", align 1
@AR_MoreAggr = common dso_local global i32 0, align 4
@AR_IsAggr = common dso_local global i32 0, align 4
@AR_MoreRifs = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"    DurUpEna=%d, Burstdur=0x%04x\0A\00", align 1
@AR_DurUpdateEn = common dso_local global i32 0, align 4
@AR_BurstDur = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"    Try0=%d, Try1=%d, Try2=%d, Try3=%d\0A\00", align 1
@AR_XmitDataTries0 = common dso_local global i32 0, align 4
@AR_XmitDataTries1 = common dso_local global i32 0, align 4
@AR_XmitDataTries2 = common dso_local global i32 0, align 4
@AR_XmitDataTries3 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [51 x i8] c"    try 0: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\0A\00", align 1
@AR_XmitRate0 = common dso_local global i32 0, align 4
@AR_PacketDur0 = common dso_local global i32 0, align 4
@AR_RTSCTSQual0 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [51 x i8] c"    try 1: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\0A\00", align 1
@AR_XmitRate1 = common dso_local global i32 0, align 4
@AR_PacketDur1 = common dso_local global i32 0, align 4
@AR_RTSCTSQual1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"    try 2: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\0A\00", align 1
@AR_XmitRate2 = common dso_local global i32 0, align 4
@AR_PacketDur2 = common dso_local global i32 0, align 4
@AR_RTSCTSQual2 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [51 x i8] c"    try 3: Rate=0x%02x, PktDur=%d, RTS/CTS ena=%d\0A\00", align 1
@AR_XmitRate3 = common dso_local global i32 0, align 4
@AR_PacketDur3 = common dso_local global i32 0, align 4
@AR_RTSCTSQual3 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [42 x i8] c"    AggrLen=%d, PadDelim=%d, EncrType=%d\0A\00", align 1
@AR_AggrLen = common dso_local global i32 0, align 4
@AR_PadDelim = common dso_local global i32 0, align 4
@AR_EncrType = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [52 x i8] c"    try 0: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\0A\00", align 1
@AR_ChainSel0 = common dso_local global i32 0, align 4
@AR_GI0 = common dso_local global i32 0, align 4
@AR_2040_0 = common dso_local global i32 0, align 4
@AR_STBC0 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [52 x i8] c"    try 1: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\0A\00", align 1
@AR_ChainSel1 = common dso_local global i32 0, align 4
@AR_GI1 = common dso_local global i32 0, align 4
@AR_2040_1 = common dso_local global i32 0, align 4
@AR_STBC1 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [52 x i8] c"    try 2: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\0A\00", align 1
@AR_ChainSel2 = common dso_local global i32 0, align 4
@AR_GI2 = common dso_local global i32 0, align 4
@AR_2040_2 = common dso_local global i32 0, align 4
@AR_STBC2 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [52 x i8] c"    try 3: chainMask=0x%x, GI=%d, 2040=%d, STBC=%d\0A\00", align 1
@AR_ChainSel3 = common dso_local global i32 0, align 4
@AR_GI3 = common dso_local global i32 0, align 4
@AR_2040_3 = common dso_local global i32 0, align 4
@AR_STBC3 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"    RTSCtsRate=0x%02x\0A\00", align 1
@AR_RTSCTSRate = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"    try 0: ant=0x%08x\0A\00", align 1
@AR_AntCtl0 = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [35 x i8] c"    try 1: TxPower=%d, ant=0x%08x\0A\00", align 1
@AR_XmitPower1 = common dso_local global i32 0, align 4
@AR_AntCtl1 = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [35 x i8] c"    try 2: TxPower=%d, ant=0x%08x\0A\00", align 1
@AR_XmitPower2 = common dso_local global i32 0, align 4
@AR_AntCtl2 = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [35 x i8] c"    try 3: TxPower=%d, ant=0x%08x\0A\00", align 1
@AR_XmitPower3 = common dso_local global i32 0, align 4
@AR_AntCtl3 = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"\0A ------ \0A\00", align 1
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
  %25 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %28)
  %30 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_FrameLen, align 4
  %33 = and i32 %31, %32
  %34 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR_VirtMoreFrag, align 4
  %37 = call i32 @MF(i32 %35, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %37)
  %39 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR_XmitPower, align 4
  %42 = call i32 @MS(i32 %40, i32 %41)
  %43 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @AR_RTSEnable, align 4
  %46 = call i32 @MF(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AR_VEOL, align 4
  %50 = call i32 @MF(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AR_ClrDestMask, align 4
  %54 = call i32 @MF(i32 %52, i32 %53)
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %46, i32 %50, i32 %54)
  %56 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AR_TxIntrReq, align 4
  %59 = call i32 @MF(i32 %57, i32 %58)
  %60 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AR_DestIdxValid, align 4
  %63 = call i32 @MF(i32 %61, i32 %62)
  %64 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AR_CTSEnable, align 4
  %67 = call i32 @MF(i32 %65, i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %63, i32 %67)
  %69 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AR_BufLen, align 4
  %72 = and i32 %70, %71
  %73 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AR_TxMore, align 4
  %76 = call i32 @MF(i32 %74, i32 %75)
  %77 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AR_DestIdx, align 4
  %80 = call i32 @MS(i32 %78, i32 %79)
  %81 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR_FrameType, align 4
  %84 = call i32 @MS(i32 %82, i32 %83)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %76, i32 %80, i32 %84)
  %86 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @AR_NoAck, align 4
  %89 = call i32 @MF(i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AR_InsertTS, align 4
  %93 = call i32 @MF(i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AR_CorruptFCS, align 4
  %97 = call i32 @MF(i32 %95, i32 %96)
  %98 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AR_ExtOnly, align 4
  %101 = call i32 @MF(i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AR_ExtAndCtl, align 4
  %105 = call i32 @MF(i32 %103, i32 %104)
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i32 %89, i32 %93, i32 %97, i32 %101, i32 %105)
  %107 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @AR_MoreAggr, align 4
  %110 = call i32 @MF(i32 %108, i32 %109)
  %111 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AR_IsAggr, align 4
  %114 = call i32 @MF(i32 %112, i32 %113)
  %115 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @AR_MoreRifs, align 4
  %118 = call i32 @MF(i32 %116, i32 %117)
  %119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %110, i32 %114, i32 %118)
  %120 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @AR_DurUpdateEn, align 4
  %123 = call i32 @MF(i32 %121, i32 %122)
  %124 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AR_BurstDur, align 4
  %127 = call i32 @MS(i32 %125, i32 %126)
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %123, i32 %127)
  %129 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @AR_XmitDataTries0, align 4
  %132 = call i32 @MS(i32 %130, i32 %131)
  %133 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @AR_XmitDataTries1, align 4
  %136 = call i32 @MS(i32 %134, i32 %135)
  %137 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AR_XmitDataTries2, align 4
  %140 = call i32 @MS(i32 %138, i32 %139)
  %141 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @AR_XmitDataTries3, align 4
  %144 = call i32 @MS(i32 %142, i32 %143)
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %132, i32 %136, i32 %140, i32 %144)
  %146 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @AR_XmitRate0, align 4
  %149 = call i32 @MS(i32 %147, i32 %148)
  %150 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @AR_PacketDur0, align 4
  %153 = call i32 @MS(i32 %151, i32 %152)
  %154 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @AR_RTSCTSQual0, align 4
  %157 = call i32 @MF(i32 %155, i32 %156)
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0), i32 %149, i32 %153, i32 %157)
  %159 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @AR_XmitRate1, align 4
  %162 = call i32 @MS(i32 %160, i32 %161)
  %163 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @AR_PacketDur1, align 4
  %166 = call i32 @MS(i32 %164, i32 %165)
  %167 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AR_RTSCTSQual1, align 4
  %170 = call i32 @MF(i32 %168, i32 %169)
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0), i32 %162, i32 %166, i32 %170)
  %172 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @AR_XmitRate2, align 4
  %175 = call i32 @MS(i32 %173, i32 %174)
  %176 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @AR_PacketDur2, align 4
  %179 = call i32 @MS(i32 %177, i32 %178)
  %180 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @AR_RTSCTSQual2, align 4
  %183 = call i32 @MF(i32 %181, i32 %182)
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i32 %175, i32 %179, i32 %183)
  %185 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @AR_XmitRate3, align 4
  %188 = call i32 @MS(i32 %186, i32 %187)
  %189 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @AR_PacketDur3, align 4
  %192 = call i32 @MS(i32 %190, i32 %191)
  %193 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @AR_RTSCTSQual3, align 4
  %196 = call i32 @MF(i32 %194, i32 %195)
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0), i32 %188, i32 %192, i32 %196)
  %198 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 8
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @AR_AggrLen, align 4
  %201 = call i32 @MS(i32 %199, i32 %200)
  %202 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @AR_PadDelim, align 4
  %205 = call i32 @MS(i32 %203, i32 %204)
  %206 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 8
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @AR_EncrType, align 4
  %209 = call i32 @MS(i32 %207, i32 %208)
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.14, i64 0, i64 0), i32 %201, i32 %205, i32 %209)
  %211 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @AR_ChainSel0, align 4
  %214 = call i32 @MS(i32 %212, i32 %213)
  %215 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @AR_GI0, align 4
  %218 = call i32 @MF(i32 %216, i32 %217)
  %219 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @AR_2040_0, align 4
  %222 = call i32 @MF(i32 %220, i32 %221)
  %223 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @AR_STBC0, align 4
  %226 = call i32 @MF(i32 %224, i32 %225)
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i32 %214, i32 %218, i32 %222, i32 %226)
  %228 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @AR_ChainSel1, align 4
  %231 = call i32 @MS(i32 %229, i32 %230)
  %232 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @AR_GI1, align 4
  %235 = call i32 @MF(i32 %233, i32 %234)
  %236 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @AR_2040_1, align 4
  %239 = call i32 @MF(i32 %237, i32 %238)
  %240 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @AR_STBC1, align 4
  %243 = call i32 @MF(i32 %241, i32 %242)
  %244 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0), i32 %231, i32 %235, i32 %239, i32 %243)
  %245 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @AR_ChainSel2, align 4
  %248 = call i32 @MS(i32 %246, i32 %247)
  %249 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @AR_GI2, align 4
  %252 = call i32 @MF(i32 %250, i32 %251)
  %253 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @AR_2040_2, align 4
  %256 = call i32 @MF(i32 %254, i32 %255)
  %257 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* @AR_STBC2, align 4
  %260 = call i32 @MF(i32 %258, i32 %259)
  %261 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i64 0, i64 0), i32 %248, i32 %252, i32 %256, i32 %260)
  %262 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @AR_ChainSel3, align 4
  %265 = call i32 @MS(i32 %263, i32 %264)
  %266 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @AR_GI3, align 4
  %269 = call i32 @MF(i32 %267, i32 %268)
  %270 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @AR_2040_3, align 4
  %273 = call i32 @MF(i32 %271, i32 %272)
  %274 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %275 = load i32, i32* %274, align 4
  %276 = load i32, i32* @AR_STBC3, align 4
  %277 = call i32 @MF(i32 %275, i32 %276)
  %278 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.18, i64 0, i64 0), i32 %265, i32 %269, i32 %273, i32 %277)
  %279 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @AR_RTSCTSRate, align 4
  %282 = call i32 @MS(i32 %280, i32 %281)
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %282)
  %284 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 10
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @AR_AntCtl0, align 4
  %287 = and i32 %285, %286
  %288 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %287)
  %289 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 11
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* @AR_XmitPower1, align 4
  %292 = call i32 @MS(i32 %290, i32 %291)
  %293 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 11
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* @AR_AntCtl1, align 4
  %296 = and i32 %294, %295
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.21, i64 0, i64 0), i32 %292, i32 %296)
  %298 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 12
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @AR_XmitPower2, align 4
  %301 = call i32 @MS(i32 %299, i32 %300)
  %302 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 12
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @AR_AntCtl2, align 4
  %305 = and i32 %303, %304
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i32 %301, i32 %305)
  %307 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 13
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* @AR_XmitPower3, align 4
  %310 = call i32 @MS(i32 %308, i32 %309)
  %311 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 13
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @AR_AntCtl3, align 4
  %314 = and i32 %312, %313
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 %310, i32 %314)
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(%struct.ar5416_desc*, i32*, i32) #1

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
