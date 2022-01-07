; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_vlan_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_vp_update_vlan_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_sp_vport_update_params = type { i32, i32 }
%struct.ecore_vf_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_iov_vf_mbx = type { i32 }
%struct.vfpf_vport_update_vlan_strip_tlv = type { i32 }

@CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP = common dso_local global i32 0, align 4
@VLAN_ADDR_FORCED = common dso_local global i32 0, align 4
@ECORE_IOV_VP_UPDATE_VLAN_STRIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.ecore_sp_vport_update_params*, %struct.ecore_vf_info*, %struct.ecore_iov_vf_mbx*, i32*)* @ecore_iov_vp_update_vlan_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_vp_update_vlan_param(%struct.ecore_hwfn* %0, %struct.ecore_sp_vport_update_params* %1, %struct.ecore_vf_info* %2, %struct.ecore_iov_vf_mbx* %3, i32* %4) #0 {
  %6 = alloca %struct.ecore_hwfn*, align 8
  %7 = alloca %struct.ecore_sp_vport_update_params*, align 8
  %8 = alloca %struct.ecore_vf_info*, align 8
  %9 = alloca %struct.ecore_iov_vf_mbx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vfpf_vport_update_vlan_strip_tlv*, align 8
  %12 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %6, align 8
  store %struct.ecore_sp_vport_update_params* %1, %struct.ecore_sp_vport_update_params** %7, align 8
  store %struct.ecore_vf_info* %2, %struct.ecore_vf_info** %8, align 8
  store %struct.ecore_iov_vf_mbx* %3, %struct.ecore_iov_vf_mbx** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i32, i32* @CHANNEL_TLV_VPORT_UPDATE_VLAN_STRIP, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %6, align 8
  %15 = load %struct.ecore_iov_vf_mbx*, %struct.ecore_iov_vf_mbx** %9, align 8
  %16 = getelementptr inbounds %struct.ecore_iov_vf_mbx, %struct.ecore_iov_vf_mbx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn* %14, i32 %17, i32 %18)
  %20 = inttoptr i64 %19 to %struct.vfpf_vport_update_vlan_strip_tlv*
  store %struct.vfpf_vport_update_vlan_strip_tlv* %20, %struct.vfpf_vport_update_vlan_strip_tlv** %11, align 8
  %21 = load %struct.vfpf_vport_update_vlan_strip_tlv*, %struct.vfpf_vport_update_vlan_strip_tlv** %11, align 8
  %22 = icmp ne %struct.vfpf_vport_update_vlan_strip_tlv* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %52

24:                                               ; preds = %5
  %25 = load %struct.vfpf_vport_update_vlan_strip_tlv*, %struct.vfpf_vport_update_vlan_strip_tlv** %11, align 8
  %26 = getelementptr inbounds %struct.vfpf_vport_update_vlan_strip_tlv, %struct.vfpf_vport_update_vlan_strip_tlv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %29 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %32 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VLAN_ADDR_FORCED, align 4
  %35 = shl i32 1, %34
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %24
  %39 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %40 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.vfpf_vport_update_vlan_strip_tlv*, %struct.vfpf_vport_update_vlan_strip_tlv** %11, align 8
  %42 = getelementptr inbounds %struct.vfpf_vport_update_vlan_strip_tlv, %struct.vfpf_vport_update_vlan_strip_tlv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ecore_sp_vport_update_params*, %struct.ecore_sp_vport_update_params** %7, align 8
  %45 = getelementptr inbounds %struct.ecore_sp_vport_update_params, %struct.ecore_sp_vport_update_params* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %38, %24
  %47 = load i32, i32* @ECORE_IOV_VP_UPDATE_VLAN_STRIP, align 4
  %48 = shl i32 1, %47
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %23
  ret void
}

declare dso_local i64 @ecore_iov_search_list_tlvs(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
