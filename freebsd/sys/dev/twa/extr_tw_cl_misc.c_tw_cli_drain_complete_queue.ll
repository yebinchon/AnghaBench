; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_drain_complete_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_drain_complete_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32, i32, i32 (i32)*, i8*, %struct.tw_cli_req_context*, i32 (%struct.tw_cli_req_context*)*, i8* }
%struct.tw_cli_ctlr_context = type { i32 }
%struct.tw_cl_req_packet = type { i32, i32, i32 (i32)*, i8*, %struct.tw_cl_req_packet*, i32 (%struct.tw_cli_req_context*)*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CLI_COMPLETE_Q = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8
@TW_CLI_REQ_FLAGS_INTERNAL = common dso_local global i32 0, align 4
@TW_CL_ERR_REQ_BUS_RESET = common dso_local global i8* null, align 8
@TW_CLI_REQ_FLAGS_PASSTHRU = common dso_local global i32 0, align 4
@TW_CLI_FREE_Q = common dso_local global i32 0, align 4
@TW_CLI_RESET_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_drain_complete_queue(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca %struct.tw_cli_req_context*, align 8
  %5 = alloca %struct.tw_cl_req_packet*, align 8
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  %6 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %7 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 (...) @tw_osl_cur_func()
  %10 = call i32 @tw_cli_dbg_printf(i32 3, i32 %8, i32 %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %84, %1
  %12 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %13 = load i32, i32* @TW_CLI_COMPLETE_Q, align 4
  %14 = call %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context* %12, i32 %13)
  store %struct.tw_cli_req_context* %14, %struct.tw_cli_req_context** %4, align 8
  %15 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %16 = icmp ne %struct.tw_cli_req_context* %14, %15
  br i1 %16, label %17, label %85

17:                                               ; preds = %11
  %18 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %19 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TW_CLI_REQ_FLAGS_INTERNAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %17
  %25 = load i8*, i8** @TW_CL_ERR_REQ_BUS_RESET, align 8
  %26 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %27 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %29 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %28, i32 0, i32 5
  %30 = load i32 (%struct.tw_cli_req_context*)*, i32 (%struct.tw_cli_req_context*)** %29, align 8
  %31 = icmp ne i32 (%struct.tw_cli_req_context*)* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %34 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %33, i32 0, i32 5
  %35 = load i32 (%struct.tw_cli_req_context*)*, i32 (%struct.tw_cli_req_context*)** %34, align 8
  %36 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %37 = call i32 %35(%struct.tw_cli_req_context* %36)
  br label %38

38:                                               ; preds = %32, %24
  br label %84

39:                                               ; preds = %17
  %40 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %41 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TW_CLI_REQ_FLAGS_PASSTHRU, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %75

46:                                               ; preds = %39
  %47 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %48 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %47, i32 0, i32 4
  %49 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %48, align 8
  %50 = bitcast %struct.tw_cli_req_context* %49 to %struct.tw_cl_req_packet*
  store %struct.tw_cl_req_packet* %50, %struct.tw_cl_req_packet** %5, align 8
  %51 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %52 = bitcast %struct.tw_cli_req_context* %51 to %struct.tw_cl_req_packet*
  %53 = icmp ne %struct.tw_cl_req_packet* %50, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %46
  %55 = load i8*, i8** @TW_CL_ERR_REQ_BUS_RESET, align 8
  %56 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %57 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %59 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %58, i32 0, i32 2
  %60 = load i32 (i32)*, i32 (i32)** %59, align 8
  %61 = icmp ne i32 (i32)* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %64 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %63, i32 0, i32 2
  %65 = load i32 (i32)*, i32 (i32)** %64, align 8
  %66 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %67 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 %65(i32 %68)
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %73 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %74 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %72, i32 %73)
  br label %83

75:                                               ; preds = %39
  %76 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %77 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @tw_osl_untimeout(i32 %78)
  %80 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %4, align 8
  %81 = load i32, i32* @TW_CLI_RESET_Q, align 4
  %82 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %71
  br label %84

84:                                               ; preds = %83, %38
  br label %11

85:                                               ; preds = %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_req_q_remove_head(%struct.tw_cli_ctlr_context*, i32) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @tw_osl_untimeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
