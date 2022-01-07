; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.ISCI_IO_REQUEST = type { %union.ccb*, %struct.TYPE_8__, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i32, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.ISCI_CONTROLLER = type { i64, i32, i32 }
%struct.ISCI_REMOTE_DEVICE = type { i64, i32, %union.ccb*, i32 }
%struct.TYPE_10__ = type { i8*, i32, i32 }
%struct.ccb_relsim = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.cam_path = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ISCI_REQUEST = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ISCI\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"isci: bus=%x target=%x lun=%x cdb[0]=%x status=%x key=%x asc=%x ascq=%x\0A\00", align 1
@CAM_REQ_TERMIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [70 x i8] c"isci: bus=%x target=%x lun=%x cdb[0]=%x remote device reset required\0A\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"isci: bus=%x target=%x lun=%x cdb[0]=%x terminated\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@XPT_REL_SIMQ = common dso_local global i32 0, align 4
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4
@RELSIM_ADJUST_OPENINGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"isci: bus=%x target=%x lun=%x cdb[0]=%x completion status=%x\0A\00", align 1
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"multiple internally queued ccbs in flight\00", align 1
@sim_links = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"already queued %p %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"queue %p %x\0A\00", align 1
@XPT_SMP_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_io_request_complete(i32 %0, i32 %1, %struct.ISCI_IO_REQUEST* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ISCI_IO_REQUEST*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ISCI_CONTROLLER*, align 8
  %10 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ccb_scsiio*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ccb_relsim, align 4
  %21 = alloca %struct.cam_path*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.ISCI_IO_REQUEST* %2, %struct.ISCI_IO_REQUEST** %7, align 8
  store i32 %3, i32* %8, align 4
  %22 = load i64, i64* @TRUE, align 8
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** %12, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @sci_object_get_association(i32 %24)
  %26 = inttoptr i64 %25 to %struct.ISCI_CONTROLLER*
  store %struct.ISCI_CONTROLLER* %26, %struct.ISCI_CONTROLLER** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @sci_object_get_association(i32 %27)
  %29 = inttoptr i64 %28 to %struct.ISCI_REMOTE_DEVICE*
  store %struct.ISCI_REMOTE_DEVICE* %29, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %30 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %31 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %30, i32 0, i32 0
  %32 = load %union.ccb*, %union.ccb** %31, align 8
  store %union.ccb* %32, %union.ccb** %11, align 8
  %33 = load %union.ccb*, %union.ccb** %11, align 8
  %34 = bitcast %union.ccb* %33 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %34, %struct.ccb_scsiio** %13, align 8
  %35 = load i32, i32* @CAM_STATUS_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load %union.ccb*, %union.ccb** %11, align 8
  %38 = bitcast %union.ccb* %37 to %struct.TYPE_13__*
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %36
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %229 [
    i32 130, label %43
    i32 129, label %43
    i32 128, label %50
    i32 133, label %69
    i32 135, label %141
    i32 132, label %167
    i32 138, label %191
    i32 141, label %191
    i32 139, label %193
    i32 137, label %200
    i32 143, label %228
    i32 134, label %228
    i32 131, label %228
    i32 136, label %228
    i32 140, label %228
    i32 142, label %228
  ]

43:                                               ; preds = %4, %4
  %44 = load i32, i32* @CAM_REQ_CMP, align 4
  %45 = load %union.ccb*, %union.ccb** %11, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_13__*
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %44
  store i32 %49, i32* %47, align 8
  br label %254

50:                                               ; preds = %4
  %51 = load i32, i32* @CAM_REQ_CMP, align 4
  %52 = load %union.ccb*, %union.ccb** %11, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_13__*
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 8
  %57 = load %union.ccb*, %union.ccb** %11, align 8
  %58 = bitcast %union.ccb* %57 to %struct.ccb_scsiio*
  %59 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %62 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @scif_io_request_get_number_of_bytes_transferred(i32 %63)
  %65 = sub nsw i64 %60, %64
  %66 = load %union.ccb*, %union.ccb** %11, align 8
  %67 = bitcast %union.ccb* %66 to %struct.ccb_scsiio*
  %68 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %67, i32 0, i32 5
  store i64 %65, i64* %68, align 8
  br label %254

69:                                               ; preds = %4
  %70 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %71 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @scif_io_request_get_response_iu_address(i32 %72)
  %74 = bitcast i8* %73 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %14, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @sci_ssp_get_sense_data_length(i32 %77)
  store i64 %78, i64* %15, align 8
  %79 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %80 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %15, align 8
  %83 = call i64 @MIN(i64 %81, i64 %82)
  store i64 %83, i64* %15, align 8
  %84 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %85 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %84, i32 0, i32 1
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call i32 @memcpy(i32* %85, i8* %88, i64 %89)
  %91 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %92 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %15, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %97 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %102 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %104 = load %union.ccb*, %union.ccb** %11, align 8
  %105 = bitcast %union.ccb* %104 to %struct.TYPE_13__*
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %103
  store i32 %108, i32* %106, align 8
  %109 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %110 = load %union.ccb*, %union.ccb** %11, align 8
  %111 = bitcast %union.ccb* %110 to %struct.TYPE_13__*
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 8
  %115 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %116 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %115, i32 0, i32 1
  %117 = call i32 @scsi_extract_sense(i32* %116, i32* %16, i32* %17, i32* %18, i32* %19)
  %118 = load %union.ccb*, %union.ccb** %11, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_13__*
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to %union.ccb*
  %124 = load %union.ccb*, %union.ccb** %11, align 8
  %125 = bitcast %union.ccb* %124 to %struct.TYPE_13__*
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %union.ccb*, %union.ccb** %11, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_13__*
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %133 = call i32 @scsiio_cdb_ptr(%struct.ccb_scsiio* %132)
  %134 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %135 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %19, align 4
  %140 = call i32 (i32, i8*, i8*, %union.ccb*, i32, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), %union.ccb* %123, i32 %127, i32 %131, i32 %133, i32 %136, i32 %137, i32 %138, i32 %139)
  br label %254

141:                                              ; preds = %4
  %142 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %143 = call i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE* %142, i32* null)
  %144 = load i32, i32* @CAM_REQ_TERMIO, align 4
  %145 = load %union.ccb*, %union.ccb** %11, align 8
  %146 = bitcast %union.ccb* %145 to %struct.TYPE_13__*
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %144
  store i32 %149, i32* %147, align 8
  %150 = load %union.ccb*, %union.ccb** %11, align 8
  %151 = bitcast %union.ccb* %150 to %struct.TYPE_13__*
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = inttoptr i64 %154 to %union.ccb*
  %156 = load %union.ccb*, %union.ccb** %11, align 8
  %157 = bitcast %union.ccb* %156 to %struct.TYPE_13__*
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load %union.ccb*, %union.ccb** %11, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_13__*
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %165 = call i32 @scsiio_cdb_ptr(%struct.ccb_scsiio* %164)
  %166 = call i32 (i32, i8*, i8*, %union.ccb*, i32, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.2, i64 0, i64 0), %union.ccb* %155, i32 %159, i32 %163, i32 %165)
  br label %254

