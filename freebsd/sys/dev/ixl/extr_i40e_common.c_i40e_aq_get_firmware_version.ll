; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_firmware_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_get_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_get_version = type { i32, i32, i32, i32, i32 }

@i40e_aqc_opc_get_version = common dso_local global i32 0, align 4
@I40E_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_get_firmware_version(%struct.i40e_hw* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, %struct.i40e_asq_cmd_details* %6) #0 {
  %8 = alloca %struct.i40e_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.i40e_asq_cmd_details*, align 8
  %15 = alloca %struct.i40e_aq_desc, align 4
  %16 = alloca %struct.i40e_aqc_get_version*, align 8
  %17 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.i40e_asq_cmd_details* %6, %struct.i40e_asq_cmd_details** %14, align 8
  %18 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %15, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.i40e_aqc_get_version*
  store %struct.i40e_aqc_get_version* %20, %struct.i40e_aqc_get_version** %16, align 8
  %21 = load i32, i32* @i40e_aqc_opc_get_version, align 4
  %22 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %15, i32 %21)
  %23 = load %struct.i40e_hw*, %struct.i40e_hw** %8, align 8
  %24 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %14, align 8
  %25 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %23, %struct.i40e_aq_desc* %15, i32* null, i32 0, %struct.i40e_asq_cmd_details* %24)
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* @I40E_SUCCESS, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %109

29:                                               ; preds = %7
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %34 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @LE16_TO_CPU(i32 %35)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32*, i32** %10, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %43 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @LE16_TO_CPU(i32 %44)
  %46 = load i32*, i32** %10, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32*, i32** %11, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %52 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @LE32_TO_CPU(i32 %53)
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32*, i32** %12, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %61 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @LE16_TO_CPU(i32 %62)
  %64 = load i32*, i32** %12, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32*, i32** %13, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.i40e_aqc_get_version*, %struct.i40e_aqc_get_version** %16, align 8
  %70 = getelementptr inbounds %struct.i40e_aqc_get_version, %struct.i40e_aqc_get_version* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @LE16_TO_CPU(i32 %71)
  %73 = load i32*, i32** %13, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32*, i32** %12, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %108

77:                                               ; preds = %74
  %78 = load i32*, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %108

80:                                               ; preds = %77
  %81 = load i32*, i32** %9, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %108

83:                                               ; preds = %80
  %84 = load i32*, i32** %10, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %108

90:                                               ; preds = %86
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 1
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 4
  br i1 %97, label %98, label %102

98:                                               ; preds = %94
  %99 = load i32*, i32** %10, align 8
  %100 = load i32, i32* %99, align 4
  %101 = icmp sge i32 %100, 2
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %94
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 4
  br i1 %105, label %106, label %108

106:                                              ; preds = %102, %98
  %107 = load i32*, i32** %13, align 8
  store i32 2, i32* %107, align 4
  br label %108

108:                                              ; preds = %106, %102, %90, %86, %83, %80, %77, %74
  br label %109

109:                                              ; preds = %108, %7
  %110 = load i32, i32* %17, align 4
  ret i32 %110
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
