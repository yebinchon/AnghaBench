; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_start_lldp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_start_lldp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_lldp_start = type { i32 }

@i40e_aqc_opc_lldp_start = common dso_local global i32 0, align 4
@I40E_AQ_LLDP_AGENT_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_start_lldp(%struct.i40e_hw* %0, %struct.i40e_asq_cmd_details* %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca %struct.i40e_asq_cmd_details*, align 8
  %5 = alloca %struct.i40e_aq_desc, align 4
  %6 = alloca %struct.i40e_aqc_lldp_start*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store %struct.i40e_asq_cmd_details* %1, %struct.i40e_asq_cmd_details** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %5, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.i40e_aqc_lldp_start*
  store %struct.i40e_aqc_lldp_start* %10, %struct.i40e_aqc_lldp_start** %6, align 8
  %11 = load i32, i32* @i40e_aqc_opc_lldp_start, align 4
  %12 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %5, i32 %11)
  %13 = load i32, i32* @I40E_AQ_LLDP_AGENT_START, align 4
  %14 = load %struct.i40e_aqc_lldp_start*, %struct.i40e_aqc_lldp_start** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_aqc_lldp_start, %struct.i40e_aqc_lldp_start* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %17 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %4, align 8
  %18 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %16, %struct.i40e_aq_desc* %5, i32* null, i32 0, %struct.i40e_asq_cmd_details* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