167:                                              ; preds = %4
  %168 = load i32, i32* @CAM_REQ_TERMIO, align 4
  %169 = load %union.ccb*, %union.ccb** %11, align 8
  %170 = bitcast %union.ccb* %169 to %struct.TYPE_13__*
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %168
  store i32 %173, i32* %171, align 8
  %174 = load %union.ccb*, %union.ccb** %11, align 8
  %175 = bitcast %union.ccb* %174 to %struct.TYPE_13__*
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = inttoptr i64 %178 to %union.ccb*
  %180 = load %union.ccb*, %union.ccb** %11, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_13__*
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = load %union.ccb*, %union.ccb** %11, align 8
  %185 = bitcast %union.ccb* %184 to %struct.TYPE_13__*
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %189 = call i32 @scsiio_cdb_ptr(%struct.ccb_scsiio* %188)
  %190 = call i32 (i32, i8*, i8*, %union.ccb*, i32, ...) @isci_log_message(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), %union.ccb* %179, i32 %183, i32 %187, i32 %189)
  br label %254

191:                                              ; preds = %4, %4
  %192 = load i8*, i8** @FALSE, align 8
  store i8* %192, i8** %12, align 8
  br label %254

193:                                              ; preds = %4
  %194 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %195 = load %union.ccb*, %union.ccb** %11, align 8
  %196 = bitcast %union.ccb* %195 to %struct.TYPE_13__*
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = or i32 %198, %194
  store i32 %199, i32* %197, align 8
  br label %254

200:                                              ; preds = %4
  %201 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %202 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @cam_sim_path(i32 %203)
  %205 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %206 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @xpt_create_path(%struct.cam_path** %21, i32* null, i32 %204, i32 %207, i32 0)
  %209 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %20, i32 0, i32 2
  %210 = load %struct.cam_path*, %struct.cam_path** %21, align 8
  %211 = call i32 @xpt_setup_ccb(%struct.TYPE_11__* %209, %struct.cam_path* %210, i32 5)
  %212 = load i32, i32* @XPT_REL_SIMQ, align 4
  %213 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %20, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  %216 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %20, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @RELSIM_ADJUST_OPENINGS, align 4
  %219 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %20, i32 0, i32 1
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* %6, align 4
  %221 = call i32 @scif_remote_device_get_max_queue_depth(i32 %220)
  %222 = getelementptr inbounds %struct.ccb_relsim, %struct.ccb_relsim* %20, i32 0, i32 0
  store i32 %221, i32* %222, align 4
  %223 = bitcast %struct.ccb_relsim* %20 to %union.ccb*
  %224 = call i32 @xpt_action(%union.ccb* %223)
  %225 = load %struct.cam_path*, %struct.cam_path** %21, align 8
  %226 = call i32 @xpt_free_path(%struct.cam_path* %225)
  %227 = load i8*, i8** @FALSE, align 8
  store i8* %227, i8** %12, align 8
  br label %254

