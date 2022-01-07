; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_soft_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cli_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i64, i32, i32, %struct.tw_cl_ctlr_handle* }
%struct.tw_cl_ctlr_handle = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_INFO_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Resetting controller...\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TW_CL_DEVICE_ID_9K_X = common dso_local global i64 0, align 8
@TW_CL_DEVICE_ID_9K_E = common dso_local global i64 0, align 8
@TW_CL_DEVICE_ID_9K_SA = common dso_local global i64 0, align 8
@TW_CL_TRUE = common dso_local global i32 0, align 4
@TWA_RESET_PHASE1_NOTIFICATION_RESPONSE = common dso_local global i32 0, align 4
@TW_OSL_ESUCCESS = common dso_local global i64 0, align 8
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Missed firmware handshake after soft-reset\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TWA_RESET_PHASE1_WAIT_TIME_MS = common dso_local global i32 0, align 4
@TWA_STATUS_MICROCONTROLLER_READY = common dso_local global i32 0, align 4
@TWA_STATUS_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@TW_CLI_RESET_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Micro-ctlr not ready/No attn intr after reset\00", align 1
@TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"Can't drain response queue after reset\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Can't drain AEN queue after reset\00", align 1
@TWA_AEN_SOFT_RESET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"Reset not reported by controller\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_soft_reset(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  %8 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %9 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %8, i32 0, i32 3
  %10 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %9, align 8
  store %struct.tw_cl_ctlr_handle* %10, %struct.tw_cl_ctlr_handle** %4, align 8
  %11 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %12 = call i32 (...) @tw_osl_cur_func()
  %13 = call i32 @tw_cli_dbg_printf(i32 1, %struct.tw_cl_ctlr_handle* %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %15 = load i32, i32* @TW_CL_FALSE, align 4
  %16 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %17 = load i32, i32* @TW_CL_SEVERITY_INFO_STRING, align 4
  %18 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %14, i32 %15, i32 %16, i32 4360, i32 3, i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %19 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %20 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %21 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @tw_osl_get_lock(%struct.tw_cl_ctlr_handle* %19, i32 %22)
  %24 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %25 = call i32 @TW_CLI_SOFT_RESET(%struct.tw_cl_ctlr_handle* %24)
  %26 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %27 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TW_CL_DEVICE_ID_9K_X, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %1
  %32 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %33 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TW_CL_DEVICE_ID_9K_E, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %39 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TW_CL_DEVICE_ID_9K_SA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %37, %31, %1
  %44 = load i32, i32* @TW_CL_TRUE, align 4
  %45 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %46 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %63, %43
  %48 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %49 = load i32, i32* @TWA_RESET_PHASE1_NOTIFICATION_RESPONSE, align 4
  %50 = call i64 @tw_cli_find_response(%struct.tw_cli_ctlr_context* %48, i32 %49)
  %51 = load i64, i64* @TW_OSL_ESUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %5, align 4
  %54 = call i32 @tw_osl_delay(i32 10)
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  store i32 30856, i32* %7, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 6000000
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i1 [ false, %57 ], [ %62, %60 ]
  br i1 %64, label %47, label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %70 = load i32, i32* @TW_CL_FALSE, align 4
  %71 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %72 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %69, i32 %70, i32 %71, i32 4361, i32 1, i32 %72, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %76 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %77 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @tw_osl_free_lock(%struct.tw_cl_ctlr_handle* %75, i32 %78)
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %2, align 4
  br label %162

81:                                               ; preds = %65
  %82 = load i32, i32* @TWA_RESET_PHASE1_WAIT_TIME_MS, align 4
  %83 = mul nsw i32 %82, 1000
  %84 = call i32 @tw_osl_delay(i32 %83)
  %85 = load i32, i32* @TW_CL_FALSE, align 4
  %86 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %87 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %37
  %89 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %90 = load i32, i32* @TWA_STATUS_MICROCONTROLLER_READY, align 4
  %91 = load i32, i32* @TWA_STATUS_ATTENTION_INTERRUPT, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @TW_CLI_RESET_TIMEOUT_PERIOD, align 4
  %94 = call i32 @tw_cli_poll_status(%struct.tw_cli_ctlr_context* %89, i32 %92, i32 %93)
  store i32 %94, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %98 = load i32, i32* @TW_CL_FALSE, align 4
  %99 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %100 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %97, i32 %98, i32 %99, i32 4361, i32 1, i32 %100, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  %103 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %104 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %105 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @tw_osl_free_lock(%struct.tw_cl_ctlr_handle* %103, i32 %106)
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %2, align 4
  br label %162

109:                                              ; preds = %88
  %110 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %111 = load i32, i32* @TWA_CONTROL_CLEAR_ATTENTION_INTERRUPT, align 4
  %112 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %110, i32 %111)
  %113 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %114 = call i32 @tw_cli_drain_response_queue(%struct.tw_cli_ctlr_context* %113)
  store i32 %114, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %118 = load i32, i32* @TW_CL_FALSE, align 4
  %119 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %120 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %117, i32 %118, i32 %119, i32 4362, i32 1, i32 %120, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %121)
  %123 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %124 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %125 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @tw_osl_free_lock(%struct.tw_cl_ctlr_handle* %123, i32 %126)
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %2, align 4
  br label %162

129:                                              ; preds = %109
  %130 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %131 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %132 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @tw_osl_free_lock(%struct.tw_cl_ctlr_handle* %130, i32 %133)
  %135 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %136 = call i32 @tw_cli_drain_aen_queue(%struct.tw_cli_ctlr_context* %135)
  store i32 %136, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %140 = load i32, i32* @TW_CL_FALSE, align 4
  %141 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %142 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %143 = load i32, i32* %7, align 4
  %144 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %139, i32 %140, i32 %141, i32 4363, i32 1, i32 %142, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %162

146:                                              ; preds = %129
  %147 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %148 = load i32, i32* @TWA_AEN_SOFT_RESET, align 4
  %149 = call i32 @tw_cli_find_aen(%struct.tw_cli_ctlr_context* %147, i32 %148)
  store i32 %149, i32* %7, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %146
  %152 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %4, align 8
  %153 = load i32, i32* @TW_CL_FALSE, align 4
  %154 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %155 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %156 = load i32, i32* %7, align 4
  %157 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %152, i32 %153, i32 %154, i32 4364, i32 1, i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %7, align 4
  store i32 %158, i32* %2, align 4
  br label %162

159:                                              ; preds = %146
  %160 = load i64, i64* @TW_OSL_ESUCCESS, align 8
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %159, %151, %138, %116, %96, %68
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @tw_osl_get_lock(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @TW_CLI_SOFT_RESET(%struct.tw_cl_ctlr_handle*) #1

declare dso_local i64 @tw_cli_find_response(%struct.tw_cli_ctlr_context*, i32) #1

declare dso_local i32 @tw_osl_delay(i32) #1

declare dso_local i32 @tw_osl_free_lock(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_cli_poll_status(%struct.tw_cli_ctlr_context*, i32, i32) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_cli_drain_response_queue(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_drain_aen_queue(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_find_aen(%struct.tw_cli_ctlr_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
