; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_veb_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_veb_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_get_veb_parameters_completion = type { i32, i32, i32, i32, i32, i32 }

@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@i40e_aqc_opc_get_veb_parameters = common dso_local global i32 0, align 4
@I40E_AQC_ADD_VEB_FLOATING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_veb_parameters(%struct.i40e_hw* %0, i64 %1, i64* %2, i32* %3, i64* %4, i64* %5, i64* %6, %struct.i40e_asq_cmd_details* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_hw*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca %struct.i40e_asq_cmd_details*, align 8
  %18 = alloca %struct.i40e_aq_desc, align 4
  %19 = alloca %struct.i40e_aqc_get_veb_parameters_completion*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64* %2, i64** %12, align 8
  store i32* %3, i32** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64* %5, i64** %15, align 8
  store i64* %6, i64** %16, align 8
  store %struct.i40e_asq_cmd_details* %7, %struct.i40e_asq_cmd_details** %17, align 8
  %22 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %18, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast i32* %23 to %struct.i40e_aqc_get_veb_parameters_completion*
  store %struct.i40e_aqc_get_veb_parameters_completion* %24, %struct.i40e_aqc_get_veb_parameters_completion** %19, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %8
  %28 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %28, i32* %9, align 4
  br label %100

29:                                               ; preds = %8
  %30 = load i32, i32* @i40e_aqc_opc_get_veb_parameters, align 4
  %31 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %18, i32 %30)
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @CPU_TO_LE16(i64 %32)
  %34 = load %struct.i40e_aqc_get_veb_parameters_completion*, %struct.i40e_aqc_get_veb_parameters_completion** %19, align 8
  %35 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, %struct.i40e_aqc_get_veb_parameters_completion* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %10, align 8
  %37 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %17, align 8
  %38 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %36, %struct.i40e_aq_desc* %18, i32* null, i32 0, %struct.i40e_asq_cmd_details* %37)
  store i32 %38, i32* %20, align 4
  %39 = load i32, i32* %20, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %98

42:                                               ; preds = %29
  %43 = load i64*, i64** %12, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.i40e_aqc_get_veb_parameters_completion*, %struct.i40e_aqc_get_veb_parameters_completion** %19, align 8
  %47 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, %struct.i40e_aqc_get_veb_parameters_completion* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @LE16_TO_CPU(i32 %48)
  %50 = load i64*, i64** %12, align 8
  store i64 %49, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %42
  %52 = load i64*, i64** %14, align 8
  %53 = icmp ne i64* %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load %struct.i40e_aqc_get_veb_parameters_completion*, %struct.i40e_aqc_get_veb_parameters_completion** %19, align 8
  %56 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, %struct.i40e_aqc_get_veb_parameters_completion* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @LE16_TO_CPU(i32 %57)
  %59 = load i64*, i64** %14, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %51
  %61 = load i64*, i64** %15, align 8
  %62 = icmp ne i64* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load %struct.i40e_aqc_get_veb_parameters_completion*, %struct.i40e_aqc_get_veb_parameters_completion** %19, align 8
  %65 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, %struct.i40e_aqc_get_veb_parameters_completion* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @LE16_TO_CPU(i32 %66)
  %68 = load i64*, i64** %15, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %63, %60
  %70 = load i64*, i64** %16, align 8
  %71 = icmp ne i64* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.i40e_aqc_get_veb_parameters_completion*, %struct.i40e_aqc_get_veb_parameters_completion** %19, align 8
  %74 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, %struct.i40e_aqc_get_veb_parameters_completion* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @LE16_TO_CPU(i32 %75)
  %77 = load i64*, i64** %16, align 8
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i32*, i32** %13, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %97

81:                                               ; preds = %78
  %82 = load %struct.i40e_aqc_get_veb_parameters_completion*, %struct.i40e_aqc_get_veb_parameters_completion** %19, align 8
  %83 = getelementptr inbounds %struct.i40e_aqc_get_veb_parameters_completion, %struct.i40e_aqc_get_veb_parameters_completion* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @LE16_TO_CPU(i32 %84)
  store i64 %85, i64* %21, align 8
  %86 = load i64, i64* %21, align 8
  %87 = load i64, i64* @I40E_AQC_ADD_VEB_FLOATING, align 8
  %88 = and i64 %86, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @TRUE, align 4
  %92 = load i32*, i32** %13, align 8
  store i32 %91, i32* %92, align 4
  br label %96

93:                                               ; preds = %81
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32*, i32** %13, align 8
  store i32 %94, i32* %95, align 4
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %96, %78
  br label %98

98:                                               ; preds = %97, %41
  %99 = load i32, i32* %20, align 4
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %98, %27
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i64) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i64 @LE16_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