228:                                              ; preds = %4, %4, %4, %4, %4, %4
  br label %229

229:                                              ; preds = %4, %228
  %230 = load %union.ccb*, %union.ccb** %11, align 8
  %231 = bitcast %union.ccb* %230 to %struct.TYPE_13__*
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to %union.ccb*
  %236 = load %union.ccb*, %union.ccb** %11, align 8
  %237 = bitcast %union.ccb* %236 to %struct.TYPE_13__*
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %union.ccb*, %union.ccb** %11, align 8
  %241 = bitcast %union.ccb* %240 to %struct.TYPE_13__*
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %245 = call i32 @scsiio_cdb_ptr(%struct.ccb_scsiio* %244)
  %246 = load i32, i32* %8, align 4
  %247 = call i32 (i32, i8*, i8*, %union.ccb*, i32, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), %union.ccb* %235, i32 %239, i32 %243, i32 %245, i32 %246)
  %248 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %249 = load %union.ccb*, %union.ccb** %11, align 8
  %250 = bitcast %union.ccb* %249 to %struct.TYPE_13__*
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %248
  store i32 %253, i32* %251, align 8
  br label %254

254:                                              ; preds = %229, %200, %193, %191, %167, %141, %69, %50, %43
  %255 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %256 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = call i32 @callout_stop(i32* %257)
  %259 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %260 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %264 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %268 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %269 = or i32 %267, %268
  %270 = call i32 @bus_dmamap_sync(i32 %262, i32 %266, i32 %269)
  %271 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %272 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %276 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = call i32 @bus_dmamap_unload(i32 %274, i32 %278)
  %280 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %281 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %280, i32 0, i32 0
  store %union.ccb* null, %union.ccb** %281, align 8
  %282 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %283 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %7, align 8
  %286 = bitcast %struct.ISCI_IO_REQUEST* %285 to %struct.ISCI_REQUEST*
  %287 = call i32 @sci_pool_put(i32 %284, %struct.ISCI_REQUEST* %286)
  %288 = load i8*, i8** %12, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %369

290:                                              ; preds = %254
  %291 = load %union.ccb*, %union.ccb** %11, align 8
  %292 = bitcast %union.ccb* %291 to %struct.TYPE_13__*
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = load i32, i32* @CAM_STATUS_MASK, align 4
  %296 = and i32 %294, %295
  %297 = load i32, i32* @CAM_REQ_CMP, align 4
  %298 = icmp ne i32 %296, %297
  br i1 %298, label %299, label %311

299:                                              ; preds = %290
  %300 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %301 = load %union.ccb*, %union.ccb** %11, align 8
  %302 = bitcast %union.ccb* %301 to %struct.TYPE_13__*
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = or i32 %304, %300
  store i32 %305, i32* %303, align 8
  %306 = load %union.ccb*, %union.ccb** %11, align 8
  %307 = bitcast %union.ccb* %306 to %struct.TYPE_13__*
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = call i32 @xpt_freeze_devq(i32 %309, i32 1)
  br label %311

311:                                              ; preds = %299, %290
  %312 = load %union.ccb*, %union.ccb** %11, align 8
  %313 = bitcast %union.ccb* %312 to %struct.TYPE_13__*
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %342

319:                                              ; preds = %311
  %320 = load %union.ccb*, %union.ccb** %11, align 8
  %321 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %322 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %321, i32 0, i32 2
  %323 = load %union.ccb*, %union.ccb** %322, align 8
  %324 = icmp eq %union.ccb* %320, %323
  %325 = zext i1 %324 to i32
  %326 = call i32 @KASSERT(i32 %325, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %327 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %328 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %327, i32 0, i32 1
  %329 = load %union.ccb*, %union.ccb** %11, align 8
  %330 = bitcast %union.ccb* %329 to %struct.TYPE_13__*
  %331 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sim_links, i32 0, i32 0), align 4
  %332 = call i32 @TAILQ_REMOVE(i32* %328, %struct.TYPE_13__* %330, i32 %331)
  %333 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %334 = xor i32 %333, -1
  %335 = load %union.ccb*, %union.ccb** %11, align 8
  %336 = bitcast %union.ccb* %335 to %struct.TYPE_13__*
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = and i32 %338, %334
  store i32 %339, i32* %337, align 8
  %340 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %341 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %340, i32 0, i32 2
  store %union.ccb* null, %union.ccb** %341, align 8
  br label %342

