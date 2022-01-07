; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_end_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_end_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_slot = type { i32, %union.ccb*, i32, %struct.TYPE_7__, i32 }
%union.ccb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_11__, i8*, %struct.ata_res }
%struct.TYPE_11__ = type { i32 }
%struct.ata_res = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.siis_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, %union.ccb*, i64, i32, %union.ccb**, i32*, i64, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i8*, i32, i8* }

@MA_OWNED = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_NEEDRESULT = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
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
@CAM_UNCOR_PARITY = common dso_local global i32 0, align 4
@CAM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@SIIS_SLOT_EMPTY = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RECOVERY_READ_LOG = common dso_local global i64 0, align 8
@RECOVERY_REQUEST_SENSE = common dso_local global i64 0, align 8
@CAM_DIS_AUTOSENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siis_slot*, i32)* @siis_end_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_end_transaction(%struct.siis_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.siis_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.siis_channel*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.ccb*, align 8
  store %struct.siis_slot* %0, %struct.siis_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %13 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.siis_channel* @device_get_softc(i32 %15)
  store %struct.siis_channel* %16, %struct.siis_channel** %6, align 8
  %17 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %18 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %17, i32 0, i32 1
  %19 = load %union.ccb*, %union.ccb** %18, align 8
  store %union.ccb* %19, %union.ccb** %7, align 8
  %20 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %21 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %20, i32 0, i32 16
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @mtx_assert(i32* %21, i32 %22)
  %24 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %25 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %24, i32 0, i32 14
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %29 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %28, i32 0, i32 14
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %33 = call i32 @bus_dmamap_sync(i32 %27, i32 %31, i32 %32)
  %34 = load %union.ccb*, %union.ccb** %7, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_10__*
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @XPT_ATA_IO, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %188

40:                                               ; preds = %2
  %41 = load %union.ccb*, %union.ccb** %7, align 8
  %42 = bitcast %union.ccb* %41 to %struct.TYPE_12__*
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 3
  store %struct.ata_res* %43, %struct.ata_res** %9, align 8
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 129
  br i1 %45, label %55, label %46

46:                                               ; preds = %40
  %47 = load %union.ccb*, %union.ccb** %7, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_12__*
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CAM_ATAIO_NEEDRESULT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %149

55:                                               ; preds = %46, %40
  %56 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %57 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @SIIS_P_LRAM_SLOT(i32 %58)
  %60 = add nsw i32 %59, 8
  store i32 %60, i32* %10, align 4
  %61 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %62 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %61, i32 0, i32 15
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 2
  %66 = call i8* @ATA_INB(i32 %63, i32 %65)
  %67 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %68 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %67, i32 0, i32 10
  store i8* %66, i8** %68, align 8
  %69 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %70 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %69, i32 0, i32 15
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 3
  %74 = call i8* @ATA_INB(i32 %71, i32 %73)
  %75 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %76 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %78 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %77, i32 0, i32 15
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 4
  %82 = call i8* @ATA_INB(i32 %79, i32 %81)
  %83 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %84 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %86 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %85, i32 0, i32 15
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 5
  %90 = call i8* @ATA_INB(i32 %87, i32 %89)
  %91 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %92 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %91, i32 0, i32 7
  store i8* %90, i8** %92, align 8
  %93 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %94 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %93, i32 0, i32 15
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 6
  %98 = call i8* @ATA_INB(i32 %95, i32 %97)
  %99 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %100 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %102 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %101, i32 0, i32 15
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 7
  %106 = call i8* @ATA_INB(i32 %103, i32 %105)
  %107 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %108 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %107, i32 0, i32 5
  store i8* %106, i8** %108, align 8
  %109 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %110 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %109, i32 0, i32 15
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 8
  %114 = call i8* @ATA_INB(i32 %111, i32 %113)
  %115 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %116 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %115, i32 0, i32 4
  store i8* %114, i8** %116, align 8
  %117 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %118 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 9
  %122 = call i8* @ATA_INB(i32 %119, i32 %121)
  %123 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %124 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %126 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %125, i32 0, i32 15
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = add nsw i32 %128, 10
  %130 = call i8* @ATA_INB(i32 %127, i32 %129)
  %131 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %132 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %131, i32 0, i32 2
  store i8* %130, i8** %132, align 8
  %133 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %134 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %133, i32 0, i32 15
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 12
  %138 = call i8* @ATA_INB(i32 %135, i32 %137)
  %139 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %140 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %142 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %141, i32 0, i32 15
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 13
  %146 = call i8* @ATA_INB(i32 %143, i32 %145)
  %147 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %148 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %152

149:                                              ; preds = %46
  %150 = load %struct.ata_res*, %struct.ata_res** %9, align 8
  %151 = call i32 @bzero(%struct.ata_res* %150, i32 88)
  br label %152

152:                                              ; preds = %149, %55
  %153 = load %union.ccb*, %union.ccb** %7, align 8
  %154 = bitcast %union.ccb* %153 to %struct.TYPE_10__*
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @CAM_DIR_MASK, align 4
  %158 = and i32 %156, %157
  %159 = load i32, i32* @CAM_DIR_IN, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %187

161:                                              ; preds = %152
  %162 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %163 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %187

166:                                              ; preds = %161
  %167 = load %union.ccb*, %union.ccb** %7, align 8
  %168 = bitcast %union.ccb* %167 to %struct.TYPE_12__*
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %172 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %171, i32 0, i32 15
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %175 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @SIIS_P_LRAM_SLOT(i32 %176)
  %178 = add nsw i32 %177, 4
  %179 = call i8* @ATA_INL(i32 %173, i32 %178)
  %180 = ptrtoint i8* %170 to i64
  %181 = ptrtoint i8* %179 to i64
  %182 = sub i64 %180, %181
  %183 = inttoptr i64 %182 to i8*
  %184 = load %union.ccb*, %union.ccb** %7, align 8
  %185 = bitcast %union.ccb* %184 to %struct.TYPE_12__*
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 2
  store i8* %183, i8** %186, align 8
  br label %187

187:                                              ; preds = %166, %161, %152
  br label %224

188:                                              ; preds = %2
  %189 = load %union.ccb*, %union.ccb** %7, align 8
  %190 = bitcast %union.ccb* %189 to %struct.TYPE_10__*
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @CAM_DIR_MASK, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @CAM_DIR_IN, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %223

197:                                              ; preds = %188
  %198 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %199 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %223

202:                                              ; preds = %197
  %203 = load %union.ccb*, %union.ccb** %7, align 8
  %204 = bitcast %union.ccb* %203 to %struct.TYPE_8__*
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %208 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %207, i32 0, i32 15
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %211 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @SIIS_P_LRAM_SLOT(i32 %212)
  %214 = add nsw i32 %213, 4
  %215 = call i8* @ATA_INL(i32 %209, i32 %214)
  %216 = ptrtoint i8* %206 to i64
  %217 = ptrtoint i8* %215 to i64
  %218 = sub i64 %216, %217
  %219 = inttoptr i64 %218 to i8*
  %220 = load %union.ccb*, %union.ccb** %7, align 8
  %221 = bitcast %union.ccb* %220 to %struct.TYPE_8__*
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  store i8* %219, i8** %222, align 8
  br label %223

223:                                              ; preds = %202, %197, %188
  br label %224

224:                                              ; preds = %223, %187
  %225 = load %union.ccb*, %union.ccb** %7, align 8
  %226 = bitcast %union.ccb* %225 to %struct.TYPE_10__*
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @CAM_DIR_MASK, align 4
  %230 = and i32 %228, %229
  %231 = load i32, i32* @CAM_DIR_NONE, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %265

233:                                              ; preds = %224
  %234 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %235 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %234, i32 0, i32 14
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %239 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load %union.ccb*, %union.ccb** %7, align 8
  %243 = bitcast %union.ccb* %242 to %struct.TYPE_10__*
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @CAM_DIR_IN, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %233
  %250 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %253

251:                                              ; preds = %233
  %252 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %253

253:                                              ; preds = %251, %249
  %254 = phi i32 [ %250, %249 ], [ %252, %251 ]
  %255 = call i32 @bus_dmamap_sync(i32 %237, i32 %241, i32 %254)
  %256 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %257 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %256, i32 0, i32 14
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %261 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @bus_dmamap_unload(i32 %259, i32 %263)
  br label %265

265:                                              ; preds = %253, %224
  %266 = load i32, i32* %4, align 4
  %267 = icmp ne i32 %266, 131
  br i1 %267, label %273, label %268

268:                                              ; preds = %265
  %269 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %270 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %269, i32 0, i32 13
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %288

273:                                              ; preds = %268, %265
  %274 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %275 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = shl i32 1, %276
  %278 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %279 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 4
  %282 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %283 = load %union.ccb*, %union.ccb** %7, align 8
  %284 = bitcast %union.ccb* %283 to %struct.TYPE_10__*
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 4
  %287 = or i32 %286, %282
  store i32 %287, i32* %285, align 4
  br label %288

288:                                              ; preds = %273, %268
  %289 = load i32, i32* %4, align 4
  %290 = icmp ne i32 %289, 131
  br i1 %290, label %291, label %316

291:                                              ; preds = %288
  %292 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %293 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %316, label %296

296:                                              ; preds = %291
  %297 = load %union.ccb*, %union.ccb** %7, align 8
  %298 = bitcast %union.ccb* %297 to %struct.TYPE_10__*
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %316, label %304

304:                                              ; preds = %296
  %305 = load %union.ccb*, %union.ccb** %7, align 8
  %306 = bitcast %union.ccb* %305 to %struct.TYPE_10__*
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 5
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @xpt_freeze_devq(i32 %308, i32 1)
  %310 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %311 = load %union.ccb*, %union.ccb** %7, align 8
  %312 = bitcast %union.ccb* %311 to %struct.TYPE_10__*
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %310
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %304, %296, %291, %288
  %317 = load i32, i32* @CAM_STATUS_MASK, align 4
  %318 = xor i32 %317, -1
  %319 = load %union.ccb*, %union.ccb** %7, align 8
  %320 = bitcast %union.ccb* %319 to %struct.TYPE_10__*
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 2
  %322 = load i32, i32* %321, align 4
  %323 = and i32 %322, %318
  store i32 %323, i32* %321, align 4
  %324 = load i32, i32* %4, align 4
  switch i32 %324, label %404 [
    i32 131, label %325
    i32 133, label %344
    i32 134, label %353
    i32 129, label %360
    i32 132, label %360
    i32 130, label %386
    i32 128, label %395
  ]

325:                                              ; preds = %316
  %326 = load i32, i32* @CAM_REQ_CMP, align 4
  %327 = load %union.ccb*, %union.ccb** %7, align 8
  %328 = bitcast %union.ccb* %327 to %struct.TYPE_10__*
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %326
  store i32 %331, i32* %329, align 4
  %332 = load %union.ccb*, %union.ccb** %7, align 8
  %333 = bitcast %union.ccb* %332 to %struct.TYPE_10__*
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 0
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @XPT_SCSI_IO, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %338, label %343

338:                                              ; preds = %325
  %339 = load i32, i32* @SCSI_STATUS_OK, align 4
  %340 = load %union.ccb*, %union.ccb** %7, align 8
  %341 = bitcast %union.ccb* %340 to %struct.TYPE_8__*
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 1
  store i32 %339, i32* %342, align 8
  br label %343

343:                                              ; preds = %338, %325
  br label %411

344:                                              ; preds = %316
  %345 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %346 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %345, i32 0, i32 2
  store i32 1, i32* %346, align 8
  %347 = load i32, i32* @CAM_REQ_INVALID, align 4
  %348 = load %union.ccb*, %union.ccb** %7, align 8
  %349 = bitcast %union.ccb* %348 to %struct.TYPE_10__*
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %347
  store i32 %352, i32* %350, align 4
  br label %411

353:                                              ; preds = %316
  %354 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %355 = load %union.ccb*, %union.ccb** %7, align 8
  %356 = bitcast %union.ccb* %355 to %struct.TYPE_10__*
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %354
  store i32 %359, i32* %357, align 4
  br label %411

360:                                              ; preds = %316, %316
  %361 = load %union.ccb*, %union.ccb** %7, align 8
  %362 = bitcast %union.ccb* %361 to %struct.TYPE_10__*
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @XPT_SCSI_IO, align 8
  %366 = icmp eq i64 %364, %365
  br i1 %366, label %367, label %378

367:                                              ; preds = %360
  %368 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %369 = load %union.ccb*, %union.ccb** %7, align 8
  %370 = bitcast %union.ccb* %369 to %struct.TYPE_10__*
  %371 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %372, %368
  store i32 %373, i32* %371, align 4
  %374 = load i32, i32* @SCSI_STATUS_CHECK_COND, align 4
  %375 = load %union.ccb*, %union.ccb** %7, align 8
  %376 = bitcast %union.ccb* %375 to %struct.TYPE_8__*
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 1
  store i32 %374, i32* %377, align 8
  br label %385

378:                                              ; preds = %360
  %379 = load i32, i32* @CAM_ATA_STATUS_ERROR, align 4
  %380 = load %union.ccb*, %union.ccb** %7, align 8
  %381 = bitcast %union.ccb* %380 to %struct.TYPE_10__*
  %382 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = or i32 %383, %379
  store i32 %384, i32* %382, align 4
  br label %385

385:                                              ; preds = %378, %367
  br label %411

386:                                              ; preds = %316
  %387 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %388 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %387, i32 0, i32 2
  store i32 1, i32* %388, align 8
  %389 = load i32, i32* @CAM_UNCOR_PARITY, align 4
  %390 = load %union.ccb*, %union.ccb** %7, align 8
  %391 = bitcast %union.ccb* %390 to %struct.TYPE_10__*
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = or i32 %393, %389
  store i32 %394, i32* %392, align 4
  br label %411

395:                                              ; preds = %316
  %396 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %397 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %396, i32 0, i32 2
  store i32 1, i32* %397, align 8
  %398 = load i32, i32* @CAM_CMD_TIMEOUT, align 4
  %399 = load %union.ccb*, %union.ccb** %7, align 8
  %400 = bitcast %union.ccb* %399 to %struct.TYPE_10__*
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 4
  %403 = or i32 %402, %398
  store i32 %403, i32* %401, align 4
  br label %411

404:                                              ; preds = %316
  %405 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %406 = load %union.ccb*, %union.ccb** %7, align 8
  %407 = bitcast %union.ccb* %406 to %struct.TYPE_10__*
  %408 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = or i32 %409, %405
  store i32 %410, i32* %408, align 4
  br label %411

411:                                              ; preds = %404, %395, %386, %385, %353, %344, %343
  %412 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %413 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = shl i32 1, %414
  %416 = xor i32 %415, -1
  %417 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %418 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %417, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = and i32 %419, %416
  store i32 %420, i32* %418, align 4
  %421 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %422 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = shl i32 1, %423
  %425 = xor i32 %424, -1
  %426 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %427 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 8
  %429 = and i32 %428, %425
  store i32 %429, i32* %427, align 8
  %430 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %431 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = shl i32 1, %432
  %434 = xor i32 %433, -1
  %435 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %436 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 4
  %438 = and i32 %437, %434
  store i32 %438, i32* %436, align 4
  %439 = load i32, i32* @SIIS_SLOT_EMPTY, align 4
  %440 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %441 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 8
  %442 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %443 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %442, i32 0, i32 1
  store %union.ccb* null, %union.ccb** %443, align 8
  %444 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %445 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = add nsw i32 %446, -1
  store i32 %447, i32* %445, align 8
  %448 = load %union.ccb*, %union.ccb** %7, align 8
  %449 = bitcast %union.ccb* %448 to %struct.TYPE_10__*
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 0
  %451 = load i64, i64* %450, align 8
  %452 = load i64, i64* @XPT_ATA_IO, align 8
  %453 = icmp eq i64 %451, %452
  br i1 %453, label %454, label %474

454:                                              ; preds = %411
  %455 = load %union.ccb*, %union.ccb** %7, align 8
  %456 = bitcast %union.ccb* %455 to %struct.TYPE_12__*
  %457 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %456, i32 0, i32 1
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %474

463:                                              ; preds = %454
  %464 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %465 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %464, i32 0, i32 12
  %466 = load i32*, i32** %465, align 8
  %467 = load %union.ccb*, %union.ccb** %7, align 8
  %468 = bitcast %union.ccb* %467 to %struct.TYPE_10__*
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 3
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds i32, i32* %466, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = add nsw i32 %472, -1
  store i32 %473, i32* %471, align 4
  br label %474

474:                                              ; preds = %463, %454, %411
  %475 = load i32, i32* %4, align 4
  %476 = icmp ne i32 %475, 128
  br i1 %476, label %477, label %505

477:                                              ; preds = %474
  %478 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %479 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %478, i32 0, i32 6
  %480 = load i32, i32* %479, align 8
  %481 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %482 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = shl i32 1, %483
  %485 = icmp eq i32 %480, %484
  %486 = zext i1 %485 to i32
  store i32 %486, i32* %8, align 4
  %487 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %488 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 8
  %490 = shl i32 1, %489
  %491 = xor i32 %490, -1
  %492 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %493 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %492, i32 0, i32 6
  %494 = load i32, i32* %493, align 8
  %495 = and i32 %494, %491
  store i32 %495, i32* %493, align 8
  %496 = load i32, i32* %8, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %498, label %504

498:                                              ; preds = %477
  %499 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %500 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %499, i32 0, i32 7
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* @TRUE, align 4
  %503 = call i32 @xpt_release_simq(i32 %501, i32 %502)
  br label %504

504:                                              ; preds = %498, %477
  br label %505

505:                                              ; preds = %504, %474
  %506 = load %union.ccb*, %union.ccb** %7, align 8
  %507 = bitcast %union.ccb* %506 to %struct.TYPE_10__*
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 4
  %509 = load i64, i64* %508, align 8
  %510 = load i64, i64* @RECOVERY_READ_LOG, align 8
  %511 = icmp eq i64 %509, %510
  br i1 %511, label %512, label %516

512:                                              ; preds = %505
  %513 = load i32, i32* %5, align 4
  %514 = load %union.ccb*, %union.ccb** %7, align 8
  %515 = call i32 @siis_process_read_log(i32 %513, %union.ccb* %514)
  br label %566

516:                                              ; preds = %505
  %517 = load %union.ccb*, %union.ccb** %7, align 8
  %518 = bitcast %union.ccb* %517 to %struct.TYPE_10__*
  %519 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %518, i32 0, i32 4
  %520 = load i64, i64* %519, align 8
  %521 = load i64, i64* @RECOVERY_REQUEST_SENSE, align 8
  %522 = icmp eq i64 %520, %521
  br i1 %522, label %523, label %527

523:                                              ; preds = %516
  %524 = load i32, i32* %5, align 4
  %525 = load %union.ccb*, %union.ccb** %7, align 8
  %526 = call i32 @siis_process_request_sense(i32 %524, %union.ccb* %525)
  br label %565

527:                                              ; preds = %516
  %528 = load i32, i32* %4, align 4
  %529 = icmp eq i32 %528, 132
  br i1 %529, label %547, label %530

530:                                              ; preds = %527
  %531 = load %union.ccb*, %union.ccb** %7, align 8
  %532 = bitcast %union.ccb* %531 to %struct.TYPE_10__*
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 2
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* @CAM_STATUS_MASK, align 4
  %536 = and i32 %534, %535
  %537 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %538 = icmp eq i32 %536, %537
  br i1 %538, label %539, label %561

539:                                              ; preds = %530
  %540 = load %union.ccb*, %union.ccb** %7, align 8
  %541 = bitcast %union.ccb* %540 to %struct.TYPE_10__*
  %542 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 8
  %544 = load i32, i32* @CAM_DIS_AUTOSENSE, align 4
  %545 = and i32 %543, %544
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %547, label %561

547:                                              ; preds = %539, %527
  %548 = load %union.ccb*, %union.ccb** %7, align 8
  %549 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %550 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %549, i32 0, i32 11
  %551 = load %union.ccb**, %union.ccb*** %550, align 8
  %552 = load %struct.siis_slot*, %struct.siis_slot** %3, align 8
  %553 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %union.ccb*, %union.ccb** %551, i64 %555
  store %union.ccb* %548, %union.ccb** %556, align 8
  %557 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %558 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %557, i32 0, i32 9
  %559 = load i64, i64* %558, align 8
  %560 = add nsw i64 %559, 1
  store i64 %560, i64* %558, align 8
  br label %564

561:                                              ; preds = %539, %530
  %562 = load %union.ccb*, %union.ccb** %7, align 8
  %563 = call i32 @xpt_done(%union.ccb* %562)
  br label %564

564:                                              ; preds = %561, %547
  br label %565

565:                                              ; preds = %564, %523
  br label %566

566:                                              ; preds = %565, %512
  %567 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %568 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %567, i32 0, i32 4
  %569 = load i32, i32* %568, align 8
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %607

571:                                              ; preds = %566
  %572 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %573 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %572, i32 0, i32 6
  %574 = load i32, i32* %573, align 8
  %575 = icmp ne i32 %574, 0
  br i1 %575, label %581, label %576

576:                                              ; preds = %571
  %577 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %578 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 8
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %584

581:                                              ; preds = %576, %571
  %582 = load i32, i32* %5, align 4
  %583 = call i32 @siis_reset(i32 %582)
  br label %606

584:                                              ; preds = %576
  %585 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %586 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %585, i32 0, i32 1
  %587 = load i32, i32* %586, align 4
  %588 = icmp ne i32 %587, 0
  br i1 %588, label %589, label %592

589:                                              ; preds = %584
  %590 = load i32, i32* %5, align 4
  %591 = call i32 @siis_portinit(i32 %590)
  br label %592

592:                                              ; preds = %589, %584
  %593 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %594 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %593, i32 0, i32 10
  %595 = load i32, i32* %594, align 8
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %605, label %597

597:                                              ; preds = %592
  %598 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %599 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %598, i32 0, i32 9
  %600 = load i64, i64* %599, align 8
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %605

602:                                              ; preds = %597
  %603 = load i32, i32* %5, align 4
  %604 = call i32 @siis_issue_recovery(i32 %603)
  br label %605

605:                                              ; preds = %602, %597, %592
  br label %606

606:                                              ; preds = %605, %581
  br label %624

607:                                              ; preds = %566
  %608 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %609 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %608, i32 0, i32 4
  %610 = load i32, i32* %609, align 8
  %611 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %612 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %611, i32 0, i32 6
  %613 = load i32, i32* %612, align 8
  %614 = xor i32 %613, -1
  %615 = and i32 %610, %614
  %616 = icmp eq i32 %615, 0
  br i1 %616, label %617, label %623

617:                                              ; preds = %607
  %618 = load i32, i32* %4, align 4
  %619 = icmp ne i32 %618, 128
  br i1 %619, label %620, label %623

620:                                              ; preds = %617
  %621 = load i32, i32* %5, align 4
  %622 = call i32 @siis_rearm_timeout(i32 %621)
  br label %623

623:                                              ; preds = %620, %617, %607
  br label %624

624:                                              ; preds = %623, %606
  %625 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %626 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %625, i32 0, i32 8
  %627 = load %union.ccb*, %union.ccb** %626, align 8
  %628 = icmp ne %union.ccb* %627, null
  br i1 %628, label %629, label %650

629:                                              ; preds = %624
  %630 = load i32, i32* %5, align 4
  %631 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %632 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %631, i32 0, i32 8
  %633 = load %union.ccb*, %union.ccb** %632, align 8
  %634 = call i32 @siis_check_collision(i32 %630, %union.ccb* %633)
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %650, label %636

636:                                              ; preds = %629
  %637 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %638 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %637, i32 0, i32 8
  %639 = load %union.ccb*, %union.ccb** %638, align 8
  store %union.ccb* %639, %union.ccb** %11, align 8
  %640 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %641 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %640, i32 0, i32 8
  store %union.ccb* null, %union.ccb** %641, align 8
  %642 = load i32, i32* %5, align 4
  %643 = load %union.ccb*, %union.ccb** %11, align 8
  %644 = call i32 @siis_begin_transaction(i32 %642, %union.ccb* %643)
  %645 = load %struct.siis_channel*, %struct.siis_channel** %6, align 8
  %646 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %645, i32 0, i32 7
  %647 = load i32, i32* %646, align 4
  %648 = load i32, i32* @TRUE, align 4
  %649 = call i32 @xpt_release_simq(i32 %647, i32 %648)
  br label %650

650:                                              ; preds = %636, %629, %624
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @SIIS_P_LRAM_SLOT(i32) #1

declare dso_local i8* @ATA_INB(i32, i32) #1

declare dso_local i32 @bzero(%struct.ata_res*, i32) #1

declare dso_local i8* @ATA_INL(i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @siis_process_read_log(i32, %union.ccb*) #1

declare dso_local i32 @siis_process_request_sense(i32, %union.ccb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @siis_reset(i32) #1

declare dso_local i32 @siis_portinit(i32) #1

declare dso_local i32 @siis_issue_recovery(i32) #1

declare dso_local i32 @siis_rearm_timeout(i32) #1

declare dso_local i32 @siis_check_collision(i32, %union.ccb*) #1

declare dso_local i32 @siis_begin_transaction(i32, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
