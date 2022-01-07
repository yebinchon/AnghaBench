; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds.c_ar5416_decode_rxstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar5416_ds.c_ar5416_decode_rxstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar5416_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"[%u.%06u] [%llu] RXSTATUS: RxDone=%d, RxRate=0x%02x, TS=0x%08x\0A\00", align 1
@AR_RxDone = common dso_local global i32 0, align 4
@AR_RxRate = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"  link=0x%08x, data=0x%08x, ctl0=0x%08x, ctl2=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  RSSICtl[0]=%d, RSSICtl[1]=%d, RSSICtl[2]=%d\0A\00", align 1
@AR_RxRSSIAnt00 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt01 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt02 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"  RSSIExt[0]=%d, RSSIExt[1]=%d, RSSIExt[2]=%d, RSSIComb=%d\0A\00", align 1
@AR_RxRSSIAnt10 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt11 = common dso_local global i32 0, align 4
@AR_RxRSSIAnt12 = common dso_local global i32 0, align 4
@AR_RxRSSICombined = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"  RxTimestamp=0x%08x,\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c" DataLen=%d, RxMore=%d, NumDelim=%d\0A\00", align 1
@AR_DataLen = common dso_local global i32 0, align 4
@AR_RxMore = common dso_local global i32 0, align 4
@AR_NumDelim = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [60 x i8] c"  GI=%d, 2040=%d, RxRate=0x%02x, DupFrame=%d, RxAnt=0x%08x\0A\00", align 1
@AR_GI = common dso_local global i32 0, align 4
@AR_2040 = common dso_local global i32 0, align 4
@AR_DupFrame = common dso_local global i32 0, align 4
@AR_RxAntenna = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [47 x i8] c"  RxEvm0=0x%08x, RxEvm1=0x%08x, RxEvm2=0x%08x\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"  RxDone=%d, RxFrameOk=%d, CrcErr=%d, DecryptCrcErr=%d\0A\00", align 1
@AR_RxFrameOK = common dso_local global i32 0, align 4
@AR_CRCErr = common dso_local global i32 0, align 4
@AR_DecryptCRCErr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [63 x i8] c"  PhyErr=%d, MichaelErr=%d, PreDelimCRCErr=%d, KeyIdxValid=%d\0A\00", align 1
@AR_PHYErr = common dso_local global i32 0, align 4
@AR_MichaelErr = common dso_local global i32 0, align 4
@AR_PreDelimCRCErr = common dso_local global i32 0, align 4
@AR_RxKeyIdxValid = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [62 x i8] c"  RxMoreAggr=%d, RxAggr=%d, PostDelimCRCErr=%d, HiRxChain=%d\0A\00", align 1
@AR_RxMoreAggr = common dso_local global i32 0, align 4
@AR_RxAggr = common dso_local global i32 0, align 4
@AR_PostDelimCRCErr = common dso_local global i32 0, align 4
@AR_HiRxChain = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [20 x i8] c"  PhyErrCode=0x%02x\00", align 1
@AR_PHYErrCode = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [16 x i8] c"  KeyIdx=0x%02x\00", align 1
@AR_KeyIdx = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c", KeyMiss=%d\0A\00", align 1
@AR_KeyMiss = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [10 x i8] c"\0A ------\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar5416_decode_rxstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5416_decode_rxstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar5416_desc, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar5416_desc* %3, i32* %5, i32 52)
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
  %24 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @AR_RxDone, align 4
  %27 = call i32 @MF(i32 %25, i32 %26)
  %28 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AR_RxRate, align 4
  %31 = call i32 @MS(i32 %29, i32 %30)
  %32 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %18, i64 %23, i32 %27, i32 %31, i32 %33)
  %35 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %40, i32 %42)
  %44 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AR_RxRSSIAnt00, align 4
  %47 = call i32 @MS(i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AR_RxRSSIAnt01, align 4
  %51 = call i32 @MS(i32 %49, i32 %50)
  %52 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @AR_RxRSSIAnt02, align 4
  %55 = call i32 @MS(i32 %53, i32 %54)
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %51, i32 %55)
  %57 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @AR_RxRSSIAnt10, align 4
  %60 = call i32 @MS(i32 %58, i32 %59)
  %61 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AR_RxRSSIAnt11, align 4
  %64 = call i32 @MS(i32 %62, i32 %63)
  %65 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AR_RxRSSIAnt12, align 4
  %68 = call i32 @MS(i32 %66, i32 %67)
  %69 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AR_RxRSSICombined, align 4
  %72 = call i32 @MS(i32 %70, i32 %71)
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %60, i32 %64, i32 %68, i32 %72)
  %74 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %75)
  %77 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @AR_DataLen, align 4
  %80 = and i32 %78, %79
  %81 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR_RxMore, align 4
  %84 = call i32 @MF(i32 %82, i32 %83)
  %85 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AR_NumDelim, align 4
  %88 = call i32 @MS(i32 %86, i32 %87)
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %80, i32 %84, i32 %88)
  %90 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @AR_GI, align 4
  %93 = call i32 @MF(i32 %91, i32 %92)
  %94 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @AR_2040, align 4
  %97 = call i32 @MF(i32 %95, i32 %96)
  %98 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AR_RxRate, align 4
  %101 = call i32 @MS(i32 %99, i32 %100)
  %102 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AR_DupFrame, align 4
  %105 = call i32 @MF(i32 %103, i32 %104)
  %106 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AR_RxAntenna, align 4
  %109 = call i32 @MS(i32 %107, i32 %108)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0), i32 %93, i32 %97, i32 %101, i32 %105, i32 %109)
  %111 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 10
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 11
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i32 %112, i32 %114, i32 %116)
  %118 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AR_RxDone, align 4
  %121 = call i32 @MF(i32 %119, i32 %120)
  %122 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AR_RxFrameOK, align 4
  %125 = call i32 @MF(i32 %123, i32 %124)
  %126 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AR_CRCErr, align 4
  %129 = call i32 @MF(i32 %127, i32 %128)
  %130 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AR_DecryptCRCErr, align 4
  %133 = call i32 @MF(i32 %131, i32 %132)
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i32 %121, i32 %125, i32 %129, i32 %133)
  %135 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @AR_PHYErr, align 4
  %138 = call i32 @MF(i32 %136, i32 %137)
  %139 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @AR_MichaelErr, align 4
  %142 = call i32 @MF(i32 %140, i32 %141)
  %143 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AR_PreDelimCRCErr, align 4
  %146 = call i32 @MF(i32 %144, i32 %145)
  %147 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @AR_RxKeyIdxValid, align 4
  %150 = call i32 @MF(i32 %148, i32 %149)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 %138, i32 %142, i32 %146, i32 %150)
  %152 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @AR_RxMoreAggr, align 4
  %155 = call i32 @MF(i32 %153, i32 %154)
  %156 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AR_RxAggr, align 4
  %159 = call i32 @MF(i32 %157, i32 %158)
  %160 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @AR_PostDelimCRCErr, align 4
  %163 = call i32 @MF(i32 %161, i32 %162)
  %164 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AR_HiRxChain, align 4
  %167 = call i32 @MF(i32 %165, i32 %166)
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.10, i64 0, i64 0), i32 %155, i32 %159, i32 %163, i32 %167)
  %169 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @AR_PHYErr, align 4
  %172 = call i32 @MF(i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %1
  %175 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @AR_PHYErrCode, align 4
  %178 = call i32 @MS(i32 %176, i32 %177)
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %178)
  br label %186

180:                                              ; preds = %1
  %181 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @AR_KeyIdx, align 4
  %184 = call i32 @MS(i32 %182, i32 %183)
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %180, %174
  %187 = getelementptr inbounds %struct.ar5416_desc, %struct.ar5416_desc* %3, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @AR_KeyMiss, align 4
  %190 = call i32 @MF(i32 %188, i32 %189)
  %191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %190)
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
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
