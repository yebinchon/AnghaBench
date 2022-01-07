; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_submit_pending_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_submit_pending_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32 (%struct.tw_cli_req_context*)*, i32, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tw_cli_ctlr_context = type { i32 }

@TW_OSL_ESUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CLI_PENDING_Q = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8
@TW_OSL_EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Requeueing pending request\00", align 1
@TW_CLI_REQ_STATE_PENDING = common dso_local global i32 0, align 4
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Could not start request in pending queue\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"request = %p, opcode = 0x%x, error = %d\00", align 1
@TW_CLI_REQ_STATE_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tw_cli_submit_pending_queue(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca %struct.tw_cli_ctlr_context*, align 8
  %3 = alloca %struct.tw_cli_req_context*, align 8
  %4 = alloca i64, align 8
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %2, align 8
  %5 = load i64, i64* @TW_OSL_ESUCCESS, align 8
  store i64 %5, i64* %4, align 8
  %6 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %7 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (...) @tw_osl_cur_func()
  %10 = call i32 @tw_cli_dbg_printf(i32 3, i32 %8, i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %74, %1
  %12 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %13 = load i32, i32* @TW_CLI_PENDING_Q, align 4
  %14 = call %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context* %12, i32 %13)
  store %struct.tw_cli_req_context* %14, %struct.tw_cli_req_context** %3, align 8
  %15 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %16 = icmp ne %struct.tw_cli_req_context* %14, %15
  br i1 %16, label %17, label %75

17:                                               ; preds = %11
  %18 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %19 = call i64 @tw_cli_submit_cmd(%struct.tw_cli_req_context* %18)
  store i64 %19, i64* %4, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %74

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @TW_OSL_EBUSY, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %27 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (...) @tw_osl_cur_func()
  %30 = call i32 @tw_cli_dbg_printf(i32 2, i32 %28, i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @TW_CLI_REQ_STATE_PENDING, align 4
  %32 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %33 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %35 = load i32, i32* @TW_CLI_PENDING_Q, align 4
  %36 = call i32 @tw_cli_req_q_insert_head(%struct.tw_cli_req_context* %34, i32 %35)
  br label %75

37:                                               ; preds = %21
  %38 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %39 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TW_CL_FALSE, align 4
  %42 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %43 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %44 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %45 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %46 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GET_OPCODE(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @tw_cl_create_event(i32 %40, i32 %41, i32 %42, i32 4610, i32 1, i32 %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), %struct.tw_cli_req_context* %44, i32 %52, i64 %53)
  %55 = load i64, i64* %4, align 8
  %56 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %57 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load i32, i32* @TW_CLI_REQ_STATE_COMPLETE, align 4
  %59 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %60 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %62 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %61, i32 0, i32 0
  %63 = load i32 (%struct.tw_cli_req_context*)*, i32 (%struct.tw_cli_req_context*)** %62, align 8
  %64 = icmp ne i32 (%struct.tw_cli_req_context*)* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %37
  %66 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %67 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %66, i32 0, i32 0
  %68 = load i32 (%struct.tw_cli_req_context*)*, i32 (%struct.tw_cli_req_context*)** %67, align 8
  %69 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %70 = call i32 %68(%struct.tw_cli_req_context* %69)
  br label %71

71:                                               ; preds = %65, %37
  %72 = load i64, i64* @TW_OSL_ESUCCESS, align 8
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73, %17
  br label %11

75:                                               ; preds = %25, %11
  %76 = load i64, i64* %4, align 8
  ret i64 %76
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context*, i32) #1

declare dso_local i64 @tw_cli_submit_cmd(%struct.tw_cli_req_context*) #1

declare dso_local i32 @tw_cli_req_q_insert_head(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @tw_cl_create_event(i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.tw_cli_req_context*, i32, i64) #1

declare dso_local i32 @GET_OPCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
