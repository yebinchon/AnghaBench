; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_find_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_find_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TWA_STATUS_RESPONSE_QUEUE_EMPTY = common dso_local global i32 0, align 4
@TW_OSL_ENOTTY = common dso_local global i64 0, align 8
@TW_CL_DEVICE_ID_9K = common dso_local global i64 0, align 8
@TW_OSL_ESUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tw_cli_find_response(%struct.tw_cli_ctlr_context* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tw_cli_ctlr_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %10 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 (...) @tw_osl_cur_func()
  %13 = call i32 @tw_cli_dbg_printf(i32 4, i32 %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %51, %2
  %15 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %16 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @TW_CLI_READ_STATUS_REGISTER(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @TWA_STATUS_RESPONSE_QUEUE_EMPTY, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i64, i64* @TW_OSL_ENOTTY, align 8
  store i64 %24, i64* %3, align 8
  br label %52

25:                                               ; preds = %14
  %26 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %27 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TW_CL_DEVICE_ID_9K, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %33 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @TW_CLI_READ_RESPONSE_QUEUE(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @GET_RESP_ID(i32 %36)
  store i64 %37, i64* %7, align 8
  br label %45

38:                                               ; preds = %25
  %39 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %4, align 8
  %40 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @TW_CLI_READ_LARGE_RESPONSE_QUEUE(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @GET_LARGE_RESP_ID(i32 %43)
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %38, %31
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* @TW_OSL_ESUCCESS, align 8
  store i64 %50, i64* %3, align 8
  br label %52

51:                                               ; preds = %45
  br label %14

52:                                               ; preds = %49, %23
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @TW_CLI_READ_STATUS_REGISTER(i32) #1

declare dso_local i32 @TW_CLI_READ_RESPONSE_QUEUE(i32) #1

declare dso_local i64 @GET_RESP_ID(i32) #1

declare dso_local i32 @TW_CLI_READ_LARGE_RESPONSE_QUEUE(i32) #1

declare dso_local i64 @GET_LARGE_RESP_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
