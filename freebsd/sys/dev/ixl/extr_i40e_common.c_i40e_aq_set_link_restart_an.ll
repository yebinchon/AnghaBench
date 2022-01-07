; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_link_restart_an.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_link_restart_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_set_link_restart_an = type { i32 }

@i40e_aqc_opc_set_link_restart_an = common dso_local global i32 0, align 4
@I40E_AQ_PHY_RESTART_AN = common dso_local global i32 0, align 4
@I40E_AQ_PHY_LINK_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_link_restart_an(%struct.i40e_hw* %0, i32 %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_asq_cmd_details*, align 8
  %7 = alloca %struct.i40e_aq_desc, align 4
  %8 = alloca %struct.i40e_aqc_set_link_restart_an*, align 8
  %9 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %6, align 8
  %10 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %7, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = bitcast i32* %11 to %struct.i40e_aqc_set_link_restart_an*
  store %struct.i40e_aqc_set_link_restart_an* %12, %struct.i40e_aqc_set_link_restart_an** %8, align 8
  %13 = load i32, i32* @i40e_aqc_opc_set_link_restart_an, align 4
  %14 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %7, i32 %13)
  %15 = load i32, i32* @I40E_AQ_PHY_RESTART_AN, align 4
  %16 = load %struct.i40e_aqc_set_link_restart_an*, %struct.i40e_aqc_set_link_restart_an** %8, align 8
  %17 = getelementptr inbounds %struct.i40e_aqc_set_link_restart_an, %struct.i40e_aqc_set_link_restart_an* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @I40E_AQ_PHY_LINK_ENABLE, align 4
  %22 = load %struct.i40e_aqc_set_link_restart_an*, %struct.i40e_aqc_set_link_restart_an** %8, align 8
  %23 = getelementptr inbounds %struct.i40e_aqc_set_link_restart_an, %struct.i40e_aqc_set_link_restart_an* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* @I40E_AQ_PHY_LINK_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.i40e_aqc_set_link_restart_an*, %struct.i40e_aqc_set_link_restart_an** %8, align 8
  %30 = getelementptr inbounds %struct.i40e_aqc_set_link_restart_an, %struct.i40e_aqc_set_link_restart_an* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %26, %20
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %35 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %6, align 8
  %36 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %34, %struct.i40e_aq_desc* %7, i32* null, i32 0, %struct.i40e_asq_cmd_details* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
