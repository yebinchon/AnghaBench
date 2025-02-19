; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_start_stop_dcbx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_start_stop_dcbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_lldp_stop_start_specific_agent = type { i32 }

@i40e_aqc_opc_lldp_stop_start_spec_agent = common dso_local global i32 0, align 4
@I40E_AQC_START_SPECIFIC_AGENT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_start_stop_dcbx(%struct.i40e_hw* %0, i32 %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_asq_cmd_details*, align 8
  %7 = alloca %struct.i40e_aq_desc, align 4
  %8 = alloca %struct.i40e_aqc_lldp_stop_start_specific_agent*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %6, align 8
  %10 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %7, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.i40e_aqc_lldp_stop_start_specific_agent*
  store %struct.i40e_aqc_lldp_stop_start_specific_agent* %12, %struct.i40e_aqc_lldp_stop_start_specific_agent** %8, align 8
  %13 = load i32, i32* @i40e_aqc_opc_lldp_stop_start_spec_agent, align 4
  %14 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %7, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @I40E_AQC_START_SPECIFIC_AGENT_MASK, align 4
  %19 = load %struct.i40e_aqc_lldp_stop_start_specific_agent*, %struct.i40e_aqc_lldp_stop_start_specific_agent** %8, align 8
  %20 = getelementptr inbounds %struct.i40e_aqc_lldp_stop_start_specific_agent, %struct.i40e_aqc_lldp_stop_start_specific_agent* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %3
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %23 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %6, align 8
  %24 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %22, %struct.i40e_aq_desc* %7, i32* null, i32 0, %struct.i40e_asq_cmd_details* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  ret i32 %25
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
