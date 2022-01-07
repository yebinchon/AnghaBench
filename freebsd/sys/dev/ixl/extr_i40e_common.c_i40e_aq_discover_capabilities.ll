; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_discover_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_discover_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aqc_list_capabilites = type { i32 }
%struct.i40e_aq_desc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@i40e_aqc_opc_list_func_capabilities = common dso_local global i32 0, align 4
@i40e_aqc_opc_list_dev_capabilities = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_LARGE_BUF = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_LB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_discover_capabilities(%struct.i40e_hw* %0, i8* %1, i32 %2, i32* %3, i32 %4, %struct.i40e_asq_cmd_details* %5) #0 {
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.i40e_asq_cmd_details*, align 8
  %13 = alloca %struct.i40e_aqc_list_capabilites*, align 8
  %14 = alloca %struct.i40e_aq_desc, align 4
  %15 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.i40e_asq_cmd_details* %5, %struct.i40e_asq_cmd_details** %12, align 8
  %16 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.i40e_aqc_list_capabilites*
  store %struct.i40e_aqc_list_capabilites* %19, %struct.i40e_aqc_list_capabilites** %13, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @i40e_aqc_opc_list_func_capabilities, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @i40e_aqc_opc_list_dev_capabilities, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %28, i32* %15, align 4
  br label %70

29:                                               ; preds = %23, %6
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %14, i32 %30)
  %32 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @CPU_TO_LE16(i32 %33)
  %35 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @I40E_AQ_LARGE_BUF, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load i64, i64* @I40E_AQ_FLAG_LB, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @CPU_TO_LE16(i32 %43)
  %45 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %44
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %41, %29
  %49 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %12, align 8
  %53 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %49, %struct.i40e_aq_desc* %14, i8* %50, i32 %51, %struct.i40e_asq_cmd_details* %52)
  store i32 %53, i32* %15, align 4
  %54 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %14, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @LE16_TO_CPU(i32 %55)
  %57 = load i32*, i32** %10, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %70

61:                                               ; preds = %48
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.i40e_aqc_list_capabilites*, %struct.i40e_aqc_list_capabilites** %13, align 8
  %65 = getelementptr inbounds %struct.i40e_aqc_list_capabilites, %struct.i40e_aqc_list_capabilites* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @LE32_TO_CPU(i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @i40e_parse_discover_capabilities(%struct.i40e_hw* %62, i8* %63, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %61, %60, %27
  %71 = load i32, i32* %15, align 4
  ret i32 %71
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @CPU_TO_LE16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i8*, i32, %struct.i40e_asq_cmd_details*) #1

declare dso_local i32 @LE16_TO_CPU(i32) #1

declare dso_local i32 @i40e_parse_discover_capabilities(%struct.i40e_hw*, i8*, i32, i32) #1

declare dso_local i32 @LE32_TO_CPU(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
