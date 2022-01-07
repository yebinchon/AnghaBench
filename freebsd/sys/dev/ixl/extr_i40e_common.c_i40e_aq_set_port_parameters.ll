; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_port_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_port_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aqc_set_port_parameters = type { i8*, i8* }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@i40e_aqc_opc_set_port_parameters = common dso_local global i32 0, align 4
@I40E_AQ_SET_P_PARAMS_SAVE_BAD_PACKETS = common dso_local global i32 0, align 4
@I40E_AQ_SET_P_PARAMS_PAD_SHORT_PACKETS = common dso_local global i32 0, align 4
@I40E_AQ_SET_P_PARAMS_DOUBLE_VLAN_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_port_parameters(%struct.i40e_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.i40e_asq_cmd_details* %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_asq_cmd_details*, align 8
  %13 = alloca %struct.i40e_aqc_set_port_parameters*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.i40e_aq_desc, align 4
  %16 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.i40e_asq_cmd_details* %5, %struct.i40e_asq_cmd_details** %12, align 8
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.i40e_aqc_set_port_parameters*
  store %struct.i40e_aqc_set_port_parameters* %19, %struct.i40e_aqc_set_port_parameters** %13, align 8
  %20 = load i32, i32* @i40e_aqc_opc_set_port_parameters, align 4
  %21 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %15, i32 %20)
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @CPU_TO_LE16(i32 %22)
  %24 = load %struct.i40e_aqc_set_port_parameters*, %struct.i40e_aqc_set_port_parameters** %13, align 8
  %25 = getelementptr inbounds %struct.i40e_aqc_set_port_parameters, %struct.i40e_aqc_set_port_parameters* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load i32, i32* @I40E_AQ_SET_P_PARAMS_SAVE_BAD_PACKETS, align 4
  %30 = load i32, i32* %16, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %16, align 4
  br label %32

32:                                               ; preds = %28, %6
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @I40E_AQ_SET_P_PARAMS_PAD_SHORT_PACKETS, align 4
  %37 = load i32, i32* %16, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %16, align 4
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @I40E_AQ_SET_P_PARAMS_DOUBLE_VLAN_ENA, align 4
  %44 = load i32, i32* %16, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %16, align 4
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %16, align 4
  %48 = call i8* @CPU_TO_LE16(i32 %47)
  %49 = load %struct.i40e_aqc_set_port_parameters*, %struct.i40e_aqc_set_port_parameters** %13, align 8
  %50 = getelementptr inbounds %struct.i40e_aqc_set_port_parameters, %struct.i40e_aqc_set_port_parameters* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %52 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %12, align 8
  %53 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %51, %struct.i40e_aq_desc* %15, i32* null, i32 0, %struct.i40e_asq_cmd_details* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  ret i32 %54
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
