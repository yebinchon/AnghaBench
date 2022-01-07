; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_stats_out_params = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ecore_hwfn = type { i32, i32, %struct.ecore_rdma_info* }
%struct.ecore_rdma_info = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.ecore_rdma_stats_out_params }
%struct.TYPE_5__ = type { %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params }
%struct.TYPE_4__ = type { i64 }
%struct.ecore_ptt = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"ecore rdma query stats failed due to NULL rdma_info\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"ecore rdma query stats failed due to invalid statistics queue %d. maximum is %d\0A\00", align 1
@ECORE_RDMA_STATS_QUEUE = common dso_local global i32 0, align 4
@BAR0_MAP_REG_PSDM_RAM = common dso_local global i64 0, align 8
@BAR0_MAP_REG_TSDM_RAM = common dso_local global i64 0, align 8
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"rc = %d\0A\00", align 1
@BAR0_MAP_REG_YSDM_RAM = common dso_local global i64 0, align 8
@BAR0_MAP_REG_XSDM_RAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_query_stats(i8* %0, i64 %1, %struct.ecore_rdma_stats_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ecore_rdma_stats_out_params*, align 8
  %8 = alloca %struct.ecore_hwfn*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ecore_rdma_info*, align 8
  %15 = alloca %struct.ecore_ptt*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ecore_rdma_stats_out_params* %2, %struct.ecore_rdma_stats_out_params** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %18, %struct.ecore_hwfn** %8, align 8
  %19 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %21 = icmp ne %struct.ecore_hwfn* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %23, i32* %4, align 4
  br label %252

24:                                               ; preds = %3
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %26 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %25, i32 0, i32 2
  %27 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %26, align 8
  %28 = icmp ne %struct.ecore_rdma_info* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %31 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DP_INFO(i32 %32, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %34, i32* %4, align 4
  br label %252

35:                                               ; preds = %24
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %37 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %36, i32 0, i32 2
  %38 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %37, align 8
  store %struct.ecore_rdma_info* %38, %struct.ecore_rdma_info** %14, align 8
  %39 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %40 = call i32 @ecore_rdma_inc_ref_cnt(%struct.ecore_hwfn* %39)
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* @ECORE_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %16, align 4
  store i32 %45, i32* %4, align 4
  br label %252

46:                                               ; preds = %35
  %47 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %48 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %47, i32 0, i32 2
  %49 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %48, align 8
  %50 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %59 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %10, align 8
  %63 = call i32 @DP_ERR(i32 %60, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %61, i64 %62)
  %64 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %64, i32* %16, align 4
  br label %248

65:                                               ; preds = %46
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %67 = load i32, i32* @ECORE_RDMA_STATS_QUEUE, align 4
  %68 = call i64 @RESC_START(%struct.ecore_hwfn* %66, i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = add nsw i64 %68, %69
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* @BAR0_MAP_REG_PSDM_RAM, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i64 @PSTORM_RDMA_QUEUE_STAT_OFFSET(i64 %72)
  %74 = add nsw i64 %71, %73
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* @BAR0_MAP_REG_TSDM_RAM, align 8
  %76 = load i64, i64* %9, align 8
  %77 = call i64 @TSTORM_RDMA_QUEUE_STAT_OFFSET(i64 %76)
  %78 = add nsw i64 %75, %77
  store i64 %78, i64* %12, align 8
  %79 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %80 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %79, i32 0, i32 3
  %81 = call i32 @OSAL_MEMSET(%struct.ecore_rdma_stats_out_params* %80, i32 0, i32 152)
  %82 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %83 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %82, i32 0, i32 2
  %84 = call i32 @OSAL_MEMSET(%struct.ecore_rdma_stats_out_params* %83, i32 0, i32 152)
  %85 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %86 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = call i32 @OSAL_MEMSET(%struct.ecore_rdma_stats_out_params* %87, i32 0, i32 152)
  %89 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %90 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = call i32 @OSAL_MEMSET(%struct.ecore_rdma_stats_out_params* %91, i32 0, i32 152)
  %93 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %94 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @OSAL_MEMSET(%struct.ecore_rdma_stats_out_params* %95, i32 0, i32 152)
  %97 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %98 = call %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn* %97)
  store %struct.ecore_ptt* %98, %struct.ecore_ptt** %15, align 8
  %99 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %100 = icmp ne %struct.ecore_ptt* %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %65
  %102 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %102, i32* %16, align 4
  %103 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %104 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %103, i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %248

107:                                              ; preds = %65
  %108 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %109 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %110 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %111 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %110, i32 0, i32 3
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %108, %struct.ecore_ptt* %109, %struct.ecore_rdma_stats_out_params* %111, i64 %112, i32 4)
  %114 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %115 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %116 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %117 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %116, i32 0, i32 2
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %114, %struct.ecore_ptt* %115, %struct.ecore_rdma_stats_out_params* %117, i64 %118, i32 4)
  %120 = load i64, i64* @BAR0_MAP_REG_TSDM_RAM, align 8
  %121 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %122 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @TSTORM_ROCE_EVENTS_STAT_OFFSET(i32 %123)
  %125 = add nsw i64 %120, %124
  store i64 %125, i64* %13, align 8
  %126 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %127 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %128 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %129 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i64, i64* %13, align 8
  %132 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %126, %struct.ecore_ptt* %127, %struct.ecore_rdma_stats_out_params* %130, i64 %131, i32 4)
  %133 = load i64, i64* @BAR0_MAP_REG_YSDM_RAM, align 8
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %135 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @YSTORM_ROCE_DCQCN_RECEIVED_STATS_OFFSET(i32 %136)
  %138 = add nsw i64 %133, %137
  store i64 %138, i64* %13, align 8
  %139 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %140 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %141 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %142 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i64, i64* %13, align 8
  %145 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %139, %struct.ecore_ptt* %140, %struct.ecore_rdma_stats_out_params* %143, i64 %144, i32 4)
  %146 = load i64, i64* @BAR0_MAP_REG_PSDM_RAM, align 8
  %147 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %148 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @PSTORM_ROCE_DCQCN_SENT_STATS_OFFSET(i32 %149)
  %151 = add nsw i64 %146, %150
  store i64 %151, i64* %13, align 8
  %152 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %153 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %154 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %155 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %13, align 8
  %158 = call i32 @ecore_memcpy_from(%struct.ecore_hwfn* %152, %struct.ecore_ptt* %153, %struct.ecore_rdma_stats_out_params* %156, i64 %157, i32 4)
  %159 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %160 = load %struct.ecore_ptt*, %struct.ecore_ptt** %15, align 8
  %161 = call i32 @ecore_ptt_release(%struct.ecore_hwfn* %159, %struct.ecore_ptt* %160)
  %162 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %163 = call i32 @OSAL_MEMSET(%struct.ecore_rdma_stats_out_params* %162, i32 0, i32 152)
  %164 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %165 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %165, i32 0, i32 18
  %167 = load i8*, i8** %166, align 8
  %168 = call i8* @HILO_64_REGPAIR(i8* %167)
  %169 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %170 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %169, i32 0, i32 18
  store i8* %168, i8** %170, align 8
  %171 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %172 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %172, i32 0, i32 17
  %174 = load i8*, i8** %173, align 8
  %175 = call i8* @HILO_64_REGPAIR(i8* %174)
  %176 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %177 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %176, i32 0, i32 17
  store i8* %175, i8** %177, align 8
  %178 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %179 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %179, i32 0, i32 16
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @HILO_64_REGPAIR(i8* %181)
  %183 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %184 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %183, i32 0, i32 16
  store i8* %182, i8** %184, align 8
  %185 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %186 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %186, i32 0, i32 15
  %188 = load i8*, i8** %187, align 8
  %189 = call i8* @HILO_64_REGPAIR(i8* %188)
  %190 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %191 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %190, i32 0, i32 15
  store i8* %189, i8** %191, align 8
  %192 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %193 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %194, i32 0, i32 14
  %196 = load i8*, i8** %195, align 8
  %197 = call i8* @OSAL_LE16_TO_CPU(i8* %196)
  %198 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %199 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %198, i32 0, i32 14
  store i8* %197, i8** %199, align 8
  %200 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %201 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %202, i32 0, i32 12
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @OSAL_LE16_TO_CPU(i8* %204)
  %206 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %207 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %206, i32 0, i32 13
  store i8* %205, i8** %207, align 8
  %208 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %209 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %210, i32 0, i32 10
  %212 = load i32, i32* %211, align 8
  %213 = call i8* @OSAL_LE32_TO_CPU(i32 %212)
  %214 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %215 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %214, i32 0, i32 11
  store i8* %213, i8** %215, align 8
  %216 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %217 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 8
  %221 = call i8* @OSAL_LE32_TO_CPU(i32 %220)
  %222 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %223 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %222, i32 0, i32 9
  store i8* %221, i8** %223, align 8
  %224 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %225 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %226, i32 0, i32 7
  %228 = load i8*, i8** %227, align 8
  %229 = call i8* @HILO_64_REGPAIR(i8* %228)
  %230 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %231 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %230, i32 0, i32 7
  store i8* %229, i8** %231, align 8
  %232 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %233 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %234, i32 0, i32 6
  %236 = load i8*, i8** %235, align 8
  %237 = call i8* @HILO_64_REGPAIR(i8* %236)
  %238 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %239 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %238, i32 0, i32 6
  store i8* %237, i8** %239, align 8
  %240 = load %struct.ecore_rdma_info*, %struct.ecore_rdma_info** %14, align 8
  %241 = getelementptr inbounds %struct.ecore_rdma_info, %struct.ecore_rdma_info* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %242, i32 0, i32 5
  %244 = load i8*, i8** %243, align 8
  %245 = call i8* @HILO_64_REGPAIR(i8* %244)
  %246 = load %struct.ecore_rdma_stats_out_params*, %struct.ecore_rdma_stats_out_params** %7, align 8
  %247 = getelementptr inbounds %struct.ecore_rdma_stats_out_params, %struct.ecore_rdma_stats_out_params* %246, i32 0, i32 5
  store i8* %245, i8** %247, align 8
  br label %248

