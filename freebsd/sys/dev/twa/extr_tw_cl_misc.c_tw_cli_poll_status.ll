; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_poll_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_poll_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSL_ESUCCESS = common dso_local global i32 0, align 4
@TW_OSL_ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_poll_status(%struct.tw_cli_ctlr_context* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw_cli_ctlr_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %5, align 8
  %11 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (...) @tw_osl_cur_func()
  %14 = call i32 @tw_cli_dbg_printf(i32 4, i32 %12, i32 %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 (...) @tw_osl_get_local_time()
  %16 = load i64, i64* %7, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %32, %3
  %19 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %5, align 8
  %20 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @TW_CLI_READ_STATUS_REGISTER(i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %6, align 8
  %25 = and i64 %23, %24
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @TW_OSL_ESUCCESS, align 4
  store i32 %29, i32* %4, align 4
  br label %38

30:                                               ; preds = %18
  %31 = call i32 @tw_osl_delay(i32 1000)
  br label %32

32:                                               ; preds = %30
  %33 = call i64 (...) @tw_osl_get_local_time()
  %34 = load i64, i64* %8, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %18, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* @TW_OSL_ETIMEDOUT, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i64 @tw_osl_get_local_time(...) #1

declare dso_local i64 @TW_CLI_READ_STATUS_REGISTER(i32) #1

declare dso_local i32 @tw_osl_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
