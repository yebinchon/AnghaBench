; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_manage_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_manage_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32, i32, i32, i32 }
%struct.tw_cli_req_context = type { i64 }
%struct.tw_cl_command_header = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Received AEN_SYNC_TIME\00", align 1
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CLI_FREE_Q = common dso_local global i32 0, align 4
@TW_CL_TRUE = common dso_local global i32 0, align 4
@TWA_PARAM_TIME_TABLE = common dso_local global i32 0, align 4
@TWA_PARAM_TIME_SCHED_TIME = common dso_local global i32 0, align 4
@tw_cli_param_callback = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Unable to sync time with ctlr\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"AEN queue empty\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Queueing AEN\00", align 1
@TW_CL_MESSAGE_SOURCE_CONTROLLER_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_manage_aen(%struct.tw_cli_ctlr_context* %0, %struct.tw_cli_req_context* %1) #0 {
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca %struct.tw_cli_req_context*, align 8
  %5 = alloca %struct.tw_cl_command_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  store %struct.tw_cli_req_context* %1, %struct.tw_cli_req_context** %4, align 8
  %10 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %11 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (...) @tw_osl_cur_func()
  %14 = call i32 @tw_cli_dbg_printf(i32 4, i32 %12, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %16 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.tw_cl_command_header*
  store %struct.tw_cl_command_header* %18, %struct.tw_cl_command_header** %5, align 8
  %19 = load %struct.tw_cl_command_header*, %struct.tw_cl_command_header** %5, align 8
  %20 = getelementptr inbounds %struct.tw_cl_command_header, %struct.tw_cl_command_header* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %80 [
    i32 128, label %24
    i32 129, label %74
  ]

24:                                               ; preds = %2
  %25 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %26 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (...) @tw_osl_cur_func()
  %29 = call i32 @tw_cli_dbg_printf(i32 4, i32 %27, i32 %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @TW_CL_FALSE, align 4
  %31 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %32 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %34 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %35 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %33, i32 %34)
  %36 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %37 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %24
  %41 = load i32, i32* @TW_CL_TRUE, align 4
  %42 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %43 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %24
  %45 = call i32 (...) @tw_osl_get_local_time()
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 %46, 259200
  %48 = srem i32 %47, 604800
  store i32 %48, i32* %8, align 4
  %49 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %50 = load i32, i32* @TWA_PARAM_TIME_TABLE, align 4
  %51 = load i32, i32* @TWA_PARAM_TIME_SCHED_TIME, align 4
  %52 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %53 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i32, i32* @tw_cli_param_callback, align 4
  br label %60

58:                                               ; preds = %44
  %59 = load i32, i32* @TW_CL_NULL, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = call i32 @tw_cli_set_param(%struct.tw_cli_ctlr_context* %49, i32 %50, i32 %51, i32 4, i32* %8, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %66 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @TW_CL_FALSE, align 4
  %69 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %70 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @tw_cl_create_event(i32 %67, i32 %68, i32 %69, i32 4616, i32 1, i32 %70, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %64, %60
  br label %90

74:                                               ; preds = %2
  %75 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %76 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (...) @tw_osl_cur_func()
  %79 = call i32 @tw_cli_dbg_printf(i32 4, i32 %77, i32 %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %90

80:                                               ; preds = %2
  %81 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %82 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (...) @tw_osl_cur_func()
  %85 = call i32 @tw_cli_dbg_printf(i32 4, i32 %83, i32 %84, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %87 = load i32, i32* @TW_CL_MESSAGE_SOURCE_CONTROLLER_EVENT, align 4
  %88 = load %struct.tw_cl_command_header*, %struct.tw_cl_command_header** %5, align 8
  %89 = call i32 @tw_cli_create_ctlr_event(%struct.tw_cli_ctlr_context* %86, i32 %87, %struct.tw_cl_command_header* %88)
  br label %90

90:                                               ; preds = %80, %74, %73
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @tw_osl_get_local_time(...) #1

declare dso_local i32 @tw_cli_set_param(%struct.tw_cli_ctlr_context*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @tw_cl_create_event(i32, i32, i32, i32, i32, i32, i8*, i8*, i32) #1

declare dso_local i32 @tw_cli_create_ctlr_event(%struct.tw_cli_ctlr_context*, i32, %struct.tw_cl_command_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
