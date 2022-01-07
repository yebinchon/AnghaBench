; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_clear_default_vsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_clear_default_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_set_vsi_promiscuous_modes = type { i8*, i8*, i8* }

@i40e_aqc_opc_set_vsi_promiscuous_modes = common dso_local global i32 0, align 4
@I40E_AQC_SET_VSI_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_clear_default_vsi(%struct.i40e_hw* %0, i32 %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_asq_cmd_details*, align 8
  %7 = alloca %struct.i40e_aq_desc, align 4
  %8 = alloca %struct.i40e_aqc_set_vsi_promiscuous_modes*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %6, align 8
  %10 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %7, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.i40e_aqc_set_vsi_promiscuous_modes*
  store %struct.i40e_aqc_set_vsi_promiscuous_modes* %12, %struct.i40e_aqc_set_vsi_promiscuous_modes** %8, align 8
  %13 = load i32, i32* @i40e_aqc_opc_set_vsi_promiscuous_modes, align 4
  %14 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %7, i32 %13)
  %15 = call i8* @CPU_TO_LE16(i32 0)
  %16 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %8, align 8
  %17 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @I40E_AQC_SET_VSI_DEFAULT, align 4
  %19 = call i8* @CPU_TO_LE16(i32 %18)
  %20 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %8, align 8
  %21 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i8* @CPU_TO_LE16(i32 %22)
  %24 = load %struct.i40e_aqc_set_vsi_promiscuous_modes*, %struct.i40e_aqc_set_vsi_promiscuous_modes** %8, align 8
  %25 = getelementptr inbounds %struct.i40e_aqc_set_vsi_promiscuous_modes, %struct.i40e_aqc_set_vsi_promiscuous_modes* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %27 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %6, align 8
  %28 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %26, %struct.i40e_aq_desc* %7, i32* null, i32 0, %struct.i40e_asq_cmd_details* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  ret i32 %29
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
