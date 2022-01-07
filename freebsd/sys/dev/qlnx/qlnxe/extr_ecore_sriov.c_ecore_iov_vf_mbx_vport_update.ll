; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_vport_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vf_mbx_vport_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rss_params = type { i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }
%struct.ecore_vf_info = type { i32, i32, i32, i32, i32, %struct.ecore_iov_vf_mbx }
%struct.ecore_iov_vf_mbx = type { i32 }
%struct.ecore_sp_vport_update_params = type { %struct.ecore_rss_params*, i32, i32 }
%struct.ecore_sge_tpa_params = type { i32 }

@OSAL_NULL = common dso_local global %struct.ecore_rss_params* null, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"No VPORT instance available for VF[%d], failing vport update\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i64 0, align 8
@PFVF_STATUS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Upper-layer prevents said VF configuration\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"No feature tlvs found for vport update\0A\00", align 1
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*)* @ecore_iov_vf_mbx_vport_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vf_mbx_vport_update(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1, %struct.ecore_vf_info* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca %struct.ecore_ptt*, align 8
  %6 = alloca %struct.ecore_vf_info*, align 8
  %7 = alloca %struct.ecore_rss_params*, align 8
  %8 = alloca %struct.ecore_sp_vport_update_params, align 8
  %9 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %10 = alloca %struct.ecore_sge_tpa_params, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %5, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %6, align 8
  %16 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** @OSAL_NULL, align 8
  store %struct.ecore_rss_params* %16, %struct.ecore_rss_params** %7, align 8
  %17 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %18 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %17, i32 0, i32 5
  store %struct.ecore_iov_vf_mbx* %18, %struct.ecore_iov_vf_mbx** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %19 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %21 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %26 = load i32, i32* @ECORE_MSG_IOV, align 4
  %27 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %28 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %25, i32 %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %31, i32* %13, align 4
  br label %117

32:                                               ; preds = %3
  %33 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.ecore_rss_params* @OSAL_VZALLOC(i32 %35, i32 4)
  store %struct.ecore_rss_params* %36, %struct.ecore_rss_params** %7, align 8
  %37 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** %7, align 8
  %38 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** @OSAL_NULL, align 8
  %39 = icmp eq %struct.ecore_rss_params* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %41, i32* %13, align 4
  br label %117

42:                                               ; preds = %32
  %43 = call i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params* %8, i32 0, i32 16)
  %44 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %45 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %8, i32 0, i32 2
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %49 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %8, i32 0, i32 1
  store i32 %50, i32* %51, align 8
  %52 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** @OSAL_NULL, align 8
  %53 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %8, i32 0, i32 0
  store %struct.ecore_rss_params* %52, %struct.ecore_rss_params** %53, align 8
  %54 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %55 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %56 = call i32 @ecore_iov_vp_update_act_param(%struct.ecore_hwfn* %54, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_iov_vf_mbx* %55, i64* %11)
  %57 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %58 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %59 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %60 = call i32 @ecore_iov_vp_update_vlan_param(%struct.ecore_hwfn* %57, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_vf_info* %58, %struct.ecore_iov_vf_mbx* %59, i64* %11)
  %61 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %62 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %63 = call i32 @ecore_iov_vp_update_tx_switch(%struct.ecore_hwfn* %61, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_iov_vf_mbx* %62, i64* %11)
  %64 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %65 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %66 = call i32 @ecore_iov_vp_update_mcast_bin_param(%struct.ecore_hwfn* %64, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_iov_vf_mbx* %65, i64* %11)
  %67 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %68 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %69 = call i32 @ecore_iov_vp_update_accept_flag(%struct.ecore_hwfn* %67, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_iov_vf_mbx* %68, i64* %11)
  %70 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %71 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %72 = call i32 @ecore_iov_vp_update_accept_any_vlan(%struct.ecore_hwfn* %70, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_iov_vf_mbx* %71, i64* %11)
  %73 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %74 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %75 = call i32 @ecore_iov_vp_update_sge_tpa_param(%struct.ecore_hwfn* %73, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_sge_tpa_params* %10, %struct.ecore_iov_vf_mbx* %74, i64* %11)
  %76 = load i64, i64* %11, align 8
  store i64 %76, i64* %12, align 8
  %77 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %78 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %79 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** %7, align 8
  %80 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %81 = call i32 @ecore_iov_vp_update_rss_param(%struct.ecore_hwfn* %77, %struct.ecore_vf_info* %78, %struct.ecore_sp_vport_update_params* %8, %struct.ecore_rss_params* %79, %struct.ecore_iov_vf_mbx* %80, i64* %11, i64* %12)
  %82 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %83 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %84 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @OSAL_IOV_VF_VPORT_UPDATE(%struct.ecore_hwfn* %82, i32 %85, %struct.ecore_sp_vport_update_params* %8, i64* %12)
  %87 = load i64, i64* @ECORE_SUCCESS, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %42
  store i64 0, i64* %12, align 8
  %90 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  store i32 %90, i32* %13, align 4
  br label %117

