; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_shutdown_ctlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_shutdown_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_ctlr_handle = type { i64 }
%struct.tw_cli_ctlr_context = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TWA_SHUTDOWN_MESSAGE_CREDITS = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Can't close connection with controller\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_STOP_CTLR_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cl_shutdown_ctlr(%struct.tw_cl_ctlr_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw_cli_ctlr_context*, align 8
  %6 = alloca i32, align 4
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %3, align 8
  %8 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.tw_cli_ctlr_context*
  store %struct.tw_cli_ctlr_context* %10, %struct.tw_cli_ctlr_context** %5, align 8
  %11 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %3, align 8
  %12 = call i32 (...) @tw_osl_cur_func()
  %13 = call i32 @tw_cli_dbg_printf(i32 3, %struct.tw_cl_ctlr_handle* %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @TW_CL_FALSE, align 4
  %15 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %5, align 8
  %16 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %5, align 8
  %18 = call i32 @tw_cli_disable_interrupts(%struct.tw_cli_ctlr_context* %17)
  %19 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %5, align 8
  %20 = load i32, i32* @TWA_SHUTDOWN_MESSAGE_CREDITS, align 4
  %21 = load i32, i32* @TW_CL_NULL, align 4
  %22 = load i32, i32* @TW_CL_NULL, align 4
  %23 = load i32, i32* @TW_CL_NULL, align 4
  %24 = load i32, i32* @TW_CL_NULL, align 4
  %25 = load i32, i32* @TW_CL_NULL, align 4
  %26 = call i32 @tw_cli_init_connection(%struct.tw_cli_ctlr_context* %19, i32 %20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %21, i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %3, align 8
  %30 = load i32, i32* @TW_CL_FALSE, align 4
  %31 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %32 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %29, i32 %30, i32 %31, i32 4117, i32 1, i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TW_CL_STOP_CTLR_ONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %52

41:                                               ; preds = %35
  %42 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %3, align 8
  %43 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %5, align 8
  %44 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @tw_osl_destroy_lock(%struct.tw_cl_ctlr_handle* %42, i32 %45)
  %47 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %3, align 8
  %48 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %5, align 8
  %49 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @tw_osl_destroy_lock(%struct.tw_cl_ctlr_handle* %47, i32 %50)
  br label %52

52:                                               ; preds = %41, %40
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_cli_disable_interrupts(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_init_connection(%struct.tw_cli_ctlr_context*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @tw_osl_destroy_lock(%struct.tw_cl_ctlr_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