248:                                              ; preds = %107, %101, %57
  %249 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %8, align 8
  %250 = call i32 @ecore_rdma_dec_ref_cnt(%struct.ecore_hwfn* %249)
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %4, align 4
  br label %252

252:                                              ; preds = %248, %44, %29, %22
  %253 = load i32, i32* %4, align 4
  ret i32 %253
}

declare dso_local i32 @DP_INFO(i32, i8*) #1

declare dso_local i32 @ecore_rdma_inc_ref_cnt(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_ERR(i32, i8*, i64, i64) #1

declare dso_local i64 @RESC_START(%struct.ecore_hwfn*, i32) #1

declare dso_local i64 @PSTORM_RDMA_QUEUE_STAT_OFFSET(i64) #1

declare dso_local i64 @TSTORM_RDMA_QUEUE_STAT_OFFSET(i64) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_rdma_stats_out_params*, i32, i32) #1

declare dso_local %struct.ecore_ptt* @ecore_ptt_acquire(%struct.ecore_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @ecore_memcpy_from(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_rdma_stats_out_params*, i64, i32) #1

declare dso_local i64 @TSTORM_ROCE_EVENTS_STAT_OFFSET(i32) #1

declare dso_local i64 @YSTORM_ROCE_DCQCN_RECEIVED_STATS_OFFSET(i32) #1

declare dso_local i64 @PSTORM_ROCE_DCQCN_SENT_STATS_OFFSET(i32) #1

declare dso_local i32 @ecore_ptt_release(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

declare dso_local i8* @HILO_64_REGPAIR(i8*) #1

declare dso_local i8* @OSAL_LE16_TO_CPU(i8*) #1

declare dso_local i8* @OSAL_LE32_TO_CPU(i32) #1

declare dso_local i32 @ecore_rdma_dec_ref_cnt(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
