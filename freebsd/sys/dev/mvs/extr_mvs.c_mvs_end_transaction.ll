; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_end_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_slot = type { i32, i32, %union.ccb*, i32, %struct.TYPE_13__, i32 }
%union.ccb = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32, i32, i64, i64, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.mvs_channel = type { i64, i64, i32, i32, i32, i32, i32, i64, i32*, i32, i32*, i32, i32, i64, %struct.TYPE_8__*, i32, %union.ccb*, i64, i32, %union.ccb**, i32, i32*, i32, i32*, %struct.TYPE_12__, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.ata_res = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.ata_res }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64, i64 }

@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@SCSI_STATUS_CHECK_COND = common dso_local global i32 0, align 4
@CAM_ATA_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@MVS_SLOT_EMPTY = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@CAM_ATAIO_DMA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RECOVERY_READ_LOG = common dso_local global i64 0, align 8
@RECOVERY_REQUEST_SENSE = common dso_local global i64 0, align 8
@CAM_DIS_AUTOSENSE = common dso_local global i32 0, align 4
@MVS_EDMA_OFF = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D_PMREQ = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_slot*, i32)* @mvs_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_end_transaction(%struct.mvs_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.mvs_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvs_channel*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_res*, align 8
  %10 = alloca %union.ccb*, align 8
  store %struct.mvs_slot* %0, %struct.mvs_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %12 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.mvs_channel* @device_get_softc(i32 %14)
  store %struct.mvs_channel* %15, %struct.mvs_channel** %6, align 8
  %16 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %17 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %16, i32 0, i32 2
  %18 = load %union.ccb*, %union.ccb** %17, align 8
  store %union.ccb* %18, %union.ccb** %7, align 8
  %19 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %20 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %19, i32 0, i32 24
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %24 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %23, i32 0, i32 24
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %28 = call i32 @bus_dmamap_sync(i32 %22, i32 %26, i32 %27)
  %29 = load %union.ccb*, %union.ccb** %7, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_14__*
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XPT_ATA_IO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %58

35:                                               ; preds = %2
  %36 = load %union.ccb*, %union.ccb** %7, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_10__*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  store %struct.ata_res* %38, %struct.ata_res** %9, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 129
  br i1 %40, label %50, label %41

41:                                               ; preds = %35
  %42 = load %union.ccb*, %union.ccb** %7, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %41, %35
  %51 = load i32, i32* %5, align 4
  %52 = load %union.ccb*, %union.ccb** %7, align 8
  %53 = call i32 @mvs_tfd_read(i32 %51, %union.ccb* %52)
  br label %57

54:                                               ; preds = %41
  %55 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %56 = call i32 @bzero(%struct.ata_res* %55, i32 4)
  br label %57

57:                                               ; preds = %54, %50
  br label %85

58:                                               ; preds = %2
  %59 = load %union.ccb*, %union.ccb** %7, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_14__*
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CAM_DIR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @CAM_DIR_NONE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %84

67:                                               ; preds = %58
  %68 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %69 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67
  %73 = load %union.ccb*, %union.ccb** %7, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_11__*
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %78 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %77, i32 0, i32 25
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  %81 = load %union.ccb*, %union.ccb** %7, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_11__*
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %72, %67, %58
  br label %85

85:                                               ; preds = %84, %57
  %86 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %87 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %85
  %91 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %92 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %137

95:                                               ; preds = %90, %85
  %96 = load %union.ccb*, %union.ccb** %7, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_14__*
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @CAM_DIR_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @CAM_DIR_NONE, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %136

104:                                              ; preds = %95
  %105 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %106 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %105, i32 0, i32 24
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %110 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %union.ccb*, %union.ccb** %7, align 8
  %114 = bitcast %union.ccb* %113 to %struct.TYPE_14__*
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @CAM_DIR_IN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %104
  %121 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %124

122:                                              ; preds = %104
  %123 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = call i32 @bus_dmamap_sync(i32 %108, i32 %112, i32 %125)
  %127 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %128 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %127, i32 0, i32 24
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %132 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @bus_dmamap_unload(i32 %130, i32 %134)
  br label %136

136:                                              ; preds = %124, %95
  br label %137

137:                                              ; preds = %136, %90
  %138 = load i32, i32* %4, align 4
  %139 = icmp ne i32 %138, 131
  br i1 %139, label %140, label %149

140:                                              ; preds = %137
  %141 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %142 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = shl i32 1, %143
  %145 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %146 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %140, %137
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 131
  br i1 %151, label %152, label %177

152:                                              ; preds = %149
  %153 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %154 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %153, i32 0, i32 18
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %177, label %157

157:                                              ; preds = %152
  %158 = load %union.ccb*, %union.ccb** %7, align 8
  %159 = bitcast %union.ccb* %158 to %struct.TYPE_14__*
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %177, label %165

165:                                              ; preds = %157
  %166 = load %union.ccb*, %union.ccb** %7, align 8
  %167 = bitcast %union.ccb* %166 to %struct.TYPE_14__*
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @xpt_freeze_devq(i32 %169, i32 1)
  %171 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %172 = load %union.ccb*, %union.ccb** %7, align 8
  %173 = bitcast %union.ccb* %172 to %struct.TYPE_14__*
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %171
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %165, %157, %152, %149
  %178 = load i32, i32* @CAM_STATUS_MASK, align 4
  %179 = xor i32 %178, -1
  %180 = load %union.ccb*, %union.ccb** %7, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_14__*
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %179
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %4, align 4
  switch i32 %185, label %309 [
    i32 131, label %186
    i32 133, label %205
    i32 134, label %214
    i32 129, label %221
    i32 132, label %221
    i32 130, label %247
    i32 128, label %279
  ]

186:                                              ; preds = %177
  %187 = load i32, i32* @CAM_REQ_CMP, align 4
  %188 = load %union.ccb*, %union.ccb** %7, align 8
  %189 = bitcast %union.ccb* %188 to %struct.TYPE_14__*
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %187
  store i32 %192, i32* %190, align 4
  %193 = load %union.ccb*, %union.ccb** %7, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_14__*
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @XPT_SCSI_IO, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %186
  %200 = load i32, i32* @SCSI_STATUS_OK, align 4
  %201 = load %union.ccb*, %union.ccb** %7, align 8
  %202 = bitcast %union.ccb* %201 to %struct.TYPE_11__*
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  store i32 %200, i32* %203, align 8
  br label %204

204:                                              ; preds = %199, %186
  br label %318

205:                                              ; preds = %177
  %206 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %207 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %206, i32 0, i32 3
  store i32 1, i32* %207, align 4
  %208 = load i32, i32* @CAM_REQ_INVALID, align 4
  %209 = load %union.ccb*, %union.ccb** %7, align 8
  %210 = bitcast %union.ccb* %209 to %struct.TYPE_14__*
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = or i32 %212, %208
  store i32 %213, i32* %211, align 4
  br label %318

214:                                              ; preds = %177
  %215 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %216 = load %union.ccb*, %union.ccb** %7, align 8
  %217 = bitcast %union.ccb* %216 to %struct.TYPE_14__*
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %215
  store i32 %220, i32* %218, align 4
  br label %318

221:                                              ; preds = %177, %177
  %222 = load %union.ccb*, %union.ccb** %7, align 8
  %223 = bitcast %union.ccb* %222 to %struct.TYPE_14__*
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @XPT_SCSI_IO, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %239

228:                                              ; preds = %221
  %229 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %230 = load %union.ccb*, %union.ccb** %7, align 8
  %231 = bitcast %union.ccb* %230 to %struct.TYPE_14__*
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %229
  store i32 %234, i32* %232, align 4
  %235 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %236 = load %union.ccb*, %union.ccb** %7, align 8
  %237 = bitcast %union.ccb* %236 to %struct.TYPE_11__*
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  store i32 %235, i32* %238, align 8
  br label %246

239:                                              ; preds = %221
  %240 = load i32, i32* @CAM_ATA_STATUS_ERROR, align 4
  %241 = load %union.ccb*, %union.ccb** %7, align 8
  %242 = bitcast %union.ccb* %241 to %struct.TYPE_14__*
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %240
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %239, %228
  br label %318

247:                                              ; preds = %177
  %248 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %249 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %248, i32 0, i32 3
  store i32 1, i32* %249, align 4
  %250 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %251 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %250, i32 0, i32 18
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %272, label %254

254:                                              ; preds = %247
  %255 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %256 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %255, i32 0, i32 15
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @xpt_freeze_simq(i32 %257, i32 1)
  %259 = load i32, i32* @CAM_STATUS_MASK, align 4
  %260 = xor i32 %259, -1
  %261 = load %union.ccb*, %union.ccb** %7, align 8
  %262 = bitcast %union.ccb* %261 to %struct.TYPE_14__*
  %263 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, %260
  store i32 %265, i32* %263, align 4
  %266 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %267 = load %union.ccb*, %union.ccb** %7, align 8
  %268 = bitcast %union.ccb* %267 to %struct.TYPE_14__*
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %266
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %254, %247
  %273 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %274 = load %union.ccb*, %union.ccb** %7, align 8
  %275 = bitcast %union.ccb* %274 to %struct.TYPE_14__*
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %273
  store i32 %278, i32* %276, align 4
  br label %318

279:                                              ; preds = %177
  %280 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %281 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %280, i32 0, i32 18
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %302, label %284

284:                                              ; preds = %279
  %285 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %286 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %285, i32 0, i32 15
  %287 = load i32, i32* %286, align 8
  %288 = call i32 @xpt_freeze_simq(i32 %287, i32 1)
  %289 = load i32, i32* @CAM_STATUS_MASK, align 4
  %290 = xor i32 %289, -1
  %291 = load %union.ccb*, %union.ccb** %7, align 8
  %292 = bitcast %union.ccb* %291 to %struct.TYPE_14__*
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, %290
  store i32 %295, i32* %293, align 4
  %296 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %297 = load %union.ccb*, %union.ccb** %7, align 8
  %298 = bitcast %union.ccb* %297 to %struct.TYPE_14__*
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %296
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %284, %279
  %303 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %304 = load %union.ccb*, %union.ccb** %7, align 8
  %305 = bitcast %union.ccb* %304 to %struct.TYPE_14__*
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = or i32 %307, %303
  store i32 %308, i32* %306, align 4
  br label %318

309:                                              ; preds = %177
  %310 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %311 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %310, i32 0, i32 3
  store i32 1, i32* %311, align 4
  %312 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %313 = load %union.ccb*, %union.ccb** %7, align 8
  %314 = bitcast %union.ccb* %313 to %struct.TYPE_14__*
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %312
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %309, %302, %272, %246, %214, %205, %204
  %319 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %320 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = shl i32 1, %321
  %323 = xor i32 %322, -1
  %324 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %325 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = and i32 %326, %323
  store i32 %327, i32* %325, align 8
  %328 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %329 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = shl i32 1, %330
  %332 = xor i32 %331, -1
  %333 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %334 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = and i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %338 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = shl i32 1, %339
  %341 = xor i32 %340, -1
  %342 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %343 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 8
  %345 = and i32 %344, %341
  store i32 %345, i32* %343, align 8
  %346 = load i32, i32* @MVS_SLOT_EMPTY, align 4
  %347 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %348 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %347, i32 0, i32 3
  store i32 %346, i32* %348, align 8
  %349 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %350 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %349, i32 0, i32 2
  store %union.ccb* null, %union.ccb** %350, align 8
  %351 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %352 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %351, i32 0, i32 7
  %353 = load i64, i64* %352, align 8
  %354 = add nsw i64 %353, -1
  store i64 %354, i64* %352, align 8
  %355 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %356 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %355, i32 0, i32 23
  %357 = load i32*, i32** %356, align 8
  %358 = load %union.ccb*, %union.ccb** %7, align 8
  %359 = bitcast %union.ccb* %358 to %struct.TYPE_14__*
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = getelementptr inbounds i32, i32* %357, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = add nsw i32 %363, -1
  store i32 %364, i32* %362, align 4
  %365 = load %union.ccb*, %union.ccb** %7, align 8
  %366 = bitcast %union.ccb* %365 to %struct.TYPE_14__*
  %367 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @XPT_ATA_IO, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %431

371:                                              ; preds = %318
  %372 = load %union.ccb*, %union.ccb** %7, align 8
  %373 = bitcast %union.ccb* %372 to %struct.TYPE_10__*
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %378 = and i32 %376, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %410

380:                                              ; preds = %371
  %381 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %382 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = shl i32 1, %383
  %385 = xor i32 %384, -1
  %386 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %387 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %386, i32 0, i32 8
  %388 = load i32*, i32** %387, align 8
  %389 = load %union.ccb*, %union.ccb** %7, align 8
  %390 = bitcast %union.ccb* %389 to %struct.TYPE_14__*
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 3
  %392 = load i64, i64* %391, align 8
  %393 = getelementptr inbounds i32, i32* %388, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = and i32 %394, %385
  store i32 %395, i32* %393, align 4
  %396 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %397 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %396, i32 0, i32 22
  %398 = load i32, i32* %397, align 8
  %399 = add nsw i32 %398, -1
  store i32 %399, i32* %397, align 8
  %400 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %401 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %400, i32 0, i32 21
  %402 = load i32*, i32** %401, align 8
  %403 = load %union.ccb*, %union.ccb** %7, align 8
  %404 = bitcast %union.ccb* %403 to %struct.TYPE_14__*
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = getelementptr inbounds i32, i32* %402, i64 %406
  %408 = load i32, i32* %407, align 4
  %409 = add nsw i32 %408, -1
  store i32 %409, i32* %407, align 4
  br label %430

410:                                              ; preds = %371
  %411 = load %union.ccb*, %union.ccb** %7, align 8
  %412 = bitcast %union.ccb* %411 to %struct.TYPE_10__*
  %413 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @CAM_ATAIO_DMA, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %424

419:                                              ; preds = %410
  %420 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %421 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %420, i32 0, i32 20
  %422 = load i32, i32* %421, align 8
  %423 = add nsw i32 %422, -1
  store i32 %423, i32* %421, align 8
  br label %429

424:                                              ; preds = %410
  %425 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %426 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %425, i32 0, i32 1
  %427 = load i64, i64* %426, align 8
  %428 = add nsw i64 %427, -1
  store i64 %428, i64* %426, align 8
  br label %429

429:                                              ; preds = %424, %419
  br label %430

430:                                              ; preds = %429, %380
  br label %438

431:                                              ; preds = %318
  %432 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %433 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = add nsw i64 %434, -1
  store i64 %435, i64* %433, align 8
  %436 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %437 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %436, i32 0, i32 0
  store i64 0, i64* %437, align 8
  br label %438

438:                                              ; preds = %431, %430
  %439 = load i32, i32* %4, align 4
  %440 = icmp ne i32 %439, 128
  br i1 %440, label %441, label %469

441:                                              ; preds = %438
  %442 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %443 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %442, i32 0, i32 9
  %444 = load i32, i32* %443, align 8
  %445 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %446 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  %448 = shl i32 1, %447
  %449 = icmp eq i32 %444, %448
  %450 = zext i1 %449 to i32
  store i32 %450, i32* %8, align 4
  %451 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %452 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = shl i32 1, %453
  %455 = xor i32 %454, -1
  %456 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %457 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %456, i32 0, i32 9
  %458 = load i32, i32* %457, align 8
  %459 = and i32 %458, %455
  store i32 %459, i32* %457, align 8
  %460 = load i32, i32* %8, align 4
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %468

462:                                              ; preds = %441
  %463 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %464 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %463, i32 0, i32 15
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @TRUE, align 4
  %467 = call i32 @xpt_release_simq(i32 %465, i32 %466)
  br label %468

468:                                              ; preds = %462, %441
  br label %469

469:                                              ; preds = %468, %438
  %470 = load %union.ccb*, %union.ccb** %7, align 8
  %471 = bitcast %union.ccb* %470 to %struct.TYPE_14__*
  %472 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %471, i32 0, i32 4
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @RECOVERY_READ_LOG, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %480

476:                                              ; preds = %469
  %477 = load i32, i32* %5, align 4
  %478 = load %union.ccb*, %union.ccb** %7, align 8
  %479 = call i32 @mvs_process_read_log(i32 %477, %union.ccb* %478)
  br label %541

480:                                              ; preds = %469
  %481 = load %union.ccb*, %union.ccb** %7, align 8
  %482 = bitcast %union.ccb* %481 to %struct.TYPE_14__*
  %483 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %482, i32 0, i32 4
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @RECOVERY_REQUEST_SENSE, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %480
  %488 = load i32, i32* %5, align 4
  %489 = load %union.ccb*, %union.ccb** %7, align 8
  %490 = call i32 @mvs_process_request_sense(i32 %488, %union.ccb* %489)
  br label %540

491:                                              ; preds = %480
  %492 = load i32, i32* %4, align 4
  %493 = icmp eq i32 %492, 132
  br i1 %493, label %511, label %494

494:                                              ; preds = %491
  %495 = load %union.ccb*, %union.ccb** %7, align 8
  %496 = bitcast %union.ccb* %495 to %struct.TYPE_14__*
  %497 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %496, i32 0, i32 2
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @CAM_STATUS_MASK, align 4
  %500 = and i32 %498, %499
  %501 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %502 = icmp eq i32 %500, %501
  br i1 %502, label %503, label %536

503:                                              ; preds = %494
  %504 = load %union.ccb*, %union.ccb** %7, align 8
  %505 = bitcast %union.ccb* %504 to %struct.TYPE_14__*
  %506 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* @CAM_DIS_AUTOSENSE, align 4
  %509 = and i32 %507, %508
  %510 = icmp eq i32 %509, 0
  br i1 %510, label %511, label %536

511:                                              ; preds = %503, %491
  %512 = load %union.ccb*, %union.ccb** %7, align 8
  %513 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %514 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %513, i32 0, i32 19
  %515 = load %union.ccb**, %union.ccb*** %514, align 8
  %516 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %517 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %union.ccb*, %union.ccb** %515, i64 %519
  store %union.ccb* %512, %union.ccb** %520, align 8
  %521 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %522 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %521, i32 0, i32 1
  %523 = load i32, i32* %522, align 4
  %524 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %525 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %524, i32 0, i32 10
  %526 = load i32*, i32** %525, align 8
  %527 = load %struct.mvs_slot*, %struct.mvs_slot** %3, align 8
  %528 = getelementptr inbounds %struct.mvs_slot, %struct.mvs_slot* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %526, i64 %530
  store i32 %523, i32* %531, align 4
  %532 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %533 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %532, i32 0, i32 17
  %534 = load i64, i64* %533, align 8
  %535 = add nsw i64 %534, 1
  store i64 %535, i64* %533, align 8
  br label %539

536:                                              ; preds = %503, %494
  %537 = load %union.ccb*, %union.ccb** %7, align 8
  %538 = call i32 @xpt_done(%union.ccb* %537)
  br label %539

539:                                              ; preds = %536, %511
  br label %540

540:                                              ; preds = %539, %487
  br label %541

541:                                              ; preds = %540, %476
  %542 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %543 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %542, i32 0, i32 5
  %544 = load i32, i32* %543, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %585

546:                                              ; preds = %541
  %547 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %548 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %547, i32 0, i32 9
  %549 = load i32, i32* %548, align 8
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %556, label %551

551:                                              ; preds = %546
  %552 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %553 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %552, i32 0, i32 3
  %554 = load i32, i32* %553, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %551, %546
  %557 = load i32, i32* %5, align 4
  %558 = call i32 @mvs_reset(i32 %557)
  br label %584

559:                                              ; preds = %551
  %560 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %561 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %560, i32 0, i32 2
  %562 = load i32, i32* %561, align 8
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %570

564:                                              ; preds = %559
  %565 = load i32, i32* %5, align 4
  %566 = load i32, i32* @MVS_EDMA_OFF, align 4
  %567 = call i32 @mvs_set_edma_mode(i32 %565, i32 %566)
  %568 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %569 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %568, i32 0, i32 2
  store i32 0, i32* %569, align 8
  br label %570

570:                                              ; preds = %564, %559
  %571 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %572 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %571, i32 0, i32 18
  %573 = load i32, i32* %572, align 8
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %583, label %575

575:                                              ; preds = %570
  %576 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %577 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %576, i32 0, i32 17
  %578 = load i64, i64* %577, align 8
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %583

580:                                              ; preds = %575
  %581 = load i32, i32* %5, align 4
  %582 = call i32 @mvs_issue_recovery(i32 %581)
  br label %583

583:                                              ; preds = %580, %575, %570
  br label %584

584:                                              ; preds = %583, %556
  br label %602

585:                                              ; preds = %541
  %586 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %587 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %586, i32 0, i32 5
  %588 = load i32, i32* %587, align 4
  %589 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %590 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %589, i32 0, i32 9
  %591 = load i32, i32* %590, align 8
  %592 = xor i32 %591, -1
  %593 = and i32 %588, %592
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %595, label %601

595:                                              ; preds = %585
  %596 = load i32, i32* %4, align 4
  %597 = icmp ne i32 %596, 128
  br i1 %597, label %598, label %601

598:                                              ; preds = %595
  %599 = load i32, i32* %5, align 4
  %600 = call i32 @mvs_rearm_timeout(i32 %599)
  br label %601

601:                                              ; preds = %598, %595, %585
  br label %602

602:                                              ; preds = %601, %584
  %603 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %604 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %603, i32 0, i32 16
  %605 = load %union.ccb*, %union.ccb** %604, align 8
  %606 = icmp ne %union.ccb* %605, null
  br i1 %606, label %607, label %628

607:                                              ; preds = %602
  %608 = load i32, i32* %5, align 4
  %609 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %610 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %609, i32 0, i32 16
  %611 = load %union.ccb*, %union.ccb** %610, align 8
  %612 = call i32 @mvs_check_collision(i32 %608, %union.ccb* %611)
  %613 = icmp ne i32 %612, 0
  br i1 %613, label %628, label %614

614:                                              ; preds = %607
  %615 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %616 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %615, i32 0, i32 16
  %617 = load %union.ccb*, %union.ccb** %616, align 8
  store %union.ccb* %617, %union.ccb** %10, align 8
  %618 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %619 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %618, i32 0, i32 16
  store %union.ccb* null, %union.ccb** %619, align 8
  %620 = load i32, i32* %5, align 4
  %621 = load %union.ccb*, %union.ccb** %10, align 8
  %622 = call i32 @mvs_begin_transaction(i32 %620, %union.ccb* %621)
  %623 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %624 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %623, i32 0, i32 15
  %625 = load i32, i32* %624, align 8
  %626 = load i32, i32* @TRUE, align 4
  %627 = call i32 @xpt_release_simq(i32 %625, i32 %626)
  br label %628

628:                                              ; preds = %614, %607, %602
  %629 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %630 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %629, i32 0, i32 7
  %631 = load i64, i64* %630, align 8
  %632 = icmp eq i64 %631, 0
  br i1 %632, label %633, label %671

633:                                              ; preds = %628
  %634 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %635 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %634, i32 0, i32 11
  %636 = load i32, i32* %635, align 8
  %637 = icmp sgt i32 %636, 3
  br i1 %637, label %638, label %671

638:                                              ; preds = %633
  %639 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %640 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %639, i32 0, i32 14
  %641 = load %struct.TYPE_8__*, %struct.TYPE_8__** %640, align 8
  %642 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %643 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %642, i32 0, i32 13
  %644 = load i64, i64* %643, align 8
  %645 = icmp ne i64 %644, 0
  %646 = zext i1 %645 to i64
  %647 = select i1 %645, i32 15, i32 0
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %641, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %649, i32 0, i32 0
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* @CTS_SATA_CAPS_D_PMREQ, align 4
  %653 = and i32 %651, %652
  %654 = icmp ne i32 %653, 0
  br i1 %654, label %655, label %671

655:                                              ; preds = %638
  %656 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %657 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %656, i32 0, i32 12
  %658 = load %struct.mvs_channel*, %struct.mvs_channel** %6, align 8
  %659 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %658, i32 0, i32 11
  %660 = load i32, i32* %659, align 8
  %661 = icmp eq i32 %660, 4
  br i1 %661, label %662, label %665

662:                                              ; preds = %655
  %663 = load i32, i32* @hz, align 4
  %664 = sdiv i32 %663, 1000
  br label %668

665:                                              ; preds = %655
  %666 = load i32, i32* @hz, align 4
  %667 = sdiv i32 %666, 8
  br label %668

668:                                              ; preds = %665, %662
  %669 = phi i32 [ %664, %662 ], [ %667, %665 ]
  %670 = call i32 @callout_schedule(i32* %657, i32 %669)
  br label %671

671:                                              ; preds = %668, %638, %633, %628
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @mvs_tfd_read(i32, %union.ccb*) #1

declare dso_local i32 @bzero(%struct.ata_res*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @mvs_process_read_log(i32, %union.ccb*) #1

declare dso_local i32 @mvs_process_request_sense(i32, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mvs_reset(i32) #1

declare dso_local i32 @mvs_set_edma_mode(i32, i32) #1

declare dso_local i32 @mvs_issue_recovery(i32) #1

declare dso_local i32 @mvs_rearm_timeout(i32) #1

declare dso_local i32 @mvs_check_collision(i32, %union.ccb*) #1

declare dso_local i32 @mvs_begin_transaction(i32, %union.ccb*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
