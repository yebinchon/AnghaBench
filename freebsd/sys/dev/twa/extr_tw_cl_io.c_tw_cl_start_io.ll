; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cl_start_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_io.c_tw_cl_start_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cli_req_context = type { i32, %struct.TYPE_10__*, i32, i32, %struct.tw_cl_req_packet*, %struct.tw_cl_req_handle* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.tw_cl_command_9k }
%struct.tw_cl_command_9k = type { i32, i32, i8*, i32, i64, i8*, i64, i32 }
%struct.tw_cl_req_packet = type { i32, i32, i32 (%struct.tw_cl_req_handle*, i32, i32*)*, %struct.TYPE_6__, i32 (%struct.tw_cl_req_handle*)* }
%struct.TYPE_6__ = type { %struct.tw_cl_scsi_req_packet }
%struct.tw_cl_scsi_req_packet = type { i32, i32, i64, i32, i32, i64 }
%struct.tw_cl_req_handle = type { %struct.tw_cli_req_context* }
%struct.tw_cl_ctlr_handle = type { i64 }
%struct.tw_cli_ctlr_context = type { i64, i64, i32* }

@TW_CL_ERR_REQ_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TWA_MULTI_LUN_FW_SRL = common dso_local global i64 0, align 8
@TW_CL_ERR_REQ_INVALID_LUN = common dso_local global i32 0, align 4
@TW_CL_ERR_REQ_SCSI_ERROR = common dso_local global i32 0, align 4
@TW_CL_NULL = common dso_local global %struct.tw_cli_req_context* null, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"Out of request context packets: returning busy\00", align 1
@TW_OSL_EBUSY = common dso_local global i32 0, align 4
@tw_cli_complete_io = common dso_local global i32 0, align 4
@TW_CLI_REQ_FLAGS_EXTERNAL = common dso_local global i32 0, align 4
@TW_CLI_REQ_FLAGS_9K = common dso_local global i32 0, align 4
@TWA_FW_CMD_EXECUTE_SCSI = common dso_local global i32 0, align 4
@TW_CL_REQ_CALLBACK_FOR_SGLIST = common dso_local global i32 0, align 4
@TW_CLI_PENDING_Q = common dso_local global i64 0, align 8
@TWA_CONTROL_UNMASK_COMMAND_INTERRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Could not start request. request = %p, error = %d\00", align 1
@TW_CLI_FREE_Q = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cl_start_io(%struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_req_packet* %1, %struct.tw_cl_req_handle* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw_cl_ctlr_handle*, align 8
  %6 = alloca %struct.tw_cl_req_packet*, align 8
  %7 = alloca %struct.tw_cl_req_handle*, align 8
  %8 = alloca %struct.tw_cli_ctlr_context*, align 8
  %9 = alloca %struct.tw_cli_req_context*, align 8
  %10 = alloca %struct.tw_cl_command_9k*, align 8
  %11 = alloca %struct.tw_cl_scsi_req_packet*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tw_cl_ctlr_handle* %0, %struct.tw_cl_ctlr_handle** %5, align 8
  store %struct.tw_cl_req_packet* %1, %struct.tw_cl_req_packet** %6, align 8
  store %struct.tw_cl_req_handle* %2, %struct.tw_cl_req_handle** %7, align 8
  %14 = load i32, i32* @TW_CL_ERR_REQ_SUCCESS, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %16 = call i32 (...) @tw_osl_cur_func()
  %17 = call i32 (i32, %struct.tw_cl_ctlr_handle*, i32, i8*, ...) @tw_cli_dbg_printf(i32 10, %struct.tw_cl_ctlr_handle* %15, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %19 = getelementptr inbounds %struct.tw_cl_ctlr_handle, %struct.tw_cl_ctlr_handle* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.tw_cli_ctlr_context*
  store %struct.tw_cli_ctlr_context* %21, %struct.tw_cli_ctlr_context** %8, align 8
  %22 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %23 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %3
  %29 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %30 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TWA_MULTI_LUN_FW_SRL, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %28
  %35 = load i32, i32* @TW_CL_ERR_REQ_INVALID_LUN, align 4
  %36 = load i32, i32* @TW_CL_ERR_REQ_SCSI_ERROR, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %39 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %43 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %42, i32 0, i32 4
  %44 = load i32 (%struct.tw_cl_req_handle*)*, i32 (%struct.tw_cl_req_handle*)** %43, align 8
  %45 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %7, align 8
  %46 = call i32 %44(%struct.tw_cl_req_handle* %45)
  %47 = load i32, i32* @TW_CL_ERR_REQ_SUCCESS, align 4
  store i32 %47, i32* %4, align 4
  br label %210

48:                                               ; preds = %28, %3
  %49 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %50 = call %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context* %49)
  store %struct.tw_cli_req_context* %50, %struct.tw_cli_req_context** %9, align 8
  %51 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %52 = icmp eq %struct.tw_cli_req_context* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %55 = call i32 (...) @tw_osl_cur_func()
  %56 = call i32 (i32, %struct.tw_cl_ctlr_handle*, i32, i8*, ...) @tw_cli_dbg_printf(i32 2, %struct.tw_cl_ctlr_handle* %54, i32 %55, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @TW_OSL_EBUSY, align 4
  store i32 %57, i32* %4, align 4
  br label %210

58:                                               ; preds = %48
  %59 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %60 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %7, align 8
  %61 = getelementptr inbounds %struct.tw_cl_req_handle, %struct.tw_cl_req_handle* %60, i32 0, i32 0
  store %struct.tw_cli_req_context* %59, %struct.tw_cli_req_context** %61, align 8
  %62 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %7, align 8
  %63 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %64 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %63, i32 0, i32 5
  store %struct.tw_cl_req_handle* %62, %struct.tw_cl_req_handle** %64, align 8
  %65 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %66 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %67 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %66, i32 0, i32 4
  store %struct.tw_cl_req_packet* %65, %struct.tw_cl_req_packet** %67, align 8
  %68 = load i32, i32* @tw_cli_complete_io, align 4
  %69 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %70 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @TW_CLI_REQ_FLAGS_EXTERNAL, align 4
  %72 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %73 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* @TW_CLI_REQ_FLAGS_9K, align 4
  %77 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %78 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %82 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store %struct.tw_cl_scsi_req_packet* %83, %struct.tw_cl_scsi_req_packet** %11, align 8
  %84 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %85 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store %struct.tw_cl_command_9k* %88, %struct.tw_cl_command_9k** %10, align 8
  %89 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %90 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 128, i32* %94, align 8
  %95 = load i32, i32* @TWA_FW_CMD_EXECUTE_SCSI, align 4
  %96 = call i32 @BUILD_RES__OPCODE(i32 0, i32 %95)
  %97 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %98 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %97, i32 0, i32 7
  store i32 %96, i32* %98, align 8
  %99 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %100 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %103 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %102, i32 0, i32 6
  store i64 %101, i64* %103, align 8
  %104 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %105 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %108 = getelementptr inbounds %struct.tw_cli_req_context, %struct.tw_cli_req_context* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @BUILD_LUN_L4__REQ_ID(i64 %106, i32 %109)
  %111 = call i8* @TW_CL_SWAP16(i32 %110)
  %112 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %113 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %112, i32 0, i32 5
  store i8* %111, i8** %113, align 8
  %114 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %115 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %114, i32 0, i32 4
  store i64 0, i64* %115, align 8
  %116 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %117 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %116, i32 0, i32 0
  store i32 16, i32* %117, align 8
  %118 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %119 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %122 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %125 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @tw_osl_memcpy(i32 %120, i32 %123, i32 %126)
  %128 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %129 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TW_CL_REQ_CALLBACK_FOR_SGLIST, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %58
  %135 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %6, align 8
  %136 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %135, i32 0, i32 2
  %137 = load i32 (%struct.tw_cl_req_handle*, i32, i32*)*, i32 (%struct.tw_cl_req_handle*, i32, i32*)** %136, align 8
  %138 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %7, align 8
  %139 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %140 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 %137(%struct.tw_cl_req_handle* %138, i32 %141, i32* %13)
  %143 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %144 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @BUILD_LUN_H4__SGL_ENTRIES(i64 %145, i32 %146)
  %148 = call i8* @TW_CL_SWAP16(i32 %147)
  %149 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %150 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %149, i32 0, i32 2
  store i8* %148, i8** %150, align 8
  br label %173

151:                                              ; preds = %58
  %152 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %153 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %156 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @BUILD_LUN_H4__SGL_ENTRIES(i64 %154, i32 %157)
  %159 = call i8* @TW_CL_SWAP16(i32 %158)
  %160 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %161 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %160, i32 0, i32 2
  store i8* %159, i8** %161, align 8
  %162 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %163 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %164 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.tw_cl_command_9k*, %struct.tw_cl_command_9k** %10, align 8
  %167 = getelementptr inbounds %struct.tw_cl_command_9k, %struct.tw_cl_command_9k* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %11, align 8
  %170 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @tw_cli_fill_sg_list(%struct.tw_cli_ctlr_context* %162, i32 %165, i32 %168, i32 %171)
  br label %173

173:                                              ; preds = %151, %134
  %174 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %175 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %174, i32 0, i32 2
  %176 = load i32*, i32** %175, align 8
  %177 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = call %struct.tw_cli_req_context* @TW_CL_Q_FIRST_ITEM(i32* %178)
  %180 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** @TW_CL_NULL, align 8
  %181 = icmp ne %struct.tw_cli_req_context* %179, %180
  br i1 %181, label %187, label %182

182:                                              ; preds = %173
  %183 = load %struct.tw_cli_ctlr_context*, %struct.tw_cli_ctlr_context** %8, align 8
  %184 = getelementptr inbounds %struct.tw_cli_ctlr_context, %struct.tw_cli_ctlr_context* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %182, %173
  %188 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %189 = load i64, i64* @TW_CLI_PENDING_Q, align 8
  %190 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %188, i64 %189)
  %191 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %192 = load i32, i32* @TWA_CONTROL_UNMASK_COMMAND_INTERRUPT, align 4
  %193 = call i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle* %191, i32 %192)
  br label %208

