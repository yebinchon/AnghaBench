; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_get_aen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_get_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i64, i32, i32 }
%struct.tw_cli_ctlr_context = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8
@TW_OSL_EBUSY = common dso_local global i32 0, align 4
@TW_CLI_REQ_FLAGS_INTERNAL = common dso_local global i32 0, align 4
@TW_CLI_REQ_FLAGS_9K = common dso_local global i32 0, align 4
@tw_cli_aen_callback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Could not send SCSI command\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"request = %p, error = %d\00", align 1
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CLI_FREE_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_get_aen(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca %struct.tw_cli_req_context*, align 8
  %5 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  %6 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %7 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (...) @tw_osl_cur_func()
  %10 = call i32 (i32, i32, i32, i8*, ...) @tw_cli_dbg_printf(i32 4, i32 %8, i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %12 = call %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context* %11)
  store %struct.tw_cli_req_context* %12, %struct.tw_cli_req_context** %4, align 8
  %13 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %14 = icmp eq %struct.tw_cli_req_context* %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TW_OSL_EBUSY, align 4
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load i32, i32* @TW_CLI_REQ_FLAGS_INTERNAL, align 4
  %19 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %20 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @TW_CLI_REQ_FLAGS_9K, align 4
  %24 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %25 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @tw_cli_aen_callback, align 4
  %29 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %30 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %32 = call i32 @tw_cli_send_scsi_cmd(%struct.tw_cli_req_context* %31, i32 3)
  store i32 %32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %54

34:                                               ; preds = %17
  %35 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %36 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (...) @tw_osl_cur_func()
  %39 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i32, i32, i8*, ...) @tw_cli_dbg_printf(i32 1, i32 %37, i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), %struct.tw_cli_req_context* %39, i32 %40)
  %42 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %43 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load i32, i32* @TW_CL_FALSE, align 4
  %48 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %49 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %34
  %51 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %52 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %53 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %17
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_send_scsi_cmd(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
