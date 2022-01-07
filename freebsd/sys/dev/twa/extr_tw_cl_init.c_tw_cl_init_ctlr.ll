; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_init_ctlr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_init_ctlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_ctlr_handle = type { %struct.tw_cli_ctlr_context* }
%struct.tw_cli_ctlr_context = type { i32, i32, i32, i32, i32, %struct.tw_cl_event_packet*, i64, %struct.tw_cl_command_packet*, %struct.tw_cli_req_context*, i64, i32*, i32*, i32, i32*, i32, i32, i32, %struct.tw_cl_ctlr_handle* }
%struct.tw_cl_event_packet = type { i32 }
%struct.tw_cl_command_packet = type { i32 }
%struct.tw_cli_req_context = type { i32, %struct.tw_cli_ctlr_context*, i64, %struct.tw_cl_command_packet* }

@TW_OSL_ESUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_CL_START_CTLR_ONLY = common dso_local global i32 0, align 4
@TW_CL_MAX_SIMULTANEOUS_REQUESTS = common dso_local global i32 0, align 4
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Too many simultaneous requests to support!\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"requested = %d, supported = %d, error = %d\0A\00", align 1
@TW_OSL_EBIG = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"Insufficient memory for Common Layer's internal usage\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1
@TW_OSL_ENOMEM = common dso_local global i32 0, align 4
@TW_CLI_SECTOR_SIZE = common dso_local global i32 0, align 4
@TW_CLI_FREE_Q = common dso_local global i32 0, align 4
@TW_CLI_BUSY_Q = common dso_local global i32 0, align 4
@TW_CLI_PENDING_Q = common dso_local global i32 0, align 4
@TW_CLI_COMPLETE_Q = common dso_local global i32 0, align 4
@TW_CLI_RESET_Q = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"tw_cl_gen_lock\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"tw_cl_io_lock\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Controller initialization failed. Retrying...\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Controller soft reset failed\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Controller initialization retry failed\00", align 1
@TW_CL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cl_init_ctlr(%struct.tw_cl_ctlr_handle* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i64 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.tw_cli_ctlr_context*, align 8
  %19 = alloca %struct.tw_cli_req_context*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i64 %7, i64* %17, align 8
  %23 = load i32, i32* @TW_OSL_ESUCCESS, align 4
  store i32 %23, i32* %21, align 4
  %24 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %25 = call i32 (...) @tw_osl_cur_func()
  %26 = call i32 @tw_cli_dbg_printf(i32 3, %struct.tw_cl_ctlr_handle* %24, i32 %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @TW_CL_START_CTLR_ONLY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %8
  %32 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %33 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %32, i32 0, i32 0
  %34 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %33, align 8
  store %struct.tw_cli_ctlr_context* %34, %struct.tw_cli_ctlr_context** %18, align 8
  br label %229

35:                                               ; preds = %8
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* @TW_CL_MAX_SIMULTANEOUS_REQUESTS, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %41 = load i32, i32* @TW_CL_FALSE, align 4
  %42 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %43 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @TW_CL_MAX_SIMULTANEOUS_REQUESTS, align 4
  %46 = load i32, i32* @TW_OSL_EBIG, align 4
  %47 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %40, i32 %41, i32 %42, i32 4096, i32 1, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @TW_OSL_EBIG, align 4
  store i32 %48, i32* %9, align 4
  br label %274

49:                                               ; preds = %35
  %50 = load i32*, i32** %15, align 8
  %51 = load i32*, i32** @TW_CL_NULL, align 8
  %52 = icmp eq i32* %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i32*, i32** %16, align 8
  %55 = load i32*, i32** @TW_CL_NULL, align 8
  %56 = icmp eq i32* %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %53, %49
  %58 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %59 = load i32, i32* @TW_CL_FALSE, align 4
  %60 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %61 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %62 = load i32, i32* @TW_OSL_ENOMEM, align 4
  %63 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %58, i32 %59, i32 %60, i32 4097, i32 1, i32 %61, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @TW_OSL_ENOMEM, align 4
  store i32 %64, i32* %9, align 4
  br label %274

65:                                               ; preds = %53
  %66 = load i32*, i32** %15, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = mul i64 32, %68
  %70 = add i64 120, %69
  %71 = load i32, i32* %14, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 4, %72
  %74 = add i64 %70, %73
  %75 = trunc i64 %74 to i32
  %76 = call i32 @tw_osl_memzero(i32* %66, i32 %75)
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = load i32, i32* @TW_CLI_SECTOR_SIZE, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %80, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 @tw_osl_memzero(i32* %77, i32 %84)
  %86 = load i32*, i32** %15, align 8
  store i32* %86, i32** %20, align 8
  %87 = load i32*, i32** %20, align 8
  %88 = bitcast i32* %87 to %struct.tw_cli_ctlr_context*
  store %struct.tw_cli_ctlr_context* %88, %struct.tw_cli_ctlr_context** %18, align 8
  %89 = load i32*, i32** %20, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 120
  store i32* %90, i32** %20, align 8
  %91 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %92 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %93 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %92, i32 0, i32 0
  store %struct.tw_cli_ctlr_context* %91, %struct.tw_cli_ctlr_context** %93, align 8
  %94 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %95 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %96 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %95, i32 0, i32 17
  store %struct.tw_cl_ctlr_handle* %94, %struct.tw_cl_ctlr_handle** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %99 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @TWA_ARCH_ID(i32 %100)
  %102 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %103 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %102, i32 0, i32 16
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %11, align 4
  %105 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %106 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @TWA_SG_ELEMENT_SIZE_FACTOR(i32 %107)
  %109 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %110 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %109, i32 0, i32 15
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %113 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %116 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 4
  %117 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %118 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %119 = call i32 @tw_cli_req_q_init(%struct.tw_cli_ctlr_context* %117, i32 %118)
  %120 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %121 = load i32, i32* @TW_CLI_BUSY_Q, align 4
  %122 = call i32 @tw_cli_req_q_init(%struct.tw_cli_ctlr_context* %120, i32 %121)
  %123 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %124 = load i32, i32* @TW_CLI_PENDING_Q, align 4
  %125 = call i32 @tw_cli_req_q_init(%struct.tw_cli_ctlr_context* %123, i32 %124)
  %126 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %127 = load i32, i32* @TW_CLI_COMPLETE_Q, align 4
  %128 = call i32 @tw_cli_req_q_init(%struct.tw_cli_ctlr_context* %126, i32 %127)
  %129 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %130 = load i32, i32* @TW_CLI_RESET_Q, align 4
  %131 = call i32 @tw_cli_req_q_init(%struct.tw_cli_ctlr_context* %129, i32 %130)
  %132 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %133 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %132, i32 0, i32 14
  %134 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %135 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %134, i32 0, i32 13
  store i32* %133, i32** %135, align 8
  %136 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %137 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %138 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %137, i32 0, i32 13
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @tw_osl_init_lock(%struct.tw_cl_ctlr_handle* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %139)
  %141 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %142 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %141, i32 0, i32 12
  %143 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %144 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %143, i32 0, i32 11
  store i32* %142, i32** %144, align 8
  %145 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %146 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %147 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %146, i32 0, i32 11
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @tw_osl_init_lock(%struct.tw_cl_ctlr_handle* %145, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %148)
  %150 = load i32*, i32** %20, align 8
  %151 = bitcast i32* %150 to %struct.tw_cli_req_context*
  %152 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %153 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %152, i32 0, i32 8
  store %struct.tw_cli_req_context* %151, %struct.tw_cli_req_context** %153, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = mul i64 32, %155
  %157 = load i32*, i32** %20, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 %156
  store i32* %158, i32** %20, align 8
  %159 = load i32*, i32** %16, align 8
  %160 = bitcast i32* %159 to %struct.tw_cl_command_packet*
  %161 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %162 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %161, i32 0, i32 7
  store %struct.tw_cl_command_packet* %160, %struct.tw_cl_command_packet** %162, align 8
  %163 = load i64, i64* %17, align 8
  %164 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %165 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %164, i32 0, i32 6
  store i64 %163, i64* %165, align 8
  %166 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %167 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %166, i32 0, i32 7
  %168 = load %struct.tw_cl_command_packet*, %struct.tw_cl_command_packet** %167, align 8
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.tw_cl_command_packet, %struct.tw_cl_command_packet* %168, i64 %170
  %172 = bitcast %struct.tw_cl_command_packet* %171 to i32*
  %173 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %174 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %173, i32 0, i32 10
  store i32* %172, i32** %174, align 8
  %175 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %176 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %175, i32 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %13, align 4
  %179 = sext i32 %178 to i64
  %180 = mul i64 4, %179
  %181 = add i64 %177, %180
  %182 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %183 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %182, i32 0, i32 9
  store i64 %181, i64* %183, align 8
  store i32 0, i32* %22, align 4
  br label %184

184:                                              ; preds = %221, %65
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* %13, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %224

188:                                              ; preds = %184
  %189 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %190 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %189, i32 0, i32 8
  %191 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %190, align 8
  %192 = load i32, i32* %22, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %191, i64 %193
  store %struct.tw_cli_req_context* %194, %struct.tw_cli_req_context** %19, align 8
  %195 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %196 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %195, i32 0, i32 7
  %197 = load %struct.tw_cl_command_packet*, %struct.tw_cl_command_packet** %196, align 8
  %198 = load i32, i32* %22, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.tw_cl_command_packet, %struct.tw_cl_command_packet* %197, i64 %199
  %201 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %19, align 8
  %202 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %201, i32 0, i32 3
  store %struct.tw_cl_command_packet* %200, %struct.tw_cl_command_packet** %202, align 8
  %203 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %204 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %203, i32 0, i32 6
  %205 = load i64, i64* %204, align 8
  %206 = load i32, i32* %22, align 4
  %207 = sext i32 %206 to i64
  %208 = mul i64 %207, 4
  %209 = add i64 %205, %208
  %210 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %19, align 8
  %211 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %210, i32 0, i32 2
  store i64 %209, i64* %211, align 8
  %212 = load i32, i32* %22, align 4
  %213 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %19, align 8
  %214 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  %215 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %216 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %19, align 8
  %217 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %216, i32 0, i32 1
  store %struct.tw_cli_ctlr_context* %215, %struct.tw_cli_ctlr_context** %217, align 8
  %218 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %19, align 8
  %219 = load i32, i32* @TW_CLI_FREE_Q, align 4
  %220 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %218, i32 %219)
  br label %221

221:                                              ; preds = %188
  %222 = load i32, i32* %22, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %22, align 4
  br label %184

224:                                              ; preds = %184
  %225 = load i32*, i32** %20, align 8
  %226 = bitcast i32* %225 to %struct.tw_cl_event_packet*
  %227 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %228 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %227, i32 0, i32 5
  store %struct.tw_cl_event_packet* %226, %struct.tw_cl_event_packet** %228, align 8
  br label %229

229:                                              ; preds = %224, %31
  %230 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %231 = call i32 @tw_cli_disable_interrupts(%struct.tw_cli_ctlr_context* %230)
  %232 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %233 = call i32 @tw_cli_start_ctlr(%struct.tw_cli_ctlr_context* %232)
  store i32 %233, i32* %21, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %229
  %236 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %237 = load i32, i32* @TW_CL_FALSE, align 4
  %238 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %239 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %240 = load i32, i32* %21, align 4
  %241 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %236, i32 %237, i32 %238, i32 4098, i32 1, i32 %239, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %240)
  %242 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %243 = call i32 @tw_cli_soft_reset(%struct.tw_cli_ctlr_context* %242)
  store i32 %243, i32* %21, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %235
  %246 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %247 = load i32, i32* @TW_CL_FALSE, align 4
  %248 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %249 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %250 = load i32, i32* %21, align 4
  %251 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %246, i32 %247, i32 %248, i32 4099, i32 1, i32 %249, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* %21, align 4
  store i32 %252, i32* %9, align 4
  br label %274