342:                                              ; preds = %319, %311
  %343 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %344 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %342
  %348 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %349 = call i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE* %348)
  br label %350

350:                                              ; preds = %347, %342
  %351 = load %union.ccb*, %union.ccb** %11, align 8
  %352 = call i32 @xpt_done(%union.ccb* %351)
  %353 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %354 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @TRUE, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %368

358:                                              ; preds = %350
  %359 = load i8*, i8** @FALSE, align 8
  %360 = ptrtoint i8* %359 to i64
  %361 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %362 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %361, i32 0, i32 0
  store i64 %360, i64* %362, align 8
  %363 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %9, align 8
  %364 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 8
  %366 = load i64, i64* @TRUE, align 8
  %367 = call i32 @xpt_release_simq(i32 %365, i64 %366)
  br label %368

368:                                              ; preds = %358, %350
  br label %415

369:                                              ; preds = %254
  %370 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %371 = load %union.ccb*, %union.ccb** %11, align 8
  %372 = bitcast %union.ccb* %371 to %struct.TYPE_13__*
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @isci_remote_device_freeze_lun_queue(%struct.ISCI_REMOTE_DEVICE* %370, i32 %374)
  %376 = load %union.ccb*, %union.ccb** %11, align 8
  %377 = bitcast %union.ccb* %376 to %struct.TYPE_13__*
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %369
  %384 = load %union.ccb*, %union.ccb** %11, align 8
  %385 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %386 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %385, i32 0, i32 2
  %387 = load %union.ccb*, %union.ccb** %386, align 8
  %388 = icmp eq %union.ccb* %384, %387
  %389 = zext i1 %388 to i32
  %390 = call i32 @KASSERT(i32 %389, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %391 = load %union.ccb*, %union.ccb** %11, align 8
  %392 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %393 = call i32 @scsiio_cdb_ptr(%struct.ccb_scsiio* %392)
  %394 = call i32 (i32, i8*, i8*, %union.ccb*, i32, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), %union.ccb* %391, i32 %393)
  %395 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %396 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %395, i32 0, i32 2
  store %union.ccb* null, %union.ccb** %396, align 8
  br label %414

397:                                              ; preds = %369
  %398 = load %union.ccb*, %union.ccb** %11, align 8
  %399 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %13, align 8
  %400 = call i32 @scsiio_cdb_ptr(%struct.ccb_scsiio* %399)
  %401 = call i32 (i32, i8*, i8*, %union.ccb*, i32, ...) @isci_log_message(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), %union.ccb* %398, i32 %400)
  %402 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %403 = load %union.ccb*, %union.ccb** %11, align 8
  %404 = bitcast %union.ccb* %403 to %struct.TYPE_13__*
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = or i32 %406, %402
  store i32 %407, i32* %405, align 8
  %408 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %10, align 8
  %409 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %408, i32 0, i32 1
  %410 = load %union.ccb*, %union.ccb** %11, align 8
  %411 = bitcast %union.ccb* %410 to %struct.TYPE_13__*
  %412 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sim_links, i32 0, i32 0), align 4
  %413 = call i32 @TAILQ_INSERT_TAIL(i32* %409, %struct.TYPE_13__* %411, i32 %412)
  br label %414

414:                                              ; preds = %397, %383
  br label %415

415:                                              ; preds = %414, %368
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i64 @scif_io_request_get_number_of_bytes_transferred(i32) #1

declare dso_local i8* @scif_io_request_get_response_iu_address(i32) #1

declare dso_local i64 @sci_ssp_get_sense_data_length(i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @scsi_extract_sense(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @isci_log_message(i32, i8*, i8*, %union.ccb*, i32, ...) #1

declare dso_local i32 @scsiio_cdb_ptr(%struct.ccb_scsiio*) #1

declare dso_local i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE*, i32*) #1

declare dso_local i32 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_11__*, %struct.cam_path*, i32) #1

declare dso_local i32 @scif_remote_device_get_max_queue_depth(i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @sci_pool_put(i32, %struct.ISCI_REQUEST*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @isci_remote_device_release_device_queue(%struct.ISCI_REMOTE_DEVICE*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @xpt_release_simq(i32, i64) #1

declare dso_local i32 @isci_remote_device_freeze_lun_queue(%struct.ISCI_REMOTE_DEVICE*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
