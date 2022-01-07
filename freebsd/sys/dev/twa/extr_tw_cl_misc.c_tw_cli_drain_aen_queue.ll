; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_drain_aen_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_drain_aen_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i64, i64, %struct.TYPE_6__*, i32, i32, %struct.tw_cli_req_context*, i32 }
%struct.TYPE_6__ = type { %struct.tw_cl_command_header, %struct.TYPE_5__ }
%struct.tw_cl_command_header = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.tw_cli_ctlr_context = type { i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8
@TW_OSL_EBUSY = common dso_local global i32 0, align 4
@TW_CLI_REQ_FLAGS_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Cannot send command to fetch aen\00", align 1
@TW_CLI_REQUEST_TIMEOUT_PERIOD = common dso_local global i64 0, align 8
@TW_CLI_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@TW_CLI_REQ_STATE_PENDING = common dso_local global i64 0, align 8
@TW_CLI_REQ_STATE_COMPLETE = common dso_local global i64 0, align 8
@TW_OSL_ETIMEDOUT = common dso_local global i32 0, align 4
@TWA_AEN_QUEUE_EMPTY = common dso_local global i64 0, align 8
@TWA_AEN_SYNC_TIME_WITH_HOST = common dso_local global i64 0, align 8
@TW_CL_FALSE = common dso_local global i8* null, align 8
@TW_CLI_FREE_Q = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_CONTROLLER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_drain_aen_queue(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca %struct.tw_cli_ctlr_context*, align 8
  %3 = alloca %struct.tw_cli_req_context*, align 8
  %4 = alloca %struct.tw_cl_command_header*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %2, align 8
  %8 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %9 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (...) @tw_osl_cur_func()
  %12 = call i32 @tw_cli_dbg_printf(i32 4, i32 %10, i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %105, %104, %1
  %14 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %15 = call %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context* %14)
  store %struct.tw_cli_req_context* %15, %struct.tw_cli_req_context** %3, align 8
  %16 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %17 = icmp eq %struct.tw_cli_req_context* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* @TW_OSL_EBUSY, align 4
  store i32 %19, i32* %7, align 4
  br label %112

20:                                               ; preds = %13
  %21 = load i32, i32* @TW_CLI_REQ_FLAGS_INTERNAL, align 4
  %22 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %23 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %27 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %28 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %27, i32 0, i32 5
  store %struct.tw_cli_req_context* %26, %struct.tw_cli_req_context** %28, align 8
  %29 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %30 = call i32 @tw_cli_send_scsi_cmd(%struct.tw_cli_req_context* %29, i32 3)
  store i32 %30, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %20
  %33 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %34 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (...) @tw_osl_cur_func()
  %37 = call i32 @tw_cli_dbg_printf(i32 1, i32 %35, i32 %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %112

38:                                               ; preds = %20
  %39 = call i64 (...) @tw_osl_get_local_time()
  %40 = load i64, i64* @TW_CLI_REQUEST_TIMEOUT_PERIOD, align 8
  %41 = add nsw i64 %39, %40
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %66, %38
  %43 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %44 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %113

48:                                               ; preds = %42
  %49 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %50 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @tw_cli_process_resp_intr(i32 %51)
  %53 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %54 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TW_CLI_REQ_STATE_BUSY, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %60 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TW_CLI_REQ_STATE_PENDING, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %70

65:                                               ; preds = %58, %48
  br label %66

66:                                               ; preds = %65
  %67 = call i64 (...) @tw_osl_get_local_time()
  %68 = load i64, i64* %5, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %42, label %70

70:                                               ; preds = %66, %64
  %71 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %72 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @TW_CLI_REQ_STATE_COMPLETE, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @TW_OSL_ETIMEDOUT, align 4
  store i32 %77, i32* %7, align 4
  br label %112

78:                                               ; preds = %70
  %79 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %80 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %89 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %88, i32 0, i32 2
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store %struct.tw_cl_command_header* %91, %struct.tw_cl_command_header** %4, align 8
  br label %112

92:                                               ; preds = %78
  %93 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %94 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %95 = call i64 @tw_cli_manage_aen(%struct.tw_cli_ctlr_context* %93, %struct.tw_cli_req_context* %94)
  store i64 %95, i64* %6, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* @TWA_AEN_QUEUE_EMPTY, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %112

100:                                              ; preds = %92
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @TWA_AEN_SYNC_TIME_WITH_HOST, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %13

105:                                              ; preds = %100
  %106 = load i8*, i8** @TW_CL_FALSE, align 8
  %107 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %108 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  %109 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %110 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %111 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %109, i32 %110)
  br label %13

112:                                              ; preds = %99, %87, %76, %32, %18
  br label %113

113:                                              ; preds = %112, %47
  %114 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %115 = icmp ne %struct.tw_cli_req_context* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %118 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %116
  %122 = load i8*, i8** @TW_CL_FALSE, align 8
  %123 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %2, align 8
  %124 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %121, %116
  %126 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %3, align 8
  %127 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %128 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %113
  %130 = load i32, i32* %7, align 4
  ret i32 %130
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_send_scsi_cmd(%struct.tw_cli_req_context*, i32) #1

declare dso_local i64 @tw_osl_get_local_time(...) #1

declare dso_local i32 @tw_cli_process_resp_intr(i32) #1

declare dso_local i64 @tw_cli_manage_aen(%struct.tw_cli_ctlr_context*, %struct.tw_cli_req_context*) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
