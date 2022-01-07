; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cl_fw_passthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cl_fw_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32, %struct.TYPE_8__*, i32, i32, %struct.tw_cl_req_packet*, %struct.tw_cl_req_handle* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %union.tw_cl_command_7k, %struct.tw_cl_command_9k }
%union.tw_cl_command_7k = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.tw_cl_command_9k = type { i64, i8*, i8* }
%struct.tw_cl_req_packet = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.tw_cl_passthru_req_packet }
%struct.tw_cl_passthru_req_packet = type { i32, i32, i64, i32 }
%struct.tw_cl_req_handle = type { %struct.tw_cli_req_context* }
%struct.tw_cl_ctlr_handle = type { i64 }
%struct.tw_cli_ctlr_context = type { i64, i32, i64, i32* }

@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8
@TW_CL_ERR_REQ_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Out of request context packets: returning busy\00", align 1
@TW_OSL_EBUSY = common dso_local global i32 0, align 4
@tw_cli_complete_io = common dso_local global i32 0, align 4
@TW_CLI_REQ_FLAGS_PASSTHRU = common dso_local global i32 0, align 4
@TWA_FW_CMD_EXECUTE_SCSI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"passthru: 9k cmd pkt\00", align 1
@TW_CLI_REQ_FLAGS_9K = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"passthru: 7k cmd pkt\00", align 1
@TW_CL_DEVICE_ID_9K_SA = common dso_local global i64 0, align 8
@TW_CL_64BIT_ADDRESSES = common dso_local global i32 0, align 4
@TW_CLI_PENDING_Q = common dso_local global i64 0, align 8
@TWA_CONTROL_UNMASK_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@TW_CL_FALSE = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR = common dso_local global i32 0, align 4
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to start passthru command\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CLI_FREE_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cl_fw_passthru(%struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_req_packet* %1, %struct.tw_cl_req_handle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %6 = alloca %struct.tw_cl_req_packet*, align 8
  %7 = alloca %struct.tw_cl_req_handle*, align 8
  %8 = alloca %struct.tw_cli_ctlr_context*, align 8
  %9 = alloca %struct.tw_cli_req_context*, align 8
  %10 = alloca %union.tw_cl_command_7k*, align 8
  %11 = alloca %struct.tw_cl_command_9k*, align 8
  %12 = alloca %struct.tw_cl_passthru_req_packet*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tw_cli_req_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %5, align 8
  store %struct.tw_cl_req_packet* %1, %struct.tw_cl_req_packet** %6, align 8
  store %struct.tw_cl_req_handle* %2, %struct.tw_cl_req_handle** %7, align 8
  %19 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  store %struct.tw_cli_req_context* %19, %struct.tw_cli_req_context** %15, align 8
  %20 = load i32, i32* @TW_CL_ERR_REQ_SUCCESS, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %22 = call i32 (...) @tw_osl_cur_func()
  %23 = call i32 @tw_cli_dbg_printf(i32 5, %struct.tw_cl_ctlr_handle* %21, i32 %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %25 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.tw_cli_ctlr_context*
  store %struct.tw_cli_ctlr_context* %27, %struct.tw_cli_ctlr_context** %8, align 8
  %28 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %29 = call %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context* %28)
  store %struct.tw_cli_req_context* %29, %struct.tw_cli_req_context** %9, align 8
  %30 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %31 = icmp eq %struct.tw_cli_req_context* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %34 = call i32 (...) @tw_osl_cur_func()
  %35 = call i32 @tw_cli_dbg_printf(i32 2, %struct.tw_cl_ctlr_handle* %33, i32 %34, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @TW_OSL_EBUSY, align 4
  store i32 %36, i32* %4, align 4
  br label %239

37:                                               ; preds = %3
  %38 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %39 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %7, align 8
  %40 = getelementptr inbounds %struct.tw_cl_req_handle, %struct.tw_cl_req_handle* %39, i32 0, i32 0
  store %struct.tw_cli_req_context* %38, %struct.tw_cli_req_context** %40, align 8
  %41 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %7, align 8
  %42 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %43 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %42, i32 0, i32 5
  store %struct.tw_cl_req_handle* %41, %struct.tw_cl_req_handle** %43, align 8
  %44 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %45 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %46 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %45, i32 0, i32 4
  store %struct.tw_cl_req_packet* %44, %struct.tw_cl_req_packet** %46, align 8
  %47 = load i32, i32* @tw_cli_complete_io, align 4
  %48 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %49 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @TW_CLI_REQ_FLAGS_PASSTHRU, align 4
  %51 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %52 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %56 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store %struct.tw_cl_passthru_req_packet* %57, %struct.tw_cl_passthru_req_packet** %12, align 8
  %58 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %59 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %62 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %65 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @tw_osl_memcpy(%struct.TYPE_8__* %60, i64 %63, i32 %66)
  %68 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %69 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @GET_OPCODE(i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* @TWA_FW_CMD_EXECUTE_SCSI, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %125

77:                                               ; preds = %37
  %78 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %79 = call i32 (...) @tw_osl_cur_func()
  %80 = call i32 @tw_cli_dbg_printf(i32 5, %struct.tw_cl_ctlr_handle* %78, i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* @TW_CLI_REQ_FLAGS_9K, align 4
  %82 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %83 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %87 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store %struct.tw_cl_command_9k* %90, %struct.tw_cl_command_9k** %11, align 8
  %91 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %11, align 8
  %92 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %91, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @GET_LUN_L4(i8* %93)
  store i32 %94, i32* %17, align 4
  %95 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %11, align 8
  %96 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @GET_LUN_H4(i8* %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %101 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @BUILD_LUN_L4__REQ_ID(i32 %99, i32 %102)
  %104 = call i8* @TW_CL_SWAP16(i32 %103)
  %105 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %11, align 8
  %106 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %108 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %77
  %112 = load i32, i32* %18, align 4
  %113 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %114 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @BUILD_LUN_H4__SGL_ENTRIES(i32 %112, i32 %115)
  %117 = call i8* @TW_CL_SWAP16(i32 %116)
  %118 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %11, align 8
  %119 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  %120 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %11, align 8
  %121 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = inttoptr i64 %122 to %struct.tw_cli_req_context*
  store %struct.tw_cli_req_context* %123, %struct.tw_cli_req_context** %15, align 8
  br label %124

124:                                              ; preds = %111, %77
  br label %188

125:                                              ; preds = %37
  %126 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %127 = call i32 (...) @tw_osl_cur_func()
  %128 = call i32 @tw_cli_dbg_printf(i32 5, %struct.tw_cl_ctlr_handle* %126, i32 %127, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %130 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %129, i32 0, i32 1
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  store %union.tw_cl_command_7k* %133, %union.tw_cl_command_7k** %10, align 8
  %134 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %135 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i8* @TW_CL_SWAP16(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %10, align 8
  %140 = bitcast %union.tw_cl_command_7k* %139 to %struct.TYPE_7__*
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 4
  %142 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %10, align 8
  %143 = bitcast %union.tw_cl_command_7k* %142 to %struct.TYPE_7__*
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @GET_SGL_OFF(i32 %145)
  store i32 %146, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %187

148:                                              ; preds = %125
  %149 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %150 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @TW_CL_DEVICE_ID_9K_SA, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %10, align 8
  %156 = bitcast %union.tw_cl_command_7k* %155 to %struct.tw_cli_req_context*
  %157 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %10, align 8
  %158 = bitcast %union.tw_cl_command_7k* %157 to %struct.TYPE_7__*
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %156, i64 %161
  store %struct.tw_cli_req_context* %162, %struct.tw_cli_req_context** %15, align 8
  br label %169

163:                                              ; preds = %148
  %164 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %10, align 8
  %165 = bitcast %union.tw_cl_command_7k* %164 to %struct.tw_cli_req_context*
  %166 = load i32, i32* %14, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %165, i64 %167
  store %struct.tw_cli_req_context* %168, %struct.tw_cli_req_context** %15, align 8
  br label %169

169:                                              ; preds = %163, %154
  %170 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %171 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %174 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @TW_CL_64BIT_ADDRESSES, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 3, i32 2
  %181 = mul nsw i32 %172, %180
  %182 = load %union.tw_cl_command_7k*, %union.tw_cl_command_7k** %10, align 8
  %183 = bitcast %union.tw_cl_command_7k* %182 to %struct.TYPE_7__*
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %181
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %169, %125
  br label %188

188:                                              ; preds = %187, %124
  %189 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %15, align 8
  %190 = icmp ne %struct.tw_cli_req_context* %189, null
  br i1 %190, label %191, label %201

191:                                              ; preds = %188
  %192 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %193 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %194 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %15, align 8
  %197 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %198 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @tw_cli_fill_sg_list(%struct.tw_cli_ctlr_context* %192, i32 %195, %struct.tw_cli_req_context* %196, i32 %199)
  br label %201

201:                                              ; preds = %191, %188
  %202 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %203 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = call %struct.tw_cli_req_context* @TW_CL_Q_FIRST_ITEM(i32* %206)
  %208 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %209 = icmp ne %struct.tw_cli_req_context* %207, %208
  br i1 %209, label %215, label %210

210:                                              ; preds = %201
  %211 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %212 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %210, %201
  %216 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %217 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %218 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %216, i64 %217)
  %219 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %220 = load i32, i32* @TWA_CONTROL_UNMASK_COMMAND_INTERRUPT, align 4
  %221 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %219, i32 %220)
  br label %237

222:                                              ; preds = %210
  %223 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %224 = call i32 @tw_cli_submit_cmd(%struct.tw_cli_req_context* %223)
  store i32 %224, i32* %16, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %222
  %227 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %228 = load i32, i32* @TW_CL_FALSE, align 4
  %229 = load i32, i32* @TW_CL_MESSAGE_SOURCE_COMMON_LAYER_ERROR, align 4
  %230 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %231 = load i32, i32* %16, align 4
  %232 = call i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle* %227, i32 %228, i32 %229, i32 4352, i32 1, i32 %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %231)
  %233 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %234 = load i64, i64* @TW_CLI_FREE_Q, align 8
  %235 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %233, i64 %234)
  br label %236

236:                                              ; preds = %226, %222
  br label %237

237:                                              ; preds = %236, %215
  %238 = load i32, i32* %16, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %237, %32
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @tw_osl_memcpy(%struct.TYPE_8__*, i64, i32) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @GET_LUN_L4(i8*) #1

declare dso_local i32 @GET_LUN_H4(i8*) #1

declare dso_local i8* @TW_CL_SWAP16(i32) #1

declare dso_local i32 @BUILD_LUN_L4__REQ_ID(i32, i32) #1

declare dso_local i32 @BUILD_LUN_H4__SGL_ENTRIES(i32, i32) #1

declare dso_local i32 @GET_SGL_OFF(i32) #1

declare dso_local i32 @tw_cli_fill_sg_list(%struct.tw_cli_ctlr_context*, i32, %struct.tw_cli_req_context*, i32) #1

declare dso_local %struct.tw_cli_req_context* @TW_CL_Q_FIRST_ITEM(i32*) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i64) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_cli_submit_cmd(%struct.tw_cli_req_context*) #1

declare dso_local i32 @tw_cl_create_event(%struct.tw_cl_ctlr_handle*, i32, i32, i32, i32, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