91:                                               ; preds = %42
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %107, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %99 = load i32, i32* @ECORE_MSG_IOV, align 4
  %100 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %98, i32 %99, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %105

101:                                              ; preds = %94
  %102 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %103 = load i32, i32* @ECORE_MSG_IOV, align 4
  %104 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %102, i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %97
  %106 = load i32, i32* @PFVF_STATUS_NOT_SUPPORTED, align 4
  store i32 %106, i32* %13, align 4
  br label %117

107:                                              ; preds = %91
  %108 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %109 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %110 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** @OSAL_NULL, align 8
  %111 = call i32 @ecore_sp_vport_update(%struct.ecore_hwfn* %108, %struct.ecore_sp_vport_update_params* %8, i32 %109, %struct.ecore_rss_params* %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %114, %107
  br label %117

117:                                              ; preds = %116, %105, %89, %40, %24
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %119 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ecore_rss_params*, %struct.ecore_rss_params** %7, align 8
  %122 = call i32 @OSAL_VFREE(i32 %120, %struct.ecore_rss_params* %121)
  %123 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %124 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %125 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i64, i64* %11, align 8
  %128 = load i64, i64* %12, align 8
  %129 = call i64 @ecore_iov_prep_vp_update_resp_tlvs(%struct.ecore_hwfn* %123, %struct.ecore_vf_info* %124, %struct.ecore_iov_vf_mbx* %125, i32 %126, i64 %127, i64 %128)
  store i64 %129, i64* %14, align 8
  %130 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %131 = load %struct.ecore_ptt*, %struct.ecore_ptt** %5, align 8
  %132 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %6, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @ecore_iov_send_response(%struct.ecore_hwfn* %130, %struct.ecore_ptt* %131, %struct.ecore_vf_info* %132, i64 %133, i32 %134)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local %struct.ecore_rss_params* @OSAL_VZALLOC(i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_vport_update_params*, i32, i32) #1

declare dso_local i32 @ecore_iov_vp_update_act_param(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_iov_vf_mbx*, i64*) #1

declare dso_local i32 @ecore_iov_vp_update_vlan_param(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_vf_info*, %struct.ecore_iov_vf_mbx*, i64*) #1

declare dso_local i32 @ecore_iov_vp_update_tx_switch(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_iov_vf_mbx*, i64*) #1

declare dso_local i32 @ecore_iov_vp_update_mcast_bin_param(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_iov_vf_mbx*, i64*) #1

declare dso_local i32 @ecore_iov_vp_update_accept_flag(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_iov_vf_mbx*, i64*) #1

declare dso_local i32 @ecore_iov_vp_update_accept_any_vlan(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_iov_vf_mbx*, i64*) #1

declare dso_local i32 @ecore_iov_vp_update_sge_tpa_param(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_sge_tpa_params*, %struct.ecore_iov_vf_mbx*, i64*) #1

declare dso_local i32 @ecore_iov_vp_update_rss_param(%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_sp_vport_update_params*, %struct.ecore_rss_params*, %struct.ecore_iov_vf_mbx*, i64*, i64*) #1

declare dso_local i64 @OSAL_IOV_VF_VPORT_UPDATE(%struct.ecore_hwfn*, i32, %struct.ecore_sp_vport_update_params*, i64*) #1

declare dso_local i32 @ecore_sp_vport_update(%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, i32, %struct.ecore_rss_params*) #1

declare dso_local i32 @OSAL_VFREE(i32, %struct.ecore_rss_params*) #1

declare dso_local i64 @ecore_iov_prep_vp_update_resp_tlvs(%struct.ecore_hwfn*, %struct.ecore_vf_info*, %struct.ecore_iov_vf_mbx*, i32, i64, i64) #1

declare dso_local i32 @ecore_iov_send_response(%struct.ecore_hwfn*, %struct.ecore_ptt*, %struct.ecore_vf_info*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
