; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_post_req_mvfrey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_post_req_mvfrey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpt_iop_hba = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.hpt_iop_srb = type { i32, i32, i32, i32, %union.ccb* }
%union.ccb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32*, i32* }
%struct.TYPE_17__ = type { i32, i64 }
%struct.hpt_iop_request_scsi_command = type { %struct.TYPE_16__, i32, i32, i64, i64, i32, %struct.hpt_iopsg* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32 }
%struct.hpt_iopsg = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@IOP_REQUEST_TYPE_SCSI_COMMAND = common dso_local global i32 0, align 4
@IOP_RESULT_PENDING = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@IOP_REQUEST_FLAG_OUTPUT_CONTEXT = common dso_local global i32 0, align 4
@IOP_REQUEST_FLAG_ADDR_BITS = common dso_local global i32 0, align 4
@IOPMU_QUEUE_ADDR_HOST_BIT = common dso_local global i32 0, align 4
@CL_POINTER_TOGGLE = common dso_local global i32 0, align 4
@inbound_write_ptr = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@hptiop_reset_adapter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpt_iop_hba*, %struct.hpt_iop_srb*, %struct.TYPE_17__*, i32)* @hptiop_post_req_mvfrey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_post_req_mvfrey(%struct.hpt_iop_hba* %0, %struct.hpt_iop_srb* %1, %struct.TYPE_17__* %2, i32 %3) #0 {
  %5 = alloca %struct.hpt_iop_hba*, align 8
  %6 = alloca %struct.hpt_iop_srb*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ccb*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hpt_iop_request_scsi_command*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hpt_iopsg*, align 8
  store %struct.hpt_iop_hba* %0, %struct.hpt_iop_hba** %5, align 8
  store %struct.hpt_iop_srb* %1, %struct.hpt_iop_srb** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %17 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %16, i32 0, i32 4
  %18 = load %union.ccb*, %union.ccb** %17, align 8
  store %union.ccb* %18, %union.ccb** %11, align 8
  %19 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %20 = bitcast %struct.hpt_iop_srb* %19 to %struct.hpt_iop_request_scsi_command*
  store %struct.hpt_iop_request_scsi_command* %20, %struct.hpt_iop_request_scsi_command** %13, align 8
  %21 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %22 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %14, align 4
  %24 = load %union.ccb*, %union.ccb** %11, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_11__*
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %29
  %33 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %34 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %33, i32 0, i32 6
  %35 = load %struct.hpt_iopsg*, %struct.hpt_iopsg** %34, align 8
  store %struct.hpt_iopsg* %35, %struct.hpt_iopsg** %15, align 8
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %61, %32
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = or i32 %47, 1
  %49 = load %struct.hpt_iopsg*, %struct.hpt_iopsg** %15, align 8
  %50 = getelementptr inbounds %struct.hpt_iopsg, %struct.hpt_iopsg* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hpt_iopsg*, %struct.hpt_iopsg** %15, align 8
  %58 = getelementptr inbounds %struct.hpt_iopsg, %struct.hpt_iopsg* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hpt_iopsg*, %struct.hpt_iopsg** %15, align 8
  %60 = getelementptr inbounds %struct.hpt_iopsg, %struct.hpt_iopsg* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  br label %61

61:                                               ; preds = %40
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  %64 = load %struct.hpt_iopsg*, %struct.hpt_iopsg** %15, align 8
  %65 = getelementptr inbounds %struct.hpt_iopsg, %struct.hpt_iopsg* %64, i32 1
  store %struct.hpt_iopsg* %65, %struct.hpt_iopsg** %15, align 8
  br label %36

66:                                               ; preds = %36
  %67 = load %struct.hpt_iopsg*, %struct.hpt_iopsg** %15, align 8
  %68 = getelementptr inbounds %struct.hpt_iopsg, %struct.hpt_iopsg* %67, i64 -1
  %69 = getelementptr inbounds %struct.hpt_iopsg, %struct.hpt_iopsg* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %29, %4
  %71 = load %union.ccb*, %union.ccb** %11, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_12__*
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CAM_CDB_POINTER, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %union.ccb*, %union.ccb** %11, align 8
  %80 = bitcast %union.ccb* %79 to %struct.TYPE_11__*
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %12, align 8
  br label %90

84:                                               ; preds = %70
  %85 = load %union.ccb*, %union.ccb** %11, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_11__*
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  store i32* %89, i32** %12, align 8
  br label %90

