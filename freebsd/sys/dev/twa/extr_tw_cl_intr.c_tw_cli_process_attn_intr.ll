; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_process_attn_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_process_attn_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSL_EBUSY = common dso_local global i64 0, align 8
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to fetch AEN\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_process_attn_intr(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca i64, align 8
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  %5 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %6 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (...) @tw_osl_cur_func()
  %9 = call i32 @tw_cli_dbg_printf(i32 6, i32 %7, i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %11 = call i64 @tw_cli_get_aen(%struct.tw_cli_ctlr_context* %10)
  store i64 %11, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @TW_OSL_EBUSY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %19 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TW_CL_FALSE, align 4
  %22 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %23 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @tw_cl_create_event(i32 %20, i32 %21, i32 %22, i32 4608, i32 1, i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %17, %13
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i64 @tw_cli_get_aen(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cl_create_event(i32, i32, i32, i32, i32, i32, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
