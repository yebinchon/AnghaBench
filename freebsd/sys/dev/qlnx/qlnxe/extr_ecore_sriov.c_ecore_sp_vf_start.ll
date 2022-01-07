; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_sp_vf_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_sp_vf_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_vf_info = type { i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.vf_start_ramrod_data = type { %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i64*, i32* }
%struct.ecore_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.vf_start_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@COMMON_RAMROD_VF_START = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PXP_CONCRETE_FID_VFID = common dso_local global i32 0, align 4
@PERSONALITY_ETH = common dso_local global i32 0, align 4
@PERSONALITY_RDMA_AND_ETH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unknown VF personality %d\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ETH_HSI_VER_MINOR = common dso_local global i64 0, align 8
@ETH_HSI_VER_NO_PKT_LEN_TUNN = common dso_local global i64 0, align 8
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [107 x i8] c"VF [%d] - Requested fp hsi %02x.%02x which is slightly newer than PF's %02x.%02x; Configuring PFs version\0A\00", align 1
@ETH_HSI_VER_MAJOR = common dso_local global i32 0, align 4
@ETH_VER_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"VF[%d] - Starting using HSI %02x.%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, %struct.ecore_vf_info*)* @ecore_sp_vf_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_sp_vf_start(%struct.ecore_hwfn* %0, %struct.ecore_vf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_vf_info*, align 8
  %6 = alloca %struct.vf_start_ramrod_data*, align 8
  %7 = alloca %struct.ecore_spq_entry*, align 8
  %8 = alloca %struct.ecore_sp_init_data, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_vf_info* %1, %struct.ecore_vf_info** %5, align 8
  %11 = load i8*, i8** @OSAL_NULL, align 8
  %12 = bitcast i8* %11 to %struct.vf_start_ramrod_data*
  store %struct.vf_start_ramrod_data* %12, %struct.vf_start_ramrod_data** %6, align 8
  %13 = load i8*, i8** @OSAL_NULL, align 8
  %14 = bitcast i8* %13 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %14, %struct.ecore_spq_entry** %7, align 8
  %15 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %15, i32* %9, align 4
  %16 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %8, i32 0, i32 12)
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %18 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %17)
  %19 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %25 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %27 = load i32, i32* @COMMON_RAMROD_VF_START, align 4
  %28 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %29 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %26, %struct.ecore_spq_entry** %7, i32 %27, i32 %28, %struct.ecore_sp_init_data* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %124

35:                                               ; preds = %2
  %36 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store %struct.vf_start_ramrod_data* %38, %struct.vf_start_ramrod_data** %6, align 8
  %39 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %40 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PXP_CONCRETE_FID_VFID, align 4
  %43 = call i32 @GET_FIELD(i32 %41, i32 %42)
  %44 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %45 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %47 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @OSAL_CPU_TO_LE16(i32 %48)
  %50 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %51 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %53 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %64 [
    i32 130, label %56
    i32 128, label %60
    i32 129, label %60
  ]

56:                                               ; preds = %35
  %57 = load i32, i32* @PERSONALITY_ETH, align 4
  %58 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %59 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %72

60:                                               ; preds = %35, %35
  %61 = load i32, i32* @PERSONALITY_RDMA_AND_ETH, align 4
  %62 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %63 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  br label %72

64:                                               ; preds = %35
  %65 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %67 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %65, i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %71, i32* %3, align 4
  br label %124

72:                                               ; preds = %60, %56
  %73 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %74 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %10, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %72
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @ETH_HSI_VER_NO_PKT_LEN_TUNN, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %87 = load i32, i32* @ECORE_MSG_IOV, align 4
  %88 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %89 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %92 = load i64, i64* %10, align 8
  %93 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %94 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  %95 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %86, i32 %87, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i64 %92, i32 %93, i64 %94)
  %96 = load i64, i64* @ETH_HSI_VER_MINOR, align 8
  store i64 %96, i64* %10, align 8
  br label %97

97:                                               ; preds = %85, %81, %72
  %98 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %99 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %100 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @ETH_VER_KEY, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load i64, i64* %10, align 8
  %106 = load %struct.vf_start_ramrod_data*, %struct.vf_start_ramrod_data** %6, align 8
  %107 = getelementptr inbounds %struct.vf_start_ramrod_data, %struct.vf_start_ramrod_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @ETH_VER_KEY, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  store i64 %105, i64* %111, align 8
  %112 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %113 = load i32, i32* @ECORE_MSG_IOV, align 4
  %114 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %5, align 8
  %115 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ETH_HSI_VER_MAJOR, align 4
  %118 = load i64, i64* %10, align 8
  %119 = call i32 (%struct.ecore_hwfn*, i32, i8*, i32, i32, i64, ...) @DP_VERBOSE(%struct.ecore_hwfn* %112, i32 %113, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %116, i32 %117, i64 %118)
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %121 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %7, align 8
  %122 = load i8*, i8** @OSAL_NULL, align 8
  %123 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %120, %struct.ecore_spq_entry* %121, i8* %122)
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %97, %64, %33
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @OSAL_CPU_TO_LE16(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32, i32, i64, ...) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
