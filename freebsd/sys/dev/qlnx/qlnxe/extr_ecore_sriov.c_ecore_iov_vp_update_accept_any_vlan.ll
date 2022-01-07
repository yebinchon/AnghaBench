; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_accept_any_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_accept_any_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_update_params = type { i32, i32 }
%struct.ecore_iov_vf_mbx = type { i32 }
%struct.vfpf_vport_update_accept_any_vlan_tlv = type { i32, i32 }

@CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@ECORE_IOV_VP_UPDATE_ACCEPT_ANY_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_iov_vf_mbx*, i32*)* @ecore_iov_vp_update_accept_any_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vp_update_accept_any_vlan(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_update_params* %1, %struct.ecore_iov_vf_mbx* %2, i32* %3) #0 {
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %7 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.vfpf_vport_update_accept_any_vlan_tlv*, align 8
  %10 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sp_vport_update_params** %6, align 8
  store %struct.ecore_iov_vf_mbx* %2, %struct.ecore_iov_vf_mbx** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_ACCEPT_ANY_VLAN, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %13 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %7, align 8
  %14 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn* %12, i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.vfpf_vport_update_accept_any_vlan_tlv*
  store %struct.vfpf_vport_update_accept_any_vlan_tlv* %18, %struct.vfpf_vport_update_accept_any_vlan_tlv** %9, align 8
  %19 = load %struct.vfpf_vport_update_accept_any_vlan_tlv*, %struct.vfpf_vport_update_accept_any_vlan_tlv** %9, align 8
  %20 = icmp ne %struct.vfpf_vport_update_accept_any_vlan_tlv* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %4
  br label %38

22:                                               ; preds = %4
  %23 = load %struct.vfpf_vport_update_accept_any_vlan_tlv*, %struct.vfpf_vport_update_accept_any_vlan_tlv** %9, align 8
  %24 = getelementptr inbounds %struct.vfpf_vport_update_accept_any_vlan_tlv, %struct.vfpf_vport_update_accept_any_vlan_tlv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.vfpf_vport_update_accept_any_vlan_tlv*, %struct.vfpf_vport_update_accept_any_vlan_tlv** %9, align 8
  %29 = getelementptr inbounds %struct.vfpf_vport_update_accept_any_vlan_tlv, %struct.vfpf_vport_update_accept_any_vlan_tlv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ECORE_IOV_VP_UPDATE_ACCEPT_ANY_VLAN, align 4
  %34 = shl i32 1, %33
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %22, %21
  ret void
}

declare dso_local i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
