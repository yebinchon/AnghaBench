; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl.h_tw_cli_req_q_insert_tail.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl.h_tw_cli_req_q_insert_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32, %struct.tw_cli_ctlr_context* }
%struct.tw_cli_ctlr_context = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw_cli_req_context*, i64)* @tw_cli_req_q_insert_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw_cli_req_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tw_cli_ctlr_context*, align 8
  store %struct.tw_cli_req_context* %0, %struct.tw_cli_req_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %8 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %7, i32 0, i32 1
  %9 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  store %struct.tw_cli_ctlr_context* %9, %struct.tw_cli_ctlr_context** %6, align 8
  %10 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %11 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %14 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @tw_osl_get_lock(i32 %12, i32 %15)
  %17 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %18 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %23 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %22, i32 0, i32 0
  %24 = call i32 @TW_CL_Q_INSERT_TAIL(i32* %21, i32* %23)
  %25 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @TW_CLI_Q_INSERT(%struct.tw_cli_ctlr_context* %25, i64 %26)
  %28 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %29 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %6, align 8
  %32 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @tw_osl_free_lock(i32 %30, i32 %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @tw_osl_get_lock(i32, i32) #1

declare dso_local i32 @TW_CL_Q_INSERT_TAIL(i32*, i32*) #1

declare dso_local i32 @TW_CLI_Q_INSERT(%struct.tw_cli_ctlr_context*, i64) #1

declare dso_local i32 @tw_osl_free_lock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
