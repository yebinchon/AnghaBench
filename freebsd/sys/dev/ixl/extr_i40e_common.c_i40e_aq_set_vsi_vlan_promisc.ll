; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_vsi_vlan_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_vsi_vlan_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_set_vsi_promiscuous_modes = type { i8*, i8*, i8* }

@i40e_aqc_opc_set_vsi_promiscuous_modes = common dso_local global i32 0, align 4
@I40E_AQC_SET_VSI_PROMISC_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_vsi_vlan_promisc(%struct.i40e_hw* %0, i32 %1, i32 %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  %9 = alloca %struct.i40e_aq_desc, align 4
  %10 = alloca %struct.i40e_aqc_set_vsi_promiscuous_modes*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %13 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.i40e_aqc_set_vsi_promiscuous_modes*
  store %struct.i40e_aqc_set_vsi_promiscuous_modes* %15, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @i40e_aqc_opc_set_vsi_promiscuous_modes, align 4
  %17 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %9, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_VLAN, align 4
  %22 = load i32, i32* %12, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %12, align 4
  %26 = call i8* @CPU_TO_LE16(i32 %25)
  %27 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  %28 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @I40E_AQC_SET_VSI_PROMISC_VLAN, align 4
  %30 = call i8* @CPU_TO_LE16(i32 %29)
  %31 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  %32 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i8* @CPU_TO_LE16(i32 %33)
  %35 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %10, align 8
  %36 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %38 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %39 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %37, %struct.i40e_aq_desc* %9, i32* null, i32 0, %struct.i40e_asq_cmd_details* %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i8* @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
