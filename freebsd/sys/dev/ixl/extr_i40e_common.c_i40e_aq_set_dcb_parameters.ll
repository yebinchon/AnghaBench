; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_dcb_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_set_dcb_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_aqc_set_dcb_parameters = type { i32, i32 }

@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@i40e_aqc_opc_set_dcb_parameters = common dso_local global i32 0, align 4
@I40E_DCB_VALID = common dso_local global i32 0, align 4
@I40E_AQ_DCB_SET_AGENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_set_dcb_parameters(%struct.i40e_hw* %0, i32 %1, %struct.i40e_asq_cmd_details* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_asq_cmd_details*, align 8
  %8 = alloca %struct.i40e_aq_desc, align 4
  %9 = alloca %struct.i40e_aqc_set_dcb_parameters*, align 8
  %10 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i40e_asq_cmd_details* %2, %struct.i40e_asq_cmd_details** %7, align 8
  %11 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %8, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.i40e_aqc_set_dcb_parameters*
  store %struct.i40e_aqc_set_dcb_parameters* %13, %struct.i40e_aqc_set_dcb_parameters** %9, align 8
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @I40E_MAC_XL710, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %38, label %20

20:                                               ; preds = %3
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %22 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %38, label %26

26:                                               ; preds = %20
  %27 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %28 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %34 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 6
  br i1 %37, label %38, label %40

38:                                               ; preds = %32, %20, %3
  %39 = load i32, i32* @I40E_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %39, i32* %4, align 4
  br label %57

40:                                               ; preds = %32, %26
  %41 = load i32, i32* @i40e_aqc_opc_set_dcb_parameters, align 4
  %42 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %8, i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* @I40E_DCB_VALID, align 4
  %47 = load %struct.i40e_aqc_set_dcb_parameters*, %struct.i40e_aqc_set_dcb_parameters** %9, align 8
  %48 = getelementptr inbounds %struct.i40e_aqc_set_dcb_parameters, %struct.i40e_aqc_set_dcb_parameters* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @I40E_AQ_DCB_SET_AGENT, align 4
  %50 = load %struct.i40e_aqc_set_dcb_parameters*, %struct.i40e_aqc_set_dcb_parameters** %9, align 8
  %51 = getelementptr inbounds %struct.i40e_aqc_set_dcb_parameters, %struct.i40e_aqc_set_dcb_parameters* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %40
  %53 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %54 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %7, align 8
  %55 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %53, %struct.i40e_aq_desc* %8, i32* null, i32 0, %struct.i40e_asq_cmd_details* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %52, %38
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
