; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cl_reset_ctlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cl_reset_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32 }
%struct.tw_cl_ctlr_handle = type { %struct.twa_softc*, i64 }
%struct.twa_softc = type { i32 }
%struct.tw_cli_ctlr_context = type { i8*, i8*, i32*, i64, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_TRUE = common dso_local global i8* null, align 8
@TW_CL_FALSE = common dso_local global i8* null, align 8
@TW_CLI_MAX_RESET_ATTEMPTS = common dso_local global i64 0, align 8
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Controller reset failed\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"error = %d; attempt %d\00", align 1
@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Can't initialize connection after reset\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CLI_RESET_Q = common dso_local global i32 0, align 4
@TW_CLI_PENDING_Q = common dso_local global i64 0, align 8
@TWA_CONTROL_UNMASK_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_INFO_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tw_cl_reset_ctlr(%struct.tw_cl_ctlr_handle* %0) #0 {
  %2 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca %struct.twa_softc*, align 8
  %5 = alloca %struct.tw_cli_req_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %2, align 8
  %8 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %9 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.tw_cli_ctlr_context*
  store %struct.tw_cli_ctlr_context* %11, %struct.tw_cli_ctlr_context** %3, align 8
  %12 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %13 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %12, i32 0, i32 0
  %14 = load %struct.twa_softc*, %struct.twa_softc** %13, align 8
  store %struct.twa_softc* %14, %struct.twa_softc** %4, align 8
  store i64 1, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %15 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %16 = call i32 (...) @tw_osl_cur_func()
  %17 = call i32 @tw_cli_dbg_printf(i32 2, %struct.tw_cl_ctlr_handle* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** @TW_CL_TRUE, align 8
  %19 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %20 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %22 = call i32 @twa_teardown_intr(%struct.twa_softc* %21)
  %23 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %24 = call i32 @tw_cli_drain_complete_queue(%struct.tw_cli_ctlr_context* %23)
  %25 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %26 = call i32 @tw_cli_drain_busy_queue(%struct.tw_cli_ctlr_context* %25)
  %27 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %28 = call i32 @tw_cli_drain_pending_queue(%struct.tw_cli_ctlr_context* %27)
  %29 = load i8*, i8** @TW_CL_FALSE, align 8
  %30 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %31 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %30, i32 0, i32 5
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @TW_CL_FALSE, align 8
  %33 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %34 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  br label %35

35:                                               ; preds = %67, %43, %1
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @TW_CLI_MAX_RESET_ATTEMPTS, align 8
  %38 = icmp sle i64 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %41 = call i64 @tw_cli_soft_reset(%struct.tw_cli_ctlr_context* %40)
  store i64 %41, i64* %7, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %45 = load i8*, i8** @TW_CL_FALSE, align 8
  %46 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %47 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %6, align 8
  %51 = call i32 (%struct.tw_cl_ctlr_handle*, i8*, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %44, i8* %45, i32 %46, i32 4357, i32 1, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %48, i64 %49)
  %52 = load i64, i64* %6, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %6, align 8
  br label %35

54:                                               ; preds = %39
  %55 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %56 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %57 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %61 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %62 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %63 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %64 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %65 = call i64 @tw_cli_init_connection(%struct.tw_cli_ctlr_context* %55, i32 %59, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.tw_cli_req_context* %60, %struct.tw_cli_req_context* %61, %struct.tw_cli_req_context* %62, %struct.tw_cli_req_context* %63, %struct.tw_cli_req_context* %64)
  store i64 %65, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %54
  %68 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %69 = load i8*, i8** @TW_CL_FALSE, align 8
  %70 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %71 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 (%struct.tw_cl_ctlr_handle*, i8*, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %68, i8* %69, i32 %70, i32 4358, i32 1, i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* %6, align 8
  %75 = add nsw i64 %74, 1
  store i64 %75, i64* %6, align 8
  br label %35

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %84, %77
  %79 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %80 = load i32, i32* @TW_CLI_RESET_Q, align 4
  %81 = call %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context* %79, i32 %80)
  store %struct.tw_cli_req_context* %81, %struct.tw_cli_req_context** %5, align 8
  %82 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %83 = icmp ne %struct.tw_cli_req_context* %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %5, align 8
  %86 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @tw_osl_timeout(i32 %87)
  %89 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %5, align 8
  %90 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %91 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %89, i64 %90)
  br label %78

92:                                               ; preds = %78
  %93 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %94 = call i32 @twa_setup_intr(%struct.twa_softc* %93)
  %95 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %96 = call i32 @tw_cli_enable_interrupts(%struct.tw_cli_ctlr_context* %95)
  %97 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %98 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %97, i32 0, i32 2
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = call %struct.tw_cli_req_context* @TW_CL_Q_FIRST_ITEM(i32* %101)
  %103 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %104 = icmp ne %struct.tw_cli_req_context* %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %92
  %106 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %107 = load i32, i32* @TWA_CONTROL_UNMASK_COMMAND_INTERRUPT, align 4
  %108 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %92
  %110 = load i8*, i8** @TW_CL_FALSE, align 8
  %111 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %112 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i8*, i8** @TW_CL_FALSE, align 8
  %114 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %115 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %117 = call i32 @tw_osl_scan_bus(%struct.tw_cl_ctlr_handle* %116)
  %118 = load i64, i64* %7, align 8
  ret i64 %118
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @twa_teardown_intr(%struct.twa_softc*) #1

declare dso_local i32 @tw_cli_drain_complete_queue(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_drain_busy_queue(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_drain_pending_queue(%struct.tw_cli_ctlr_context*) #1

declare dso_local i64 @tw_cli_soft_reset(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle*, i8*, i32, i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i64 @tw_cli_init_connection(%struct.tw_cli_ctlr_context*, i32, i32, i32, i32, i32, i32, %struct.tw_cli_req_context*, %struct.tw_cli_req_context*, %struct.tw_cli_req_context*, %struct.tw_cli_req_context*, %struct.tw_cli_req_context*) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context*, i32) #1

declare dso_local i32 @tw_osl_timeout(i32) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i64) #1

declare dso_local i32 @twa_setup_intr(%struct.twa_softc*) #1

declare dso_local i32 @tw_cli_enable_interrupts(%struct.tw_cli_ctlr_context*) #1

declare dso_local %struct.tw_cli_req_context* @TW_CL_Q_FIRST_ITEM(i32*) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_osl_scan_bus(%struct.tw_cl_ctlr_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
