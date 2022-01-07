; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_param_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_param_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { %struct.TYPE_5__*, i32, %struct.tw_cli_ctlr_context* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %union.tw_cl_command_7k }
%union.tw_cl_command_7k = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.tw_cli_ctlr_context = type { i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_FALSE = common dso_local global i8* null, align 8
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"get/set_param failed\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"status = %d\00", align 1
@TW_CLI_FREE_Q = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Fetching more AEN's\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Failed to fetch all AEN's from param_callback\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_param_callback(%struct.tw_cli_req_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_req_context*, align 8
  %4 = alloca %struct.tw_cli_ctlr_context*, align 8
  %5 = alloca %union.tw_cl_command_7k*, align 8
  %6 = alloca i64, align 8
  store %struct.tw_cli_req_context* %0, %struct.tw_cli_req_context** %3, align 8
  %7 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %8 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %7, i32 0, i32 2
  %9 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  store %struct.tw_cli_ctlr_context* %9, %struct.tw_cli_ctlr_context** %4, align 8
  %10 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %11 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %union.tw_cl_command_7k* %14, %union.tw_cl_command_7k** %5, align 8
  %15 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %16 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (...) @tw_osl_cur_func()
  %19 = call i32 @tw_cli_dbg_printf(i32 4, i32 %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %21 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %1
  %25 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %5, align 8
  %26 = bitcast %union.tw_cl_command_7k* %25 to %struct.TYPE_6__*
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %32 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** @TW_CL_FALSE, align 8
  %35 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %36 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %37 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %5, align 8
  %38 = bitcast %union.tw_cl_command_7k* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @tw_cl_create_event(i32 %33, i8* %34, i32 %35, i32 4612, i32 1, i32 %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %30, %24
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i8*, i8** @TW_CL_FALSE, align 8
  %45 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %46 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %48 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %49 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %47, i32 %48)
  %50 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %51 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %81

54:                                               ; preds = %43
  %55 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %56 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %81, label %59

59:                                               ; preds = %54
  %60 = load i8*, i8** @TW_CL_FALSE, align 8
  %61 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %62 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  %63 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %64 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (...) @tw_osl_cur_func()
  %67 = call i32 @tw_cli_dbg_printf(i32 4, i32 %65, i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %69 = call i64 @tw_cli_get_aen(%struct.tw_cli_ctlr_context* %68)
  store i64 %69, i64* %6, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %59
  %72 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %73 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i8*, i8** @TW_CL_FALSE, align 8
  %76 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %77 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %78 = load i64, i64* %6, align 8
  %79 = call i32 @tw_cl_create_event(i32 %74, i8* %75, i32 %76, i32 4613, i32 1, i32 %77, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i64 %78)
  br label %80

80:                                               ; preds = %71, %59
  br label %81

81:                                               ; preds = %80, %54, %43
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_cl_create_event(i32, i8*, i32, i32, i32, i32, i8*, i8*, i64) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

declare dso_local i64 @tw_cli_get_aen(%struct.tw_cli_ctlr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
