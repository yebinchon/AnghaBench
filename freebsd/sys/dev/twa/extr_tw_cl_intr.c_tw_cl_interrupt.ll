; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cl_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_intr.c_tw_cl_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_ctlr_handle = type { i64 }
%struct.tw_cli_ctlr_context = type { i32*, i32, i64 }

@TW_CL_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TWA_STATUS_HOST_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Host interrupt\00", align 1
@TWA_CONTROL_CLEAR_HOST_INTERRUPT = common dso_local global i32 0, align 4
@TWA_STATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Attention interrupt\00", align 1
@TW_CL_TRUE = common dso_local global i32 0, align 4
@TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@TWA_STATUS_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Command interrupt\00", align 1
@TW_CLI_PENDING_Q = common dso_local global i64 0, align 8
@TW_CL_NULL = common dso_local global i64 0, align 8
@TWA_CONTROL_MASK_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@TWA_STATUS_RESPONSE_INTERRUPT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Response interrupt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cl_interrupt(%struct.tw_cl_ctlr_handle* %0) #0 {
  %2 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %2, align 8
  %6 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %7 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.tw_cli_ctlr_context*
  store %struct.tw_cli_ctlr_context* %9, %struct.tw_cli_ctlr_context** %3, align 8
  %10 = load i32, i32* @TW_CL_FALSE, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %12 = call i32 (...) @tw_osl_cur_func()
  %13 = call i32 @tw_cli_dbg_printf(i32 10, %struct.tw_cl_ctlr_handle* %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %15 = icmp eq %struct.tw_cli_ctlr_context* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %107

17:                                               ; preds = %1
  %18 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %19 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %24 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22, %17
  br label %107

28:                                               ; preds = %22
  %29 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %30 = call i32 @TW_CLI_READ_STATUS_REGISTER(%struct.tw_cl_ctlr_handle* %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @tw_cli_check_ctlr_state(%struct.tw_cli_ctlr_context* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %107

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @TWA_STATUS_HOST_INTERRUPT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %43 = call i32 (...) @tw_osl_cur_func()
  %44 = call i32 @tw_cli_dbg_printf(i32 6, %struct.tw_cl_ctlr_handle* %42, i32 %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %46 = load i32, i32* @TWA_CONTROL_CLEAR_HOST_INTERRUPT, align 4
  %47 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @TWA_STATUS_ATTENTION_INTERRUPT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %55 = call i32 (...) @tw_osl_cur_func()
  %56 = call i32 @tw_cli_dbg_printf(i32 6, %struct.tw_cl_ctlr_handle* %54, i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @TW_CL_TRUE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %61 = call i32 @tw_cli_process_attn_intr(%struct.tw_cli_ctlr_context* %60)
  %62 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %63 = load i32, i32* @TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT, align 4
  %64 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %62, i32 %63)
  br label %65

65:                                               ; preds = %53, %48
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @TWA_STATUS_COMMAND_INTERRUPT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %92

70:                                               ; preds = %65
  %71 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %72 = call i32 (...) @tw_osl_cur_func()
  %73 = call i32 @tw_cli_dbg_printf(i32 6, %struct.tw_cl_ctlr_handle* %71, i32 %72, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @TW_CL_TRUE, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %78 = call i32 @tw_cli_process_cmd_intr(%struct.tw_cli_ctlr_context* %77)
  %79 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %80 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = call i64 @TW_CL_Q_FIRST_ITEM(i32* %83)
  %85 = load i64, i64* @TW_CL_NULL, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %70
  %88 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %89 = load i32, i32* @TWA_CONTROL_MASK_COMMAND_INTERRUPT, align 4
  %90 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %70
  br label %92

92:                                               ; preds = %91, %65
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @TWA_STATUS_RESPONSE_INTERRUPT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %2, align 8
  %99 = call i32 (...) @tw_osl_cur_func()
  %100 = call i32 @tw_cli_dbg_printf(i32 10, %struct.tw_cl_ctlr_handle* %98, i32 %99, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %101 = load i32, i32* @TW_CL_TRUE, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %105 = call i32 @tw_cli_process_resp_intr(%struct.tw_cli_ctlr_context* %104)
  br label %106

106:                                              ; preds = %97, %92
  br label %107

107:                                              ; preds = %106, %35, %27, %16
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @TW_CLI_READ_STATUS_REGISTER(%struct.tw_cl_ctlr_handle*) #1

declare dso_local i64 @tw_cli_check_ctlr_state(%struct.tw_cli_ctlr_context*, i32) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_cli_process_attn_intr(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_process_cmd_intr(%struct.tw_cli_ctlr_context*) #1

declare dso_local i64 @TW_CL_Q_FIRST_ITEM(i32*) #1

declare dso_local i32 @tw_cli_process_resp_intr(%struct.tw_cli_ctlr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
