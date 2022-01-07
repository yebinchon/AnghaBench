; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cli_start_ctlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cli_start_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_ctlr_context = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i64, i64 }

@TW_OSL_ESUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TWA_STATUS_MICROCONTROLLER_READY = common dso_local global i32 0, align 4
@TW_CLI_REQUEST_TIMEOUT_PERIOD = common dso_local global i32 0, align 4
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Microcontroller not ready\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't drain response queue\00", align 1
@TWA_EXTENDED_INIT_CONNECT = common dso_local global i32 0, align 4
@TWA_CURRENT_FW_SRL = common dso_local global i8* null, align 8
@TW_CL_SEVERITY_WARNING_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Can't initialize connection in current mode\00", align 1
@TWA_CTLR_FW_COMPATIBLE = common dso_local global i32 0, align 4
@TWA_CTLR_FW_SAME_OR_NEWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"Driver/Firmware mismatch. Negotiating for base level...\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@TWA_BASE_FW_SRL = common dso_local global i8* null, align 8
@TWA_BASE_FW_BRANCH = common dso_local global i8* null, align 8
@TWA_BASE_FW_BUILD = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"Can't initialize connection in base mode\00", align 1
@TWA_BASE_MODE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"Can't drain AEN queue\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cli_start_ctlr(%struct.tw_cli_ctlr_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cli_ctlr_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tw_cli_ctlr_context* %0, %struct.tw_cli_ctlr_context** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @TW_OSL_ESUCCESS, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %12 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (...) @tw_osl_cur_func()
  %15 = call i32 @tw_cli_dbg_printf(i32 3, i32 %13, i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %17 = load i32, i32* @TWA_STATUS_MICROCONTROLLER_READY, align 4
  %18 = load i32, i32* @TW_CLI_REQUEST_TIMEOUT_PERIOD, align 4
  %19 = call i32 @tw_cli_poll_status(%struct.tw_cli_ctlr_context* %16, i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %23 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TW_CL_FALSE, align 4
  %26 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %27 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %24, i32 %25, i32 %26, i32 4105, i32 1, i32 %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %2, align 4
  br label %191

31:                                               ; preds = %1
  %32 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %33 = call i32 @tw_cli_drain_response_queue(%struct.tw_cli_ctlr_context* %32)
  store i32 %33, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %37 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @TW_CL_FALSE, align 4
  %40 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %41 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %38, i32 %39, i32 %40, i32 4106, i32 1, i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %191

45:                                               ; preds = %31
  %46 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %47 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %48 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %47, i32 0, i32 9
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32, i32* @TWA_EXTENDED_INIT_CONNECT, align 4
  %52 = load i8*, i8** @TWA_CURRENT_FW_SRL, align 8
  %53 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %54 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %58 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %57, i32 0, i32 8
  %59 = load i64, i64* %58, align 8
  %60 = call i8* @TWA_CURRENT_FW_BRANCH(i64 %59)
  %61 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %62 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @TWA_CURRENT_FW_BUILD(i64 %63)
  %65 = call i32 @tw_cli_init_connection(%struct.tw_cli_ctlr_context* %46, i8* %50, i32 %51, i8* %52, i8* %56, i8* %60, i8* %64, i8** %4, i8** %5, i8** %6, i8** %7, i32* %8)
  store i32 %65, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %45
  %68 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %69 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TW_CL_FALSE, align 4
  %72 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %73 = load i32, i32* @TW_CL_SEVERITY_WARNING_STRING, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %70, i32 %71, i32 %72, i32 4107, i32 2, i32 %73, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %2, align 4
  br label %191

77:                                               ; preds = %45
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @TWA_CTLR_FW_COMPATIBLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @TWA_CTLR_FW_SAME_OR_NEWER, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = load i8*, i8** @TWA_CURRENT_FW_SRL, align 8
  %89 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %90 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %89, i32 0, i32 7
  store i8* %88, i8** %90, align 8
  %91 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %92 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @TWA_CURRENT_FW_BRANCH(i64 %93)
  %95 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %96 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %95, i32 0, i32 6
  store i8* %94, i8** %96, align 8
  %97 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %98 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %97, i32 0, i32 8
  %99 = load i64, i64* %98, align 8
  %100 = call i8* @TWA_CURRENT_FW_BUILD(i64 %99)
  %101 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %102 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %101, i32 0, i32 5
  store i8* %100, i8** %102, align 8
  br label %113

103:                                              ; preds = %82
  %104 = load i8*, i8** %4, align 8
  %105 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %106 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %105, i32 0, i32 7
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %109 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %108, i32 0, i32 6
  store i8* %107, i8** %109, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %112 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %111, i32 0, i32 5
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %103, %87
  br label %165

114:                                              ; preds = %77
  %115 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %116 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TW_CL_FALSE, align 4
  %119 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %120 = load i32, i32* @TW_CL_SEVERITY_WARNING_STRING, align 4
  %121 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %117, i32 %118, i32 %119, i32 4112, i32 2, i32 %120, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %122 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %123 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %124 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load i32, i32* @TWA_EXTENDED_INIT_CONNECT, align 4
  %128 = load i8*, i8** @TWA_BASE_FW_SRL, align 8
  %129 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %130 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %129, i32 0, i32 8
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = load i8*, i8** @TWA_BASE_FW_BRANCH, align 8
  %134 = load i8*, i8** @TWA_BASE_FW_BUILD, align 8
  %135 = call i32 @tw_cli_init_connection(%struct.tw_cli_ctlr_context* %122, i8* %126, i32 %127, i8* %128, i8* %132, i8* %133, i8* %134, i8** %4, i8** %5, i8** %6, i8** %7, i32* %8)
  store i32 %135, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %114
  %138 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %139 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @TW_CL_FALSE, align 4
  %142 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %143 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %144 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %140, i32 %141, i32 %142, i32 4113, i32 1, i32 %143, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %145 = load i32, i32* %9, align 4
  store i32 %145, i32* %2, align 4
  br label %191

146:                                              ; preds = %114
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @TWA_CTLR_FW_COMPATIBLE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  store i32 1, i32* %2, align 4
  br label %191

152:                                              ; preds = %146
  %153 = load i8*, i8** @TWA_BASE_FW_SRL, align 8
  %154 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %155 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load i8*, i8** @TWA_BASE_FW_BRANCH, align 8
  %157 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %158 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %157, i32 0, i32 6
  store i8* %156, i8** %158, align 8
  %159 = load i8*, i8** @TWA_BASE_FW_BUILD, align 8
  %160 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %161 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %160, i32 0, i32 5
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* @TWA_BASE_MODE, align 4
  %163 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %164 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %152, %113
  %166 = load i8*, i8** %4, align 8
  %167 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %168 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %171 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %170, i32 0, i32 2
  store i8* %169, i8** %171, align 8
  %172 = load i8*, i8** %7, align 8
  %173 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %174 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %173, i32 0, i32 1
  store i8* %172, i8** %174, align 8
  %175 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %176 = call i32 @tw_cli_drain_aen_queue(%struct.tw_cli_ctlr_context* %175)
  store i32 %176, i32* %9, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %165
  %179 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %180 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @TW_CL_FALSE, align 4
  %183 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %184 = load i32, i32* @TW_CL_SEVERITY_WARNING_STRING, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 (i32, i32, i32, i32, i32, i32, i8*, i8*, ...) @tw_cl_create_event(i32 %181, i32 %182, i32 %183, i32 4116, i32 2, i32 %184, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %178, %165
  %188 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %3, align 8
  %189 = call i32 @tw_cli_enable_interrupts(%struct.tw_cli_ctlr_context* %188)
  %190 = load i32, i32* @TW_OSL_ESUCCESS, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %187, %151, %137, %67, %35, %21
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @tw_cli_dbg_printf(i32, i32, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_cli_poll_status(%struct.tw_cli_ctlr_context*, i32, i32) #1

declare dso_local i32 @tw_cl_create_event(i32, i32, i32, i32, i32, i32, i8*, i8*, ...) #1

declare dso_local i32 @tw_cli_drain_response_queue(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_init_connection(%struct.tw_cli_ctlr_context*, i8*, i32, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i8* @TWA_CURRENT_FW_BRANCH(i64) #1

declare dso_local i8* @TWA_CURRENT_FW_BUILD(i64) #1

declare dso_local i32 @tw_cli_drain_aen_queue(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_enable_interrupts(%struct.tw_cli_ctlr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
