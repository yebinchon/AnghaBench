; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_accept_flag.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_accept_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_update_params = type { %struct.ecore_filter_accept_flags }
%struct.ecore_filter_accept_flags = type { i32, i32, i32, i32 }
%struct.ecore_iov_vf_mbx = type { i32 }
%struct.vfpf_vport_update_accept_param_tlv = type { i32, i32, i32, i32 }

@CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM = common dso_local global i32 0, align 4
@ECORE_IOV_VP_UPDATE_ACCEPT_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_iov_vf_mbx*, i32*)* @ecore_iov_vp_update_accept_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vp_update_accept_flag(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_update_params* %1, %struct.ecore_iov_vf_mbx* %2, i32* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %7 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ecore_filter_accept_flags*, align 8
  %10 = alloca %struct.vfpf_vport_update_accept_param_tlv*, align 8
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sp_vport_update_params** %6, align 8
  store %struct.ecore_iov_vf_mbx* %2, %struct.ecore_iov_vf_mbx** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %13 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %12, i32 0, i32 0
  store %struct.ecore_filter_accept_flags* %13, %struct.ecore_filter_accept_flags** %9, align 8
  %14 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_ACCEPT_PARAM, align 4
  store i32 %14, i32* %11, align 4
  %15 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %16 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %17 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn* %15, i32 %18, i32 %19)
  %21 = inttoptr i64 %20 to %struct.vfpf_vport_update_accept_param_tlv*
  store %struct.vfpf_vport_update_accept_param_tlv* %21, %struct.vfpf_vport_update_accept_param_tlv** %10, align 8
  %22 = load %struct.vfpf_vport_update_accept_param_tlv*, %struct.vfpf_vport_update_accept_param_tlv** %10, align 8
  %23 = icmp ne %struct.vfpf_vport_update_accept_param_tlv* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %51

25:                                               ; preds = %4
  %26 = load %struct.vfpf_vport_update_accept_param_tlv*, %struct.vfpf_vport_update_accept_param_tlv** %10, align 8
  %27 = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, %struct.vfpf_vport_update_accept_param_tlv* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ecore_filter_accept_flags*, %struct.ecore_filter_accept_flags** %9, align 8
  %30 = getelementptr inbounds %struct.ecore_filter_accept_flags, %struct.ecore_filter_accept_flags* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vfpf_vport_update_accept_param_tlv*, %struct.vfpf_vport_update_accept_param_tlv** %10, align 8
  %32 = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, %struct.vfpf_vport_update_accept_param_tlv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ecore_filter_accept_flags*, %struct.ecore_filter_accept_flags** %9, align 8
  %35 = getelementptr inbounds %struct.ecore_filter_accept_flags, %struct.ecore_filter_accept_flags* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vfpf_vport_update_accept_param_tlv*, %struct.vfpf_vport_update_accept_param_tlv** %10, align 8
  %37 = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, %struct.vfpf_vport_update_accept_param_tlv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ecore_filter_accept_flags*, %struct.ecore_filter_accept_flags** %9, align 8
  %40 = getelementptr inbounds %struct.ecore_filter_accept_flags, %struct.ecore_filter_accept_flags* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.vfpf_vport_update_accept_param_tlv*, %struct.vfpf_vport_update_accept_param_tlv** %10, align 8
  %42 = getelementptr inbounds %struct.vfpf_vport_update_accept_param_tlv, %struct.vfpf_vport_update_accept_param_tlv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ecore_filter_accept_flags*, %struct.ecore_filter_accept_flags** %9, align 8
  %45 = getelementptr inbounds %struct.ecore_filter_accept_flags, %struct.ecore_filter_accept_flags* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ECORE_IOV_VP_UPDATE_ACCEPT_PARAM, align 4
  %47 = shl i32 1, %46
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %25, %24
  ret void
}

declare dso_local i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