253:                                              ; preds = %235
  %254 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %255 = call i32 @tw_cli_start_ctlr(%struct.tw_cli_ctlr_context* %254)
  store i32 %255, i32* %21, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %265

257:                                              ; preds = %253
  %258 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %10, align 8
  %259 = load i32, i32* @TW_CL_FALSE, align 4
  %260 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %261 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %262 = load i32, i32* %21, align 4
  %263 = call i32 (%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32, ...) @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %258, i32 %259, i32 %260, i32 4100, i32 1, i32 %261, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %21, align 4
  store i32 %264, i32* %9, align 4
  br label %274

265:                                              ; preds = %253
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266, %229
  %268 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %269 = call i32 @tw_cli_notify_ctlr_info(%struct.tw_cli_ctlr_context* %268)
  %270 = load i32, i32* @TW_CL_TRUE, align 4
  %271 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %18, align 8
  %272 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %271, i32 0, i32 4
  store i32 %270, i32* %272, align 8
  %273 = load i32, i32* %21, align 4
  store i32 %273, i32* %9, align 4
  br label %274

274:                                              ; preds = %267, %257, %245, %57, %39
  %275 = load i32, i32* %9, align 4
  ret i32 %275
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @tw_osl_memzero(i32*, i32) #1

declare dso_local i32 @TWA_ARCH_ID(i32) #1

declare dso_local i32 @TWA_SG_ELEMENT_SIZE_FACTOR(i32) #1

declare dso_local i32 @tw_cli_req_q_init(%struct.tw_cli_ctlr_context*, i32) #1

declare dso_local i32 @tw_osl_init_lock(%struct.tw_cl_ctlr_handle*, i8*, i32*) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i32) #1

declare dso_local i32 @tw_cli_disable_interrupts(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_start_ctlr(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_soft_reset(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_cli_notify_ctlr_info(%struct.tw_cli_ctlr_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