90:                                               ; preds = %84, %78
  %91 = load i32*, i32** %12, align 8
  %92 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %93 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %union.ccb*, %union.ccb** %11, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_11__*
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @bcopy(i32* %91, i32 %94, i32 %98)
  %100 = load i32, i32* @IOP_REQUEST_TYPE_SCSI_COMMAND, align 4
  %101 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %102 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load i32, i32* @IOP_RESULT_PENDING, align 4
  %105 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %106 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 4
  store i32 %104, i32* %107, align 8
  %108 = load %union.ccb*, %union.ccb** %11, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_11__*
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %113 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  %114 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %115 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %union.ccb*, %union.ccb** %11, align 8
  %117 = bitcast %union.ccb* %116 to %struct.TYPE_12__*
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %121 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %union.ccb*, %union.ccb** %11, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_12__*
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %127 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 12
  %131 = add i64 52, %130
  %132 = trunc i64 %131 to i32
  %133 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %134 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  store i32 %132, i32* %135, align 4
  %136 = load %union.ccb*, %union.ccb** %11, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_12__*
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @CAM_DIR_MASK, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* @CAM_DIR_IN, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %90
  %145 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %146 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %149 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %152 = call i32 @bus_dmamap_sync(i32 %147, i32 %150, i32 %151)
  br label %172

153:                                              ; preds = %90
  %154 = load %union.ccb*, %union.ccb** %11, align 8
  %155 = bitcast %union.ccb* %154 to %struct.TYPE_12__*
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @CAM_DIR_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32, i32* @CAM_DIR_OUT, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %153
  %163 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %164 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %167 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %170 = call i32 @bus_dmamap_sync(i32 %165, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %162, %153
  br label %172

172:                                              ; preds = %171, %144
  %173 = load i32, i32* @IOP_REQUEST_FLAG_OUTPUT_CONTEXT, align 4
  %174 = load i32, i32* @IOP_REQUEST_FLAG_ADDR_BITS, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* %14, align 4
  %177 = ashr i32 %176, 16
  %178 = and i32 %177, -65536
  %179 = or i32 %175, %178
  %180 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %181 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  store i32 %179, i32* %182, align 8
  %183 = load i32, i32* %14, align 4
  %184 = shl i32 %183, 32
  %185 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %186 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = shl i32 %187, 4
  %189 = or i32 %184, %188
  %190 = load i32, i32* @IOPMU_QUEUE_ADDR_HOST_BIT, align 4
  %191 = or i32 %189, %190
  %192 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %193 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = or i32 %191, %195
  %197 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %198 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 3
  store i32 %196, i32* %199, align 4
  %200 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %201 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %207 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, 16383
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %214 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %212, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %172
  store i32 0, i32* %10, align 4
  %220 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %221 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = and i32 %224, -16384
  store i32 %225, i32* %223, align 8
  %226 = load i32, i32* @CL_POINTER_TOGGLE, align 4
  %227 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %228 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = xor i32 %231, %226
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %219, %172
  %234 = load i32, i32* %14, align 4
  %235 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %236 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %238, align 8
  %240 = load i32, i32* %10, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  store i32 %234, i32* %243, align 4
  %244 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %245 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 3
  %249 = sdiv i32 %248, 4
  %250 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %251 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 1
  store i32 %249, i32* %258, align 4
  %259 = load i32, i32* @inbound_write_ptr, align 4
  %260 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %261 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @BUS_SPACE_WRT4_MVFREY2(i32 %259, i32 %264)
  %266 = load i32, i32* @inbound_write_ptr, align 4
  %267 = call i32 @BUS_SPACE_RD4_MVFREY2(i32 %266)
  %268 = load %struct.hpt_iop_request_scsi_command*, %struct.hpt_iop_request_scsi_command** %13, align 8
  %269 = getelementptr inbounds %struct.hpt_iop_request_scsi_command, %struct.hpt_iop_request_scsi_command* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @IOP_REQUEST_TYPE_SCSI_COMMAND, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %233
  %275 = load %struct.hpt_iop_srb*, %struct.hpt_iop_srb** %6, align 8
  %276 = getelementptr inbounds %struct.hpt_iop_srb, %struct.hpt_iop_srb* %275, i32 0, i32 2
  %277 = load i32, i32* @hz, align 4
  %278 = mul nsw i32 20, %277
  %279 = load i32, i32* @hptiop_reset_adapter, align 4
  %280 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %5, align 8
  %281 = call i32 @callout_reset(i32* %276, i32 %278, i32 %279, %struct.hpt_iop_hba* %280)
  br label %282

282:                                              ; preds = %274, %233
  ret void
}

declare dso_local i32 @bcopy(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @BUS_SPACE_WRT4_MVFREY2(i32, i32) #1

declare dso_local i32 @BUS_SPACE_RD4_MVFREY2(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.hpt_iop_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
