; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_check_ctlr_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_misc.c_tw_cli_check_ctlr_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i64, %struct.tw_cl_ctlr_handle*, i32, i32 }
%struct.tw_cl_ctlr_handle = type { i32 }

@TW_OSL_ESUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TWA_STATUS_MICROCONTROLLER_READY = common dso_local global i32 0, align 4
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Missing expected status bit(s)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"status reg = 0x%x; Missing bits: %s\00", align 1
@TW_OSL_EGENFAILURE = common dso_local global i32 0, align 4
@TWA_STATUS_UNEXPECTED_BITS = common dso_local global i32 0, align 4
@TW_CL_DEVICE_ID_9K_E = common dso_local global i64 0, align 8
@TW_CL_DEVICE_ID_9K_SA = common dso_local global i64 0, align 8
@TWA_STATUS_QUEUE_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"Unexpected status bit(s)\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"status reg = 0x%x Unexpected bits: %s\00", align 1
@TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"PCI parity error: clearing... Re-seat/move/replace card\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"status reg = 0x%x %s\00", align 1
@TWA_CONTROL_CLEAR_PARITY_ERROR = common dso_local global i32 0, align 4
@TWA_STATUS_PCI_ABORT_INTERRUPT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"PCI abort: clearing... \00", align 1
@TWA_CONTROL_CLEAR_PCI_ABORT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Controller queue error: clearing... \00", align 1
@TWA_CONTROL_CLEAR_QUEUE_ERROR = common dso_local global i32 0, align 4
@TWA_PCI_CONFIG_CLEAR_PARITY_ERROR = common dso_local global i32 0, align 4
@TWA_PCI_CONFIG_CLEAR_PCI_ABORT = common dso_local global i32 0, align 4
@TW_CLI_PCI_CONFIG_STATUS_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_check_ctlr_state(%struct.tw_cli_ctlr_context* %0, i32 %1) #0 {
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [200 x i32], align 16
  %8 = alloca [200 x i32], align 16
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %10 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %9, i32 0, i32 1
  %11 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  store %struct.tw_cl_ctlr_handle* %11, %struct.tw_cl_ctlr_handle** %5, align 8
  %12 = load i32, i32* @TW_OSL_ESUCCESS, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %14 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %13, i32 0, i32 1
  %15 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %14, align 8
  %16 = call i32 (...) @tw_osl_cur_func()
  %17 = call i32 @tw_cli_dbg_printf(i32 8, %struct.tw_cl_ctlr_handle* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TWA_STATUS_MICROCONTROLLER_READY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 0
  %24 = call i32 @tw_osl_memzero(i32* %23, i32 200)
  %25 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %26 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %31 = load i32, i32* @TW_CL_FALSE, align 4
  %32 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %33 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @TWA_STATUS_MICROCONTROLLER_READY, align 4
  %36 = getelementptr inbounds [200 x i32], [200 x i32]* %7, i64 0, i64 0
  %37 = call i32 @tw_cli_describe_bits(i32 %35, i32* %36)
  %38 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %30, i32 %31, i32 %32, i32 4865, i32 1, i32 %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* @TW_OSL_EGENFAILURE, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %29, %22
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TWA_STATUS_UNEXPECTED_BITS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %163

46:                                               ; preds = %41
  %47 = getelementptr inbounds [200 x i32], [200 x i32]* %8, i64 0, i64 0
  %48 = call i32 @tw_osl_memzero(i32* %47, i32 200)
  %49 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %50 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TW_CL_DEVICE_ID_9K_E, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %46
  %55 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %56 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TW_CL_DEVICE_ID_9K_SA, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %70, label %60

60:                                               ; preds = %54, %46
  %61 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %62 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @TWA_STATUS_QUEUE_ERROR_INTERRUPT, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %65, %60, %54
  %71 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %72 = load i32, i32* @TW_CL_FALSE, align 4
  %73 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %74 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @TWA_STATUS_UNEXPECTED_BITS, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @TWA_STATUS_UNEXPECTED_BITS, align 4
  %80 = and i32 %78, %79
  %81 = getelementptr inbounds [200 x i32], [200 x i32]* %8, i64 0, i64 0
  %82 = call i32 @tw_cli_describe_bits(i32 %80, i32* %81)
  %83 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %71, i32 %72, i32 %73, i32 4866, i32 1, i32 %74, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %70, %65
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @TWA_STATUS_PCI_PARITY_ERROR_INTERRUPT, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %91 = load i32, i32* @TW_CL_FALSE, align 4
  %92 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %93 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = getelementptr inbounds [200 x i32], [200 x i32]* %8, i64 0, i64 0
  %97 = call i32 @tw_cli_describe_bits(i32 %95, i32* %96)
  %98 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %90, i32 %91, i32 %92, i32 4867, i32 1, i32 %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %100 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %99, i32 0, i32 1
  %101 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %100, align 8
  %102 = load i32, i32* @TWA_CONTROL_CLEAR_PARITY_ERROR, align 4
  %103 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %101, i32 %102)
  br label %104

104:                                              ; preds = %89, %84
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @TWA_STATUS_PCI_ABORT_INTERRUPT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %111 = load i32, i32* @TW_CL_FALSE, align 4
  %112 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %113 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = getelementptr inbounds [200 x i32], [200 x i32]* %8, i64 0, i64 0
  %117 = call i32 @tw_cli_describe_bits(i32 %115, i32* %116)
  %118 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %110, i32 %111, i32 %112, i32 4868, i32 1, i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %114, i32 %117)
  %119 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %120 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %119, i32 0, i32 1
  %121 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %120, align 8
  %122 = load i32, i32* @TWA_CONTROL_CLEAR_PCI_ABORT, align 4
  %123 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %121, i32 %122)
  br label %124

124:                                              ; preds = %109, %104
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @TWA_STATUS_QUEUE_ERROR_INTERRUPT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %162

129:                                              ; preds = %124
  %130 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %131 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TW_CL_DEVICE_ID_9K_E, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %137 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @TW_CL_DEVICE_ID_9K_SA, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %146, label %141

141:                                              ; preds = %135, %129
  %142 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %143 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %156, label %146

146:                                              ; preds = %141, %135
  %147 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %148 = load i32, i32* @TW_CL_FALSE, align 4
  %149 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_EVENT, align 4
  %150 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %4, align 4
  %153 = getelementptr inbounds [200 x i32], [200 x i32]* %8, i64 0, i64 0
  %154 = call i32 @tw_cli_describe_bits(i32 %152, i32* %153)
  %155 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %147, i32 %148, i32 %149, i32 4869, i32 1, i32 %150, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %146, %141
  %157 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %158 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %157, i32 0, i32 1
  %159 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %158, align 8
  %160 = load i32, i32* @TWA_CONTROL_CLEAR_QUEUE_ERROR, align 4
  %161 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %159, i32 %160)
  br label %162

162:                                              ; preds = %156, %124
  br label %163

163:                                              ; preds = %162, %41
  %164 = load i32, i32* %6, align 4
  ret i32 %164
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_osl_memzero(i32*, i32) #1

declare dso_local i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @tw_cli_describe_bits(i32, i32*) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
