; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_dcb_ignore_pfc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_dcb_ignore_pfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_pfc_ignore = type { i32, i32 }

@i40e_aqc_opc_dcb_ignore_pfc = common dso_local global i32 0, align 4
@I40E_AQC_PFC_IGNORE_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_dcb_ignore_pfc(%struct.i40e_hw* %0, i32 %1, i32 %2, i32* %3, %struct.i40e_asq_cmd_details* %4) #0 {
  %6 = alloca %struct.i40e_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i40e_asq_cmd_details*, align 8
  %11 = alloca %struct.i40e_aq_desc, align 4
  %12 = alloca %struct.i40e_aqc_pfc_ignore*, align 8
  %13 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.i40e_asq_cmd_details* %4, %struct.i40e_asq_cmd_details** %10, align 8
  %14 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %11, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.i40e_aqc_pfc_ignore*
  store %struct.i40e_aqc_pfc_ignore* %16, %struct.i40e_aqc_pfc_ignore** %12, align 8
  %17 = load i32, i32* @i40e_aqc_opc_dcb_ignore_pfc, align 4
  %18 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %11, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load i32, i32* @I40E_AQC_PFC_IGNORE_SET, align 4
  %23 = load %struct.i40e_aqc_pfc_ignore*, %struct.i40e_aqc_pfc_ignore** %12, align 8
  %24 = getelementptr inbounds %struct.i40e_aqc_pfc_ignore, %struct.i40e_aqc_pfc_ignore* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %5
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.i40e_aqc_pfc_ignore*, %struct.i40e_aqc_pfc_ignore** %12, align 8
  %28 = getelementptr inbounds %struct.i40e_aqc_pfc_ignore, %struct.i40e_aqc_pfc_ignore* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.i40e_hw*, %struct.i40e_hw** %6, align 8
  %30 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %10, align 8
  %31 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %29, %struct.i40e_aq_desc* %11, i32* null, i32 0, %struct.i40e_asq_cmd_details* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** %9, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.i40e_aqc_pfc_ignore*, %struct.i40e_aqc_pfc_ignore** %12, align 8
  %39 = getelementptr inbounds %struct.i40e_aqc_pfc_ignore, %struct.i40e_aqc_pfc_ignore* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %13, align 4
  ret i32 %44
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
