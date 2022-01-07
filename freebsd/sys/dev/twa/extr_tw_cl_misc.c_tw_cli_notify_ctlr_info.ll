; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_notify_ctlr_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_notify_ctlr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TWA_PARAM_CONTROLLER_TABLE = common dso_local global i32 0, align 4
@TWA_PARAM_CONTROLLER_PORT_COUNT = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global i64 0, align 8
@TWA_PARAM_VERSION_TABLE = common dso_local global i32 0, align 4
@TWA_PARAM_VERSION_FW = common dso_local global i32 0, align 4
@TWA_PARAM_VERSION_BIOS = common dso_local global i32 0, align 4
@TWA_PARAM_CTLR_MODEL = common dso_local global i32 0, align 4
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_INFO_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Controller details:\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Model %.16s, %d ports, Firmware %.16s, BIOS %.16s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_notify_ctlr_info(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca [16 x i32], align 16
  %5 = alloca [16 x i32], align 16
  %6 = alloca [16 x i32], align 16
  %7 = alloca [3 x i64], align 16
  %8 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %10 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 (...) @tw_osl_cur_func()
  %13 = call i32 @tw_cli_dbg_printf(i32 5, i32 %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %15 = load i32, i32* @TWA_PARAM_CONTROLLER_TABLE, align 4
  %16 = load i32, i32* @TWA_PARAM_CONTROLLER_PORT_COUNT, align 4
  %17 = load i64, i64* @TW_CL_NULL, align 8
  %18 = call i64 @tw_cli_get_param(%struct.tw_cli_ctlr_context* %14, i32 %15, i32 %16, i32* %8, i32 1, i64 %17)
  %19 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  store i64 %18, i64* %19, align 16
  %20 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %21 = load i32, i32* @TWA_PARAM_VERSION_TABLE, align 4
  %22 = load i32, i32* @TWA_PARAM_VERSION_FW, align 4
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  %24 = load i64, i64* @TW_CL_NULL, align 8
  %25 = call i64 @tw_cli_get_param(%struct.tw_cli_ctlr_context* %20, i32 %21, i32 %22, i32* %23, i32 16, i64 %24)
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  store i64 %25, i64* %26, align 16
  %27 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %28 = load i32, i32* @TWA_PARAM_VERSION_TABLE, align 4
  %29 = load i32, i32* @TWA_PARAM_VERSION_BIOS, align 4
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  %31 = load i64, i64* @TW_CL_NULL, align 8
  %32 = call i64 @tw_cli_get_param(%struct.tw_cli_ctlr_context* %27, i32 %28, i32 %29, i32* %30, i32 16, i64 %31)
  %33 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  %34 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %35 = load i32, i32* @TWA_PARAM_VERSION_TABLE, align 4
  %36 = load i32, i32* @TWA_PARAM_CTLR_MODEL, align 4
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %38 = load i64, i64* @TW_CL_NULL, align 8
  %39 = call i64 @tw_cli_get_param(%struct.tw_cli_ctlr_context* %34, i32 %35, i32 %36, i32* %37, i32 16, i64 %38)
  %40 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  store i64 %39, i64* %40, align 16
  %41 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %42 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @TW_CL_FALSE, align 4
  %45 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %46 = load i32, i32* @TW_CL_SEVERITY_INFO_STRING, align 4
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 2
  %48 = load i64, i64* %47, align 16
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %1
  %51 = load i64, i64* @TW_CL_NULL, align 8
  %52 = inttoptr i64 %51 to i32*
  br label %55

53:                                               ; preds = %1
  %54 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32* [ %52, %50 ], [ %54, %53 ]
  %57 = load i32, i32* %8, align 4
  %58 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 0
  %59 = load i64, i64* %58, align 16
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i64, i64* @TW_CL_NULL, align 8
  %63 = inttoptr i64 %62 to i32*
  br label %66

64:                                               ; preds = %55
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 0
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i32* [ %63, %61 ], [ %65, %64 ]
  %68 = getelementptr inbounds [3 x i64], [3 x i64]* %7, i64 0, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i64, i64* @TW_CL_NULL, align 8
  %73 = inttoptr i64 %72 to i32*
  br label %76

74:                                               ; preds = %66
  %75 = getelementptr inbounds [16 x i32], [16 x i32]* %5, i64 0, i64 0
  br label %76

76:                                               ; preds = %74, %71
  %77 = phi i32* [ %73, %71 ], [ %75, %74 ]
  %78 = call i32 @tw_cl_create_event(i32 %43, i32 %44, i32 %45, i32 4864, i32 3, i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32* %56, i32 %57, i32* %67, i32* %77)
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i64 @tw_cli_get_param(%struct.tw_cli_ctlr_context*, i32, i32, i32*, i32, i64) #1

declare dso_local i32 @tw_cl_create_event(i32, i32, i32, i32, i32, i32, i8*, i8*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
