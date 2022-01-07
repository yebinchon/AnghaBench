; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_process_complete_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cli_process_complete_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32 (%struct.tw_cli_req_context*)* }
%struct.tw_cli_ctlr_context = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CLI_COMPLETE_Q = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_process_complete_queue(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca %struct.tw_cli_req_context*, align 8
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  %5 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %6 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (...) @tw_osl_cur_func()
  %9 = call i32 @tw_cli_dbg_printf(i32 10, i32 %7, i32 %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %27, %1
  %11 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %12 = load i32, i32* @TW_CLI_COMPLETE_Q, align 4
  %13 = call %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context* %11, i32 %12)
  store %struct.tw_cli_req_context* %13, %struct.tw_cli_req_context** %4, align 8
  %14 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %15 = icmp ne %struct.tw_cli_req_context* %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %18 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %17, i32 0, i32 0
  %19 = load i32 (%struct.tw_cli_req_context*)*, i32 (%struct.tw_cli_req_context*)** %18, align 8
  %20 = icmp ne i32 (%struct.tw_cli_req_context*)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %23 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %22, i32 0, i32 0
  %24 = load i32 (%struct.tw_cli_req_context*)*, i32 (%struct.tw_cli_req_context*)** %23, align 8
  %25 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %26 = call i32 %24(%struct.tw_cli_req_context* %25)
  br label %27

27:                                               ; preds = %21, %16
  br label %10

28:                                               ; preds = %10
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
