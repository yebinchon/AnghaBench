; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_sp_ll2_rx_queue_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_ll2.c_ecore_sp_ll2_rx_queue_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_ll2_info = type { %struct.TYPE_12__, i64, i32, i32, %struct.ecore_ll2_rx_queue }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i64 }
%struct.ecore_ll2_rx_queue = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.core_rx_start_ramrod_data = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, i64, i32, i32, i32, i32, i8*, i32, i8*, i32, i8* }
%struct.TYPE_11__ = type { i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.core_rx_start_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@CORE_RAMROD_RX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_CORE = common dso_local global i32 0, align 4
@ECORE_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_FCOE = common dso_local global i64 0, align 8
@ECORE_MF_LL2_NON_UNICAST = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_ROCE = common dso_local global i32 0, align 4
@ECORE_LL2_TYPE_IWARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_ll2_info*, i32)* @ecore_sp_ll2_rx_queue_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_sp_ll2_rx_queue_start(%struct.ecore_hwfn* %0, %struct.ecore_ll2_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_ll2_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ecore_ll2_rx_queue*, align 8
  %10 = alloca %struct.core_rx_start_ramrod_data*, align 8
  %11 = alloca %struct.ecore_spq_entry*, align 8
  %12 = alloca %struct.ecore_sp_init_data, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_ll2_info* %1, %struct.ecore_ll2_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %16 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %20 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %19, i32 0, i32 4
  store %struct.ecore_ll2_rx_queue* %20, %struct.ecore_ll2_rx_queue** %9, align 8
  %21 = load i8*, i8** @OSAL_NULL, align 8
  %22 = bitcast i8* %21 to %struct.core_rx_start_ramrod_data*
  store %struct.core_rx_start_ramrod_data* %22, %struct.core_rx_start_ramrod_data** %10, align 8
  %23 = load i8*, i8** @OSAL_NULL, align 8
  %24 = bitcast i8* %23 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %24, %struct.ecore_spq_entry** %11, align 8
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %25, i32* %14, align 4
  %26 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %12, i32 0, i32 12)
  %27 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %32 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %37 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %12, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %39 = load i32, i32* @CORE_RAMROD_RX_QUEUE_START, align 4
  %40 = load i32, i32* @PROTOCOLID_CORE, align 4
  %41 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %38, %struct.ecore_spq_entry** %11, i32 %39, i32 %40, %struct.ecore_sp_init_data* %12)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @ECORE_SUCCESS, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %3
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %4, align 4
  br label %178

47:                                               ; preds = %3
  %48 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %49 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store %struct.core_rx_start_ramrod_data* %50, %struct.core_rx_start_ramrod_data** %10, align 8
  %51 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %52 = call i64 @ecore_int_get_sp_sb_id(%struct.ecore_hwfn* %51)
  %53 = call i8* @OSAL_CPU_TO_LE16(i64 %52)
  %54 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %55 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %54, i32 0, i32 15
  store i8* %53, i8** %55, align 8
  %56 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %9, align 8
  %57 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %60 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %59, i32 0, i32 14
  store i32 %58, i32* %60, align 8
  %61 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %62 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %64 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i8* @OSAL_CPU_TO_LE16(i64 %66)
  %68 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %69 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %68, i32 0, i32 13
  store i8* %67, i8** %69, align 8
  %70 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %71 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %70, i32 0, i32 12
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %9, align 8
  %74 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DMA_REGPAIR_LE(i32 %72, i32 %76)
  %78 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %9, align 8
  %79 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %78, i32 0, i32 0
  %80 = call i64 @ecore_chain_get_page_cnt(i32* %79)
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i8* @OSAL_CPU_TO_LE16(i64 %81)
  %83 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %84 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %83, i32 0, i32 11
  store i8* %82, i8** %84, align 8
  %85 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %86 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ecore_ll2_rx_queue*, %struct.ecore_ll2_rx_queue** %9, align 8
  %89 = getelementptr inbounds %struct.ecore_ll2_rx_queue, %struct.ecore_ll2_rx_queue* %88, i32 0, i32 0
  %90 = call i32 @ecore_chain_get_pbl_phys(i32* %89)
  %91 = call i32 @DMA_REGPAIR_LE(i32 %87, i32 %90)
  %92 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %93 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %97 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %96, i32 0, i32 9
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %99 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %103 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @ECORE_MF_UFP_SPECIFIC, align 4
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %106 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %105, i32 0, i32 0
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = call i64 @OSAL_TEST_BIT(i32 %104, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %47
  %112 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %113 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* @ECORE_LL2_TYPE_FCOE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %121 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %120, i32 0, i32 1
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %111, %47
  %123 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %124 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %127 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 8
  %128 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %129 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %132 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %131, i32 0, i32 6
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* @ECORE_MF_LL2_NON_UNICAST, align 4
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %135 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = call i64 @OSAL_TEST_BIT(i32 %133, i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %158

140:                                              ; preds = %122
  %141 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %142 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %141, i32 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @ECORE_LL2_TYPE_ROCE, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* @ECORE_LL2_TYPE_IWARP, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %149
  %154 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %155 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %154, i32 0, i32 2
  store i32 1, i32* %155, align 8
  %156 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %157 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %156, i32 0, i32 3
  store i32 1, i32* %157, align 4
  br label %163

158:                                              ; preds = %149, %145, %140, %122
  %159 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %160 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %159, i32 0, i32 2
  store i32 0, i32* %160, align 8
  %161 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %162 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %161, i32 0, i32 3
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %166 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  %168 = load %struct.ecore_ll2_info*, %struct.ecore_ll2_info** %6, align 8
  %169 = getelementptr inbounds %struct.ecore_ll2_info, %struct.ecore_ll2_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.core_rx_start_ramrod_data*, %struct.core_rx_start_ramrod_data** %10, align 8
  %173 = getelementptr inbounds %struct.core_rx_start_ramrod_data, %struct.core_rx_start_ramrod_data* %172, i32 0, i32 4
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %175 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %11, align 8
  %176 = load i8*, i8** @OSAL_NULL, align 8
  %177 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %174, %struct.ecore_spq_entry* %175, i8* %176)
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %163, %45
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i64) #1

declare dso_local i64 @ecore_int_get_sp_sb_id(%struct.ecore_hwfn*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i64 @ecore_chain_get_page_cnt(i32*) #1

declare dso_local i32 @ecore_chain_get_pbl_phys(i32*) #1

declare dso_local i64 @OSAL_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