194:                                              ; preds = %182
  %195 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %196 = call i32 @tw_cli_submit_cmd(%struct.tw_cli_req_context* %195)
  store i32 %196, i32* %12, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %207

198:                                              ; preds = %194
  %199 = load %struct.tw_cl_ctlr_handle*, %struct.tw_cl_ctlr_handle** %5, align 8
  %200 = call i32 (...) @tw_osl_cur_func()
  %201 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %202 = load i32, i32* %12, align 4
  %203 = call i32 (i32, %struct.tw_cl_ctlr_handle*, i32, i8*, ...) @tw_cli_dbg_printf(i32 2, %struct.tw_cl_ctlr_handle* %199, i32 %200, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), %struct.tw_cli_req_context* %201, i32 %202)
  %204 = load %struct.tw_cli_req_context*, %struct.tw_cli_req_context** %9, align 8
  %205 = load i64, i64* @TW_CLI_FREE_Q, align 8
  %206 = call i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context* %204, i64 %205)
  br label %207

207:                                              ; preds = %198, %194
  br label %208

208:                                              ; preds = %207, %187
  %209 = load i32, i32* %12, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %208, %53, %34
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @tw_cli_dbg_printf(i32, %struct.tw_cl_ctlr_handle*, i32, i8*, ...) #1

declare dso_local i32 @tw_osl_cur_func(...) #1

declare dso_local %struct.tw_cli_req_context* @tw_cli_get_request(%struct.tw_cli_ctlr_context*) #1

declare dso_local i32 @BUILD_RES__OPCODE(i32, i32) #1

declare dso_local i8* @TW_CL_SWAP16(i32) #1

declare dso_local i32 @BUILD_LUN_L4__REQ_ID(i64, i32) #1

declare dso_local i32 @tw_osl_memcpy(i32, i32, i32) #1

declare dso_local i32 @BUILD_LUN_H4__SGL_ENTRIES(i64, i32) #1

declare dso_local i32 @tw_cli_fill_sg_list(%struct.tw_cli_ctlr_context*, i32, i32, i32) #1

declare dso_local %struct.tw_cli_req_context* @TW_CL_Q_FIRST_ITEM(i32*) #1

declare dso_local i32 @tw_cli_req_q_insert_tail(%struct.tw_cli_req_context*, i64) #1

declare dso_local i32 @TW_CLI_WRITE_CONTROL_REGISTER(%struct.tw_cl_ctlr_handle*, i32) #1

declare dso_local i32 @tw_cli_submit_cmd(%struct.tw_cli_req_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
