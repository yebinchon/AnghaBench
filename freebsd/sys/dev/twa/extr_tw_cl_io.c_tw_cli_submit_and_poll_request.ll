; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_submit_and_poll_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_submit_and_poll_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32, i64, i64, %struct.tw_cli_ctlr_context* }
%struct.tw_cli_ctlr_context = type { i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to start internal request\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CLI_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@TW_CLI_REQ_STATE_PENDING = common dso_local global i64 0, align 8
@TW_CLI_REQ_STATE_COMPLETE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Internal request timed out\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"request = %p\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Removing request from pending queue\00", align 1
@TW_CLI_PENDING_Q = common dso_local global i64 0, align 8
@TW_CL_NULL = common dso_local global i64 0, align 8
@TWA_CONTROL_MASK_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@TW_CLI_FREE_Q = common dso_local global i32 0, align 4
@TW_OSL_ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_submit_and_poll_request(%struct.tw_cli_req_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw_cli_req_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tw_cli_ctlr_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tw_cli_req_context* %0, %struct.tw_cli_req_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %10 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %9, i32 0, i32 3
  %11 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %10, align 8
  store %struct.tw_cli_ctlr_context* %11, %struct.tw_cli_ctlr_context** %6, align 8
  %12 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %13 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (...) @tw_osl_cur_func()
  %16 = call i32 @tw_cli_dbg_printf(i32 4, i32 %14, i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %18 = call i32 @tw_cli_submit_cmd(%struct.tw_cli_req_context* %17)
  store i32 %18, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %22 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TW_CL_FALSE, align 4
  %25 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %26 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %23, i32 %24, i32 %25, i32 4355, i32 1, i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %119

30:                                               ; preds = %2
  %31 = call i64 (...) @tw_osl_get_local_time()
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %31, %32
  store i64 %33, i64* %7, align 8
  br label %34

34:                                               ; preds = %63, %30
  %35 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %36 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %119

41:                                               ; preds = %34
  %42 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %43 = call i32 @tw_cli_process_resp_intr(%struct.tw_cli_ctlr_context* %42)
  %44 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %45 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TW_CLI_REQ_STATE_BUSY, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %51 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TW_CLI_REQ_STATE_PENDING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %57 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @TW_CLI_REQ_STATE_COMPLETE, align 8
  %60 = icmp ne i64 %58, %59
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %119

62:                                               ; preds = %49, %41
  br label %63

63:                                               ; preds = %62
  %64 = call i64 (...) @tw_osl_get_local_time()
  %65 = load i64, i64* %7, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %34, label %67

67:                                               ; preds = %63
  %68 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %69 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @TW_CL_FALSE, align 4
  %72 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %73 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %74 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %75 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %70, i32 %71, i32 %72, i32 4356, i32 1, i32 %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.tw_cli_req_context* %74)
  %76 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %77 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TW_CLI_REQ_STATE_PENDING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %117

81:                                               ; preds = %67
  %82 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %83 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (...) @tw_osl_cur_func()
  %86 = call i32 @tw_cli_dbg_printf(i32 3, i32 %84, i32 %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %87 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %88 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %89 = call i32 @tw_cli_req_q_remove_item(%struct.tw_cli_req_context* %87, i64 %88)
  %90 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %91 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = call i64 @TW_CL_Q_FIRST_ITEM(i32* %94)
  %96 = load i64, i64* @TW_CL_NULL, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %81
  %99 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %100 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TWA_CONTROL_MASK_COMMAND_INTERRUPT, align 4
  %103 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %98, %81
  %105 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %106 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @TW_CL_FALSE, align 4
  %111 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %112 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %104
  %114 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %115 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %116 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %114, i32 %115)
  br label %117

117:                                              ; preds = %113, %67
  %118 = load i32, i32* @TW_OSL_ETIMEDOUT, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %55, %39, %20
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_cli_submit_cmd(%struct.tw_cli_req_context*) #1

declare dso_local i32 @tw_cl_create_event(i32, i32, i32, i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i64 @tw_osl_get_local_time(...) #1

declare dso_local i32 @tw_cli_process_resp_intr(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_req_q_remove_item(%struct.tw_cli_req_context*, i64) #1

declare dso_local i64 @TW_CL_Q_FIRST_ITEM(i32*) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(i32, i32) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
