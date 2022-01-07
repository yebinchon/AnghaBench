; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_process_resp_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_process_resp_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32, %struct.tw_cli_req_context* }
%struct.tw_cli_req_context = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TWA_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Response queue empty\00", align 1
@TW_CLI_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unposted command completed!!\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"request = %p, status = %d\00", align 1
@TW_CLI_BUSY_Q = common dso_local global i32 0, align 4
@TW_CLI_REQ_STATE_COMPLETE = common dso_local global i64 0, align 8
@TW_CLI_COMPLETE_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_process_resp_intr(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca %struct.tw_cli_ctlr_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw_cli_req_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %2, align 8
  %7 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %8 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 (...) @tw_osl_cur_func()
  %11 = call i32 @tw_cli_dbg_printf(i32 10, i32 %9, i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %61, %49, %1
  %13 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %14 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @TW_CLI_READ_STATUS_REGISTER(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @tw_cli_check_ctlr_state(%struct.tw_cli_ctlr_context* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %71

22:                                               ; preds = %12
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @TWA_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %29 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 (...) @tw_osl_cur_func()
  %32 = call i32 @tw_cli_dbg_printf(i32 7, i32 %30, i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %71

33:                                               ; preds = %22
  %34 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %35 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @TW_CLI_READ_RESPONSE_QUEUE(i32 %36)
  store i32 %37, i32* %3, align 4
  %38 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %39 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %38, i32 0, i32 1
  %40 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @GET_RESP_ID(i32 %41)
  %43 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %40, i64 %42
  store %struct.tw_cli_req_context* %43, %struct.tw_cli_req_context** %4, align 8
  %44 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %45 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TW_CLI_REQ_STATE_BUSY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %33
  %50 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %51 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @TW_CL_FALSE, align 4
  %54 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %55 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %56 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %57 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %58 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @tw_cl_create_event(i32 %52, i32 %53, i32 %54, i32 4609, i32 1, i32 %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), %struct.tw_cli_req_context* %56, i64 %59)
  br label %12

61:                                               ; preds = %33
  %62 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %63 = load i32, i32* @TW_CLI_BUSY_Q, align 4
  %64 = call i32 @tw_cli_req_q_remove_item(%struct.tw_cli_req_context* %62, i32 %63)
  %65 = load i64, i64* @TW_CLI_REQ_STATE_COMPLETE, align 8
  %66 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %67 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %69 = load i32, i32* @TW_CLI_COMPLETE_Q, align 4
  %70 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %68, i32 %69)
  br label %12

71:                                               ; preds = %27, %21
  %72 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %73 = call i32 @tw_cli_process_complete_queue(%struct.tw_cli_ctlr_context* %72)
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @TW_CLI_READ_STATUS_REGISTER(i32) #1

declare dso_local i32 @tw_cli_check_ctlr_state(%struct.tw_cli_ctlr_context*, i32) #1

declare dso_local i32 @TW_CLI_READ_RESPONSE_QUEUE(i32) #1

declare dso_local i64 @GET_RESP_ID(i32) #1

declare dso_local i32 @tw_cl_create_event(i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.tw_cli_req_context*, i64) #1

declare dso_local i32 @tw_cli_req_q_remove_item(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @tw_cli_process_complete_queue(%struct.tw_cli_ctlr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
