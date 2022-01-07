; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl.h_tw_cli_req_q_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl.h_tw_cli_req_q_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw_cli_ctlr_context*, i64)* @tw_cli_req_q_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw_cli_req_q_init(%struct.tw_cli_ctlr_context* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw_cli_ctlr_context*, align 8
  %5 = alloca i64, align 8
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %7 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = call i32 @TW_CL_Q_INIT(i32* %10)
  %12 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @TW_CLI_Q_INIT(%struct.tw_cli_ctlr_context* %12, i64 %13)
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @TW_CL_Q_INIT(i32*) #1

declare dso_local i32 @TW_CLI_Q_INIT(%struct.tw_cli_ctlr_context*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
