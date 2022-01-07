; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_reply_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_scsi_reply_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32 }
%struct.TYPE_11__ = type { i32, %union.ccb* }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@MPI_FUNCTION_SCSI_IO_REQUEST = common dso_local global i64 0, align 8
@MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"MPT SCSI I/O Handler called with incorrect reply type\00", align 1
@MPI_MSGFLAGS_CONTINUATION_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"MPT SCSI I/O Handler called with continuation reply\00", align 1
@MPI_IOCSTATUS_MASK = common dso_local global i32 0, align 4
@MPI_SCSI_STATE_AUTOSENSE_VALID = common dso_local global i32 0, align 4
@CAM_SENSE_PHYS = common dso_local global i32 0, align 4
@CAM_SENSE_PTR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@MPI_SCSI_STATE_QUEUE_TAG_REJECTED = common dso_local global i32 0, align 4
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@MPI_SCSI_STATE_NO_SCSI_STATUS = common dso_local global i32 0, align 4
@CAM_UNEXP_BUSFREE = common dso_local global i32 0, align 4
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@MPI_SCSI_STATE_AUTOSENSE_FAILED = common dso_local global i32 0, align 4
@CAM_AUTOSENSE_FAIL = common dso_local global i32 0, align 4
@MPI_SCSI_STATE_RESPONSE_INFO_VALID = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CAM_SEQUENCE_FAIL = common dso_local global i32 0, align 4
@CAM_PATH_INVALID = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i32 0, align 4
@CAM_UA_TERMIO = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@CAM_REQ_TERMIO = common dso_local global i32 0, align 4
@CAM_RESRC_UNAVAIL = common dso_local global i32 0, align 4
@CAM_BUSY = common dso_local global i32 0, align 4
@CAM_UNREC_HBA_ERROR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*, %struct.TYPE_11__*, %struct.TYPE_13__*)* @mpt_scsi_reply_frame_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_scsi_reply_frame_handler(%struct.mpt_softc* %0, %struct.TYPE_11__* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.mpt_softc*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.mpt_softc* %0, %struct.mpt_softc** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %12 = load %struct.mpt_softc*, %struct.mpt_softc** %4, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = call i32 @MPT_DUMP_REPLY_FRAME(%struct.mpt_softc* %12, %struct.TYPE_13__* %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MPI_FUNCTION_SCSI_IO_REQUEST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MPI_FUNCTION_RAID_SCSI_IO_PASSTHROUGH, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i1 [ true, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @KASSERT(i32 %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MPI_MSGFLAGS_CONTINUATION_REPLY, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = bitcast %struct.TYPE_13__* %38 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %8, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16toh(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @MPI_IOCSTATUS_MASK, align 4
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load %union.ccb*, %union.ccb** %51, align 8
  store %union.ccb* %52, %union.ccb** %7, align 8
  %53 = load %union.ccb*, %union.ccb** %7, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_9__*
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le32toh(i32 %59)
  %61 = sub nsw i64 %56, %60
  %62 = load %union.ccb*, %union.ccb** %7, align 8
  %63 = bitcast %union.ccb* %62 to %struct.TYPE_9__*
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 5
  store i64 %61, i64* %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @MPI_SCSI_STATE_AUTOSENSE_VALID, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %128

69:                                               ; preds = %26
  %70 = load %union.ccb*, %union.ccb** %7, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CAM_SENSE_PHYS, align 4
  %75 = load i32, i32* @CAM_SENSE_PTR, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %128

79:                                               ; preds = %69
  %80 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %81 = load %union.ccb*, %union.ccb** %7, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_10__*
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %80
  store i32 %85, i32* %83, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = call i64 @le32toh(i32 %88)
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %union.ccb*, %union.ccb** %7, align 8
  %92 = bitcast %union.ccb* %91 to %struct.TYPE_9__*
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %90, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %79
  %97 = load %union.ccb*, %union.ccb** %7, align 8
  %98 = bitcast %union.ccb* %97 to %struct.TYPE_9__*
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load %union.ccb*, %union.ccb** %7, align 8
  %104 = bitcast %union.ccb* %103 to %struct.TYPE_9__*
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 4
  store i64 %102, i64* %105, align 8
  br label %110

106:                                              ; preds = %79
  %107 = load %union.ccb*, %union.ccb** %7, align 8
  %108 = bitcast %union.ccb* %107 to %struct.TYPE_9__*
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  br label %110

110:                                              ; preds = %106, %96
  %111 = load %union.ccb*, %union.ccb** %7, align 8
  %112 = bitcast %union.ccb* %111 to %struct.TYPE_9__*
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 3
  %114 = call i32 @bzero(i32* %113, i32 4)
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %union.ccb*, %union.ccb** %7, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_9__*
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 3
  %121 = load %union.ccb*, %union.ccb** %7, align 8
  %122 = bitcast %union.ccb* %121 to %struct.TYPE_9__*
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @min(i64 %124, i64 %125)
  %127 = call i32 @bcopy(i32 %117, i32* %120, i32 %126)
  br label %128

128:                                              ; preds = %110, %69, %26
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @MPI_SCSI_STATE_QUEUE_TAG_REJECTED, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %134

134:                                              ; preds = %133, %128
  %135 = load i32, i32* %9, align 4
  switch i32 %135, label %253 [
    i32 131, label %136
    i32 140, label %146
    i32 128, label %146
    i32 132, label %146
    i32 141, label %196
    i32 134, label %200
    i32 139, label %204
    i32 133, label %208
    i32 137, label %212
    i32 136, label %216
    i32 130, label %220
    i32 142, label %225
    i32 138, label %225
    i32 129, label %230
    i32 135, label %230
    i32 147, label %244
    i32 148, label %248
    i32 144, label %252
    i32 143, label %252
    i32 146, label %252
    i32 145, label %252
  ]

136:                                              ; preds = %134
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %union.ccb*, %union.ccb** %7, align 8
  %143 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %144 = call i32 @mpt_set_ccb_status(%union.ccb* %142, i32 %143)
  br label %258

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %134, %134, %134, %145
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @MPI_SCSI_STATE_NO_SCSI_STATUS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = load %union.ccb*, %union.ccb** %7, align 8
  %153 = load i32, i32* @CAM_UNEXP_BUSFREE, align 4
  %154 = call i32 @mpt_set_ccb_status(%union.ccb* %152, i32 %153)
  br label %195

155:                                              ; preds = %146
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @SCSI_STATUS_OK, align 4
  %160 = icmp ne i32 %158, %159
  br i1 %160, label %161, label %180

161:                                              ; preds = %155
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %union.ccb*, %union.ccb** %7, align 8
  %166 = bitcast %union.ccb* %165 to %struct.TYPE_9__*
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  store i32 %164, i32* %167, align 8
  %168 = load %union.ccb*, %union.ccb** %7, align 8
  %169 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %170 = call i32 @mpt_set_ccb_status(%union.ccb* %168, i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @MPI_SCSI_STATE_AUTOSENSE_FAILED, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %161
  %176 = load %union.ccb*, %union.ccb** %7, align 8
  %177 = load i32, i32* @CAM_AUTOSENSE_FAIL, align 4
  %178 = call i32 @mpt_set_ccb_status(%union.ccb* %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %161
  br label %194

180:                                              ; preds = %155
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @MPI_SCSI_STATE_RESPONSE_INFO_VALID, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = load %union.ccb*, %union.ccb** %7, align 8
  %187 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %188 = call i32 @mpt_set_ccb_status(%union.ccb* %186, i32 %187)
  br label %193

189:                                              ; preds = %180
  %190 = load %union.ccb*, %union.ccb** %7, align 8
  %191 = load i32, i32* @CAM_REQ_CMP, align 4
  %192 = call i32 @mpt_set_ccb_status(%union.ccb* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %185
  br label %194

194:                                              ; preds = %193, %179
  br label %195

195:                                              ; preds = %194, %151
  br label %258

196:                                              ; preds = %134
  %197 = load %union.ccb*, %union.ccb** %7, align 8
  %198 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  %199 = call i32 @mpt_set_ccb_status(%union.ccb* %197, i32 %198)
  br label %258

200:                                              ; preds = %134
  %201 = load %union.ccb*, %union.ccb** %7, align 8
  %202 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %203 = call i32 @mpt_set_ccb_status(%union.ccb* %201, i32 %202)
  br label %258

204:                                              ; preds = %134
  %205 = load %union.ccb*, %union.ccb** %7, align 8
  %206 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %207 = call i32 @mpt_set_ccb_status(%union.ccb* %205, i32 %206)
  br label %258

208:                                              ; preds = %134
  %209 = load %union.ccb*, %union.ccb** %7, align 8
  %210 = load i32, i32* @CAM_SEQUENCE_FAIL, align 4
  %211 = call i32 @mpt_set_ccb_status(%union.ccb* %209, i32 %210)
  br label %258

212:                                              ; preds = %134
  %213 = load %union.ccb*, %union.ccb** %7, align 8
  %214 = load i32, i32* @CAM_PATH_INVALID, align 4
  %215 = call i32 @mpt_set_ccb_status(%union.ccb* %213, i32 %214)
  br label %258

216:                                              ; preds = %134
  %217 = load %union.ccb*, %union.ccb** %7, align 8
  %218 = load i32, i32* @CAM_TID_INVALID, align 4
  %219 = call i32 @mpt_set_ccb_status(%union.ccb* %217, i32 %218)
  br label %258

220:                                              ; preds = %134
  %221 = load i32, i32* @CAM_UA_TERMIO, align 4
  %222 = load %union.ccb*, %union.ccb** %7, align 8
  %223 = bitcast %union.ccb* %222 to %struct.TYPE_10__*
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  store i32 %221, i32* %224, align 4
  br label %258

225:                                              ; preds = %134, %134
  %226 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %227 = load %union.ccb*, %union.ccb** %7, align 8
  %228 = bitcast %union.ccb* %227 to %struct.TYPE_10__*
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 1
  store i32 %226, i32* %229, align 4
  br label %258

230:                                              ; preds = %134, %134
  %231 = load %union.ccb*, %union.ccb** %7, align 8
  %232 = bitcast %union.ccb* %231 to %struct.TYPE_10__*
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @CAM_STATUS_MASK, align 4
  %236 = and i32 %234, %235
  %237 = load i32, i32* @CAM_REQ_INPROG, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %230
  br label %258

240:                                              ; preds = %230
  %241 = load %union.ccb*, %union.ccb** %7, align 8
  %242 = load i32, i32* @CAM_REQ_TERMIO, align 4
  %243 = call i32 @mpt_set_ccb_status(%union.ccb* %241, i32 %242)
  br label %258

244:                                              ; preds = %134
  %245 = load %union.ccb*, %union.ccb** %7, align 8
  %246 = load i32, i32* @CAM_RESRC_UNAVAIL, align 4
  %247 = call i32 @mpt_set_ccb_status(%union.ccb* %245, i32 %246)
  br label %258

248:                                              ; preds = %134
  %249 = load %union.ccb*, %union.ccb** %7, align 8
  %250 = load i32, i32* @CAM_BUSY, align 4
  %251 = call i32 @mpt_set_ccb_status(%union.ccb* %249, i32 %250)
  br label %258

252:                                              ; preds = %134, %134, %134, %134
  br label %253

253:                                              ; preds = %134, %252
  %254 = load i32, i32* @CAM_UNREC_HBA_ERROR, align 4
  %255 = load %union.ccb*, %union.ccb** %7, align 8
  %256 = bitcast %union.ccb* %255 to %struct.TYPE_10__*
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 1
  store i32 %254, i32* %257, align 4
  br label %258

258:                                              ; preds = %253, %248, %244, %240, %239, %225, %220, %216, %212, %208, %204, %200, %196, %195, %141
  %259 = load %union.ccb*, %union.ccb** %7, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_10__*
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @CAM_STATUS_MASK, align 4
  %264 = and i32 %262, %263
  %265 = load i32, i32* @CAM_REQ_CMP, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %258
  %268 = load %union.ccb*, %union.ccb** %7, align 8
  %269 = call i32 @mpt_freeze_ccb(%union.ccb* %268)
  br label %270

270:                                              ; preds = %267, %258
  %271 = load i32, i32* @TRUE, align 4
  ret i32 %271
}

declare dso_local i32 @MPT_DUMP_REPLY_FRAME(%struct.mpt_softc*, %struct.TYPE_13__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i64 @le32toh(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @mpt_set_ccb_status(%union.ccb*, i32) #1

declare dso_local i32 @mpt_freeze_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
