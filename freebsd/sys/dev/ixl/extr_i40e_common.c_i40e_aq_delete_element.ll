; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_delete_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_delete_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_switch_seid = type { i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_delete_element = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_delete_element(%struct.i40e_hw* %0, i64 %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.i40e_asq_cmd_details*, align 8
  %8 = alloca %struct.i40e_aq_desc, align 4
  %9 = alloca %struct.i40e_aqc_switch_seid*, align 8
  %10 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %7, align 8
  %11 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.i40e_aqc_switch_seid*
  store %struct.i40e_aqc_switch_seid* %13, %struct.i40e_aqc_switch_seid** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %17, i32* %4, align 4
  br label %29

18:                                               ; preds = %3
  %19 = load i32, i32* @i40e_aqc_opc_delete_element, align 4
  %20 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %8, i32 %19)
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @CPU_TO_LE16(i64 %21)
  %23 = load %struct.i40e_aqc_switch_seid*, %struct.i40e_aqc_switch_seid** %9, align 8
  %24 = getelementptr inbounds %struct.i40e_aqc_switch_seid, %struct.i40e_aqc_switch_seid* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %26 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %7, align 8
  %27 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %25, %struct.i40e_aq_desc* %8, i32* null, i32 0, %struct.i40e_asq_cmd_details* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %18, %16
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
