; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_sge_tpa_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_sge_tpa_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_sge_tpa_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_update_params = type { %struct.ecore_sge_tpa_params* }
%struct.ecore_iov_vf_mbx = type { i32 }
%struct.vfpf_vport_update_sge_tpa_tlv = type { i32, i32, i32, i32, i32, i32, i32 }

@CHANNEL_TLV_VPORT_UPDATE_SGE_TPA = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_sge_tpa_params* null, align 8
@VFPF_UPDATE_TPA_EN_FLAG = common dso_local global i32 0, align 4
@VFPF_UPDATE_TPA_PARAM_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_IPV4_EN_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_IPV6_EN_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_PKT_SPLIT_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_HDR_DATA_SPLIT_FLAG = common dso_local global i32 0, align 4
@VFPF_TPA_GRO_CONSIST_FLAG = common dso_local global i32 0, align 4
@ECORE_IOV_VP_UPDATE_SGE_TPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_sge_tpa_params*, %struct.ecore_iov_vf_mbx*, i32*)* @ecore_iov_vp_update_sge_tpa_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vp_update_sge_tpa_param(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sge_tpa_params* %2, %struct.ecore_iov_vf_mbx* %3, i32* %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %8 = alloca %struct.ecore_sge_tpa_params*, align 8
  %9 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vfpf_vport_update_sge_tpa_tlv*, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sp_vport_update_params** %7, align 8
  store %struct.ecore_sge_tpa_params* %2, %struct.ecore_sge_tpa_params** %8, align 8
  store %struct.ecore_iov_vf_mbx* %3, %struct.ecore_iov_vf_mbx** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_SGE_TPA, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %16 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn* %14, i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.vfpf_vport_update_sge_tpa_tlv*
  store %struct.vfpf_vport_update_sge_tpa_tlv* %20, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %21 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %22 = icmp ne %struct.vfpf_vport_update_sge_tpa_tlv* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** @OSAL_NULL, align 8
  %25 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %26 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %25, i32 0, i32 0
  store %struct.ecore_sge_tpa_params* %24, %struct.ecore_sge_tpa_params** %26, align 8
  br label %140

27:                                               ; preds = %5
  %28 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %29 = call i32 @OSAL_MEMSET(%struct.ecore_sge_tpa_params* %28, i32 0, i32 48)
  %30 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %31 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VFPF_UPDATE_TPA_EN_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %40 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %42 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VFPF_UPDATE_TPA_PARAM_FLAG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %51 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %53 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VFPF_TPA_IPV4_EN_FLAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %62 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  %63 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %64 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VFPF_TPA_IPV6_EN_FLAG, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %73 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %75 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @VFPF_TPA_PKT_SPLIT_FLAG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %84 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %86 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @VFPF_TPA_HDR_DATA_SPLIT_FLAG, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %95 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %94, i32 0, i32 5
  store i32 %93, i32* %95, align 4
  %96 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %97 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @VFPF_TPA_GRO_CONSIST_FLAG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %106 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %105, i32 0, i32 6
  store i32 %104, i32* %106, align 4
  %107 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %108 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %111 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 4
  %112 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %113 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %116 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 4
  %117 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %118 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %121 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  %122 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %123 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %126 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 4
  %127 = load %struct.vfpf_vport_update_sge_tpa_tlv*, %struct.vfpf_vport_update_sge_tpa_tlv** %11, align 8
  %128 = getelementptr inbounds %struct.vfpf_vport_update_sge_tpa_tlv, %struct.vfpf_vport_update_sge_tpa_tlv* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %131 = getelementptr inbounds %struct.ecore_sge_tpa_params, %struct.ecore_sge_tpa_params* %130, i32 0, i32 7
  store i32 %129, i32* %131, align 4
  %132 = load %struct.ecore_sge_tpa_params*, %struct.ecore_sge_tpa_params** %8, align 8
  %133 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %134 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %133, i32 0, i32 0
  store %struct.ecore_sge_tpa_params* %132, %struct.ecore_sge_tpa_params** %134, align 8
  %135 = load i32, i32* @ECORE_IOV_VP_UPDATE_SGE_TPA, align 4
  %136 = shl i32 1, %135
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %27, %23
  ret void
}

declare dso_local i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn*, i32, i32) #1

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sge_tpa_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
