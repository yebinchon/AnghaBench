; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_rx_q_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_pf_rx_q_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, i8*, i64, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.bxe_fastpath = type { i32, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rxq_pause_params = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.ecore_rxq_setup_params = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i64, i64, i64, i32, i32 }

@FW_PREFETCH_CNT = common dso_local global i32 0, align 4
@RX_SGE_USABLE_PER_PAGE = common dso_local global i32 0, align 4
@RX_SGE_NUM_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"sge ring threshold limit\0A\00", align 1
@SGE_PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGES_PER_SGE = common dso_local global i32 0, align 4
@PAGES_PER_SGE_SHIFT = common dso_local global i32 0, align 4
@SGE_PAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"rx bd ring threshold limit\0A\00", align 1
@RCQ_NUM_PAGES = common dso_local global i32 0, align 4
@RCQ_USABLE_PER_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"rcq ring threshold limit\0A\00", align 1
@BCM_PAGE_SIZE = common dso_local global i64 0, align 8
@IP_HEADER_ALIGNMENT_PADDING = common dso_local global i64 0, align 8
@BXE_RX_ALIGN_SHIFT = common dso_local global i32 0, align 4
@HC_INDEX_ETH_RX_CQ_CONS = common dso_local global i32 0, align 4
@EVL_VLID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.bxe_fastpath*, %struct.rxq_pause_params*, %struct.ecore_rxq_setup_params*)* @bxe_pf_rx_q_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_pf_rx_q_prep(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1, %struct.rxq_pause_params* %2, %struct.ecore_rxq_setup_params* %3) #0 {
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %struct.bxe_fastpath*, align 8
  %7 = alloca %struct.rxq_pause_params*, align 8
  %8 = alloca %struct.ecore_rxq_setup_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %6, align 8
  store %struct.rxq_pause_params* %2, %struct.rxq_pause_params** %7, align 8
  store %struct.ecore_rxq_setup_params* %3, %struct.ecore_rxq_setup_params** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %13 = call i32 @SGE_TH_LO(%struct.bxe_softc* %12)
  %14 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %15 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %14, i32 0, i32 6
  store i32 %13, i32* %15, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %17 = call i32 @SGE_TH_HI(%struct.bxe_softc* %16)
  %18 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %19 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %21 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %4
  %25 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %26 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* @RX_SGE_USABLE_PER_PAGE, align 4
  %31 = load i32, i32* @RX_SGE_NUM_PAGES, align 4
  %32 = mul nsw i32 %30, %31
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %36 = call i32 @BLOGW(%struct.bxe_softc* %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %24, %4
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %39 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  store i8* %43, i8** %11, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %46 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ult i8* %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %51 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %11, align 8
  br label %53

53:                                               ; preds = %49, %37
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %55 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @SGE_PAGE_ALIGN(i32 %56)
  %58 = load i32, i32* @SGE_PAGE_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @PAGES_PER_SGE, align 4
  %62 = add nsw i32 %60, %61
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* @PAGES_PER_SGE, align 4
  %65 = sub nsw i32 %64, 1
  %66 = xor i32 %65, -1
  %67 = and i32 %63, %66
  %68 = load i32, i32* @PAGES_PER_SGE_SHIFT, align 4
  %69 = ashr i32 %67, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @SGE_PAGES, align 4
  %71 = call i64 @min(i32 %70, i32 65535)
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** %10, align 8
  %73 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %74 = call i32 @CHIP_IS_E1(%struct.bxe_softc* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %132, label %76

76:                                               ; preds = %53
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %78 = call i32 @BD_TH_LO(%struct.bxe_softc* %77)
  %79 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %80 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 4
  %81 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %82 = call i64 @BD_TH_HI(%struct.bxe_softc* %81)
  %83 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %84 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %86 = call i32 @RCQ_TH_LO(%struct.bxe_softc* %85)
  %87 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %88 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %90 = call i32 @RCQ_TH_HI(%struct.bxe_softc* %89)
  %91 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %92 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %94 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %111

97:                                               ; preds = %76
  %98 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %99 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %105 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %97
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %110 = call i32 @BLOGW(%struct.bxe_softc* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %97, %76
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %113 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %111
  %117 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %118 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* @RCQ_NUM_PAGES, align 4
  %123 = load i32, i32* @RCQ_USABLE_PER_PAGE, align 4
  %124 = mul nsw i32 %122, %123
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %116
  %127 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %128 = call i32 @BLOGW(%struct.bxe_softc* %127, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %129

129:                                              ; preds = %126, %116, %111
  %130 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %131 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %130, i32 0, i32 3
  store i32 1, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %53
  %133 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %134 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %133, i32 0, i32 5
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %138 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %137, i32 0, i32 16
  store i32 %136, i32* %138, align 4
  %139 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %140 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %144 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %143, i32 0, i32 15
  store i32 %142, i32* %144, align 8
  %145 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %146 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %150 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %149, i32 0, i32 14
  store i64 %148, i64* %150, align 8
  %151 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %152 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @BCM_PAGE_SIZE, align 8
  %156 = add nsw i64 %154, %155
  %157 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %158 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %157, i32 0, i32 13
  store i64 %156, i64* %158, align 8
  %159 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %160 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IP_HEADER_ALIGNMENT_PADDING, align 8
  %163 = sub nsw i64 %161, %162
  %164 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %165 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %164, i32 0, i32 12
  store i64 %163, i64* %165, align 8
  %166 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %167 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %170 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %169, i32 0, i32 11
  store i32 %168, i32* %170, align 8
  %171 = load i8*, i8** %11, align 8
  %172 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %173 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %172, i32 0, i32 10
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** %10, align 8
  %175 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %176 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %175, i32 0, i32 9
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %179 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %181 = call i8* @SC_FUNC(%struct.bxe_softc* %180)
  %182 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %183 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %182, i32 0, i32 8
  store i8* %181, i8** %183, align 8
  %184 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %185 = call i8* @SC_FUNC(%struct.bxe_softc* %184)
  %186 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %187 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %186, i32 0, i32 7
  store i8* %185, i8** %187, align 8
  %188 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %189 = call i32 @MAX_AGG_QS(%struct.bxe_softc* %188)
  %190 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %191 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %190, i32 0, i32 6
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* @BXE_RX_ALIGN_SHIFT, align 4
  %193 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %194 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 4
  %195 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %6, align 8
  %196 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %199 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %198, i32 0, i32 4
  store i32 %197, i32* %199, align 8
  %200 = load i32, i32* @HC_INDEX_ETH_RX_CQ_CONS, align 4
  %201 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %202 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %204 = call i64 @IS_MF_AFEX(%struct.bxe_softc* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %132
  %207 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %208 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %213 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %212, i32 0, i32 2
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* @EVL_VLID_MASK, align 4
  %215 = load %struct.ecore_rxq_setup_params*, %struct.ecore_rxq_setup_params** %8, align 8
  %216 = getelementptr inbounds %struct.ecore_rxq_setup_params, %struct.ecore_rxq_setup_params* %215, i32 0, i32 1
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %206, %132
  ret void
}

declare dso_local i32 @SGE_TH_LO(%struct.bxe_softc*) #1

declare dso_local i32 @SGE_TH_HI(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGW(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @SGE_PAGE_ALIGN(i32) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @BD_TH_LO(%struct.bxe_softc*) #1

declare dso_local i64 @BD_TH_HI(%struct.bxe_softc*) #1

declare dso_local i32 @RCQ_TH_LO(%struct.bxe_softc*) #1

declare dso_local i32 @RCQ_TH_HI(%struct.bxe_softc*) #1

declare dso_local i8* @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @MAX_AGG_QS(%struct.bxe_softc*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
