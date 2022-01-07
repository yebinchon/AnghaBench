; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_configure_rfs_ntuple_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_l2.c_ecore_configure_rfs_ntuple_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_spq_comp_cb = type { i32 }
%struct.ecore_ntuple_filter_params = type { i64, i32, i64, i64, i32 }
%struct.rx_update_gft_filter_data = type { i32, i32, i8*, i64, i64, i8*, i8*, i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rx_update_gft_filter_data }
%struct.ecore_sp_init_data = type { i32, %struct.ecore_spq_comp_cb*, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_RFS_NTUPLE_QID_RSS = common dso_local global i64 0, align 8
@ECORE_SPQ_MODE_CB = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_GFT_UPDATE_FILTER = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@GFT_ADD_FILTER = common dso_local global i32 0, align 4
@GFT_DELETE_FILTER = common dso_local global i32 0, align 4
@ECORE_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"V[%0x], Q[%04x] - %s filter from 0x%llx [length %04xb]\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Removing\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_configure_rfs_ntuple_filter(%struct.ecore_hwfn* %0, %struct.ecore_spq_comp_cb* %1, %struct.ecore_ntuple_filter_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_spq_comp_cb*, align 8
  %7 = alloca %struct.ecore_ntuple_filter_params*, align 8
  %8 = alloca %struct.rx_update_gft_filter_data*, align 8
  %9 = alloca %struct.ecore_spq_entry*, align 8
  %10 = alloca %struct.ecore_sp_init_data, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_spq_comp_cb* %1, %struct.ecore_spq_comp_cb** %6, align 8
  store %struct.ecore_ntuple_filter_params* %2, %struct.ecore_ntuple_filter_params** %7, align 8
  %14 = load i8*, i8** @OSAL_NULL, align 8
  %15 = bitcast i8* %14 to %struct.rx_update_gft_filter_data*
  store %struct.rx_update_gft_filter_data* %15, %struct.rx_update_gft_filter_data** %8, align 8
  %16 = load i8*, i8** @OSAL_NULL, align 8
  %17 = bitcast i8* %16 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %17, %struct.ecore_spq_entry** %9, align 8
  store i32 0, i32* %11, align 4
  store i64 0, i64* %12, align 8
  %18 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %20 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %21 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ecore_fw_vport(%struct.ecore_hwfn* %19, i32 %22, i64* %12)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @ECORE_SUCCESS, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %4, align 4
  br label %149

29:                                               ; preds = %3
  %30 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %31 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ECORE_RFS_NTUPLE_QID_RSS, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %37 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %38 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ecore_fw_l2_queue(%struct.ecore_hwfn* %36, i64 %39, i32* %11)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @ECORE_SUCCESS, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %4, align 4
  br label %149

46:                                               ; preds = %35
  br label %47

47:                                               ; preds = %46, %29
  %48 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %10, i32 0, i32 24)
  %49 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %50 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %49)
  %51 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %53 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 2
  store i32 %55, i32* %56, align 8
  %57 = load %struct.ecore_spq_comp_cb*, %struct.ecore_spq_comp_cb** %6, align 8
  %58 = icmp ne %struct.ecore_spq_comp_cb* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %47
  %60 = load i32, i32* @ECORE_SPQ_MODE_CB, align 4
  %61 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load %struct.ecore_spq_comp_cb*, %struct.ecore_spq_comp_cb** %6, align 8
  %63 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 1
  store %struct.ecore_spq_comp_cb* %62, %struct.ecore_spq_comp_cb** %63, align 8
  br label %67

64:                                               ; preds = %47
  %65 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %66 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 0
  store i32 %65, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %69 = load i32, i32* @ETH_RAMROD_GFT_UPDATE_FILTER, align 4
  %70 = load i32, i32* @PROTOCOLID_ETH, align 4
  %71 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %68, %struct.ecore_spq_entry** %9, i32 %69, i32 %70, %struct.ecore_sp_init_data* %10)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @ECORE_SUCCESS, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  store i32 %76, i32* %4, align 4
  br label %149

77:                                               ; preds = %67
  %78 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %79 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store %struct.rx_update_gft_filter_data* %80, %struct.rx_update_gft_filter_data** %8, align 8
  %81 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %82 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %85 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @DMA_REGPAIR_LE(i32 %83, i64 %86)
  %88 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %89 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @OSAL_CPU_TO_LE16(i32 %90)
  %92 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %93 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  %94 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %95 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ECORE_RFS_NTUPLE_QID_RSS, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %77
  %100 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %101 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @OSAL_CPU_TO_LE16(i32 %102)
  %104 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %105 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %104, i32 0, i32 5
  store i8* %103, i8** %105, align 8
  br label %106

106:                                              ; preds = %99, %77
  %107 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %108 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %107, i32 0, i32 4
  store i64 0, i64* %108, align 8
  %109 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %110 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load i64, i64* %12, align 8
  %112 = trunc i64 %111 to i32
  %113 = call i8* @OSAL_CPU_TO_LE16(i32 %112)
  %114 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %115 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %114, i32 0, i32 2
  store i8* %113, i8** %115, align 8
  %116 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %117 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %106
  %121 = load i32, i32* @GFT_ADD_FILTER, align 4
  br label %124

122:                                              ; preds = %106
  %123 = load i32, i32* @GFT_DELETE_FILTER, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = load %struct.rx_update_gft_filter_data*, %struct.rx_update_gft_filter_data** %8, align 8
  %127 = getelementptr inbounds %struct.rx_update_gft_filter_data, %struct.rx_update_gft_filter_data* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %129 = load i32, i32* @ECORE_MSG_SP, align 4
  %130 = load i64, i64* %12, align 8
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %133 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %138 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %139 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.ecore_ntuple_filter_params*, %struct.ecore_ntuple_filter_params** %7, align 8
  %142 = getelementptr inbounds %struct.ecore_ntuple_filter_params, %struct.ecore_ntuple_filter_params* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %128, i32 %129, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %130, i32 %131, i8* %137, i64 %140, i32 %143)
  %145 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %146 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %147 = load i8*, i8** @OSAL_NULL, align 8
  %148 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %145, %struct.ecore_spq_entry* %146, i8* %147)
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %124, %75, %44, %27
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i32 @ecore_fw_vport(%struct.ecore_hwfn*, i32, i64*) #1

declare dso_local i32 @ecore_fw_l2_queue(%struct.ecore_hwfn*, i64, i32*) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i64) #1

declare dso_local i8* @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i64, i32, i8*, i64, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
