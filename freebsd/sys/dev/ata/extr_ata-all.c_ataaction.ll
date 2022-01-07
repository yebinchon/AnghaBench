; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ataaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ataaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i8* }
%struct.ata_channel = type { i32, i32, %struct.TYPE_14__, %struct.ata_cam_device*, i32, %struct.ata_cam_device*, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.ata_cam_device = type { i32, i32, i32, i32, i8* }
%struct.ata_res = type { i32, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_13__, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i8* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i8* }
%struct.TYPE_16__ = type { i32, i32, i8*, i32 }
%struct.TYPE_10__ = type { %struct.ata_res, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ataaction func_code=%x\0A\00", align 1
@ATA_ATA_MASTER = common dso_local global i32 0, align 4
@ATA_ATAPI_MASTER = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"already running!\0A\00", align 1
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@ATA_SATA = common dso_local global i32 0, align 4
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CTS_SATA_VALID_CAPS = common dso_local global i32 0, align 4
@CTS_ATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_ATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@CTS_ATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CTS_ATA_VALID_CAPS = common dso_local global i32 0, align 4
@PROTO_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@XPORT_SATA = common dso_local global i8* null, align 8
@XPORT_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@CTS_SATA_CAPS_D = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@XPORT_ATA = common dso_local global i8* null, align 8
@CTS_ATA_CAPS_D = common dso_local global i32 0, align 4
@ATA_NO_48BIT_DMA = common dso_local global i32 0, align 4
@CTS_ATA_CAPS_H_DMA48 = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@ATA_NO_SLAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@DFLTPHYS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @ataaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ataaction(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_channel*, align 8
  %8 = alloca %struct.ata_res*, align 8
  %9 = alloca %struct.ccb_trans_settings*, align 8
  %10 = alloca %struct.ata_cam_device*, align 8
  %11 = alloca %struct.ccb_trans_settings*, align 8
  %12 = alloca %struct.ata_cam_device*, align 8
  %13 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_16__*
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_16__*
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @CAM_DEBUG(i32 %17, i32 %18, i8* %24)
  %26 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %27 = call i64 @cam_sim_softc(%struct.cam_sim* %26)
  %28 = inttoptr i64 %27 to %struct.ata_channel*
  store %struct.ata_channel* %28, %struct.ata_channel** %7, align 8
  %29 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %30 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_16__*
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %859 [
    i32 135, label %36
    i32 130, label %36
    i32 136, label %129
    i32 129, label %134
    i32 134, label %384
    i32 132, label %706
    i32 131, label %706
    i32 128, label %713
    i32 133, label %718
  ]

36:                                               ; preds = %2, %2
  %37 = load i32, i32* %5, align 4
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = call i32 @ata_check_ids(i32 %37, %union.ccb* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %867

42:                                               ; preds = %36
  %43 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %44 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ATA_ATA_MASTER, align 4
  %47 = load i32, i32* @ATA_ATAPI_MASTER, align 4
  %48 = or i32 %46, %47
  %49 = load %union.ccb*, %union.ccb** %4, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_16__*
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %48, %52
  %54 = and i32 %45, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %42
  %57 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %58 = load %union.ccb*, %union.ccb** %4, align 8
  %59 = bitcast %union.ccb* %58 to %struct.TYPE_16__*
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  br label %864

61:                                               ; preds = %42
  %62 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %63 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_16__*
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 135
  br i1 %74, label %75, label %125

75:                                               ; preds = %69
  %76 = load %union.ccb*, %union.ccb** %4, align 8
  %77 = bitcast %union.ccb* %76 to %struct.TYPE_10__*
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %125

84:                                               ; preds = %75
  %85 = load %union.ccb*, %union.ccb** %4, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_10__*
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ATA_A_RESET, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %125

93:                                               ; preds = %84
  %94 = load %union.ccb*, %union.ccb** %4, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_10__*
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  store %struct.ata_res* %96, %struct.ata_res** %8, align 8
  %97 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %98 = call i32 @bzero(%struct.ata_res* %97, i32 8)
  %99 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %100 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @ATA_ATA_MASTER, align 4
  %103 = load %union.ccb*, %union.ccb** %4, align 8
  %104 = bitcast %union.ccb* %103 to %struct.TYPE_16__*
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %102, %106
  %108 = and i32 %101, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %93
  %111 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %112 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %111, i32 0, i32 0
  store i32 0, i32* %112, align 4
  %113 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %114 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %113, i32 0, i32 1
  store i32 0, i32* %114, align 4
  br label %120

115:                                              ; preds = %93
  %116 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %117 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %116, i32 0, i32 0
  store i32 235, i32* %117, align 4
  %118 = load %struct.ata_res*, %struct.ata_res** %8, align 8
  %119 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %118, i32 0, i32 1
  store i32 20, i32* %119, align 4
  br label %120

120:                                              ; preds = %115, %110
  %121 = load i8*, i8** @CAM_REQ_CMP, align 8
  %122 = load %union.ccb*, %union.ccb** %4, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_16__*
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 2
  store i8* %121, i8** %124, align 8
  br label %864

125:                                              ; preds = %84, %75, %69
  %126 = load i32, i32* %5, align 4
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = call i32 @ata_cam_begin_transaction(i32 %126, %union.ccb* %127)
  br label %867

129:                                              ; preds = %2
  %130 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %131 = load %union.ccb*, %union.ccb** %4, align 8
  %132 = bitcast %union.ccb* %131 to %struct.TYPE_16__*
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  store i8* %130, i8** %133, align 8
  br label %864

134:                                              ; preds = %2
  %135 = load %union.ccb*, %union.ccb** %4, align 8
  %136 = bitcast %union.ccb* %135 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %136, %struct.ccb_trans_settings** %9, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load %union.ccb*, %union.ccb** %4, align 8
  %139 = call i32 @ata_check_ids(i32 %137, %union.ccb* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %867

142:                                              ; preds = %134
  %143 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %144 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %150 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %149, i32 0, i32 5
  %151 = load %struct.ata_cam_device*, %struct.ata_cam_device** %150, align 8
  %152 = load %union.ccb*, %union.ccb** %4, align 8
  %153 = bitcast %union.ccb* %152 to %struct.TYPE_16__*
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %151, i64 %156
  store %struct.ata_cam_device* %157, %struct.ata_cam_device** %10, align 8
  br label %168

158:                                              ; preds = %142
  %159 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %160 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %159, i32 0, i32 3
  %161 = load %struct.ata_cam_device*, %struct.ata_cam_device** %160, align 8
  %162 = load %union.ccb*, %union.ccb** %4, align 8
  %163 = bitcast %union.ccb* %162 to %struct.TYPE_16__*
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %161, i64 %166
  store %struct.ata_cam_device* %167, %struct.ata_cam_device** %10, align 8
  br label %168

168:                                              ; preds = %158, %148
  %169 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %170 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ATA_SATA, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %286

175:                                              ; preds = %168
  %176 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %177 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %175
  %185 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %186 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %191 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %184, %175
  %193 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %194 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %233

201:                                              ; preds = %192
  %202 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %203 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %224

207:                                              ; preds = %201
  %208 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %209 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %208, i32 0, i32 6
  %210 = load i32, i32* %209, align 8
  %211 = load %union.ccb*, %union.ccb** %4, align 8
  %212 = bitcast %union.ccb* %211 to %struct.TYPE_16__*
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %217 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 5
  %220 = load i8*, i8** %219, align 8
  %221 = call i8* @ATA_SETMODE(i32 %210, i64 %215, i8* %220)
  %222 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %223 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  br label %232

224:                                              ; preds = %201
  %225 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %226 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 5
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %231 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %230, i32 0, i32 4
  store i8* %229, i8** %231, align 8
  br label %232

232:                                              ; preds = %224, %207
  br label %233

233:                                              ; preds = %232, %192
  %234 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %235 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %233
  %243 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %244 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @min(i32 8192, i32 %247)
  %249 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %250 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %249, i32 0, i32 3
  store i32 %248, i32* %250, align 4
  br label %251

251:                                              ; preds = %242, %233
  %252 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %253 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %251
  %261 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %262 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 1
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %267 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 8
  br label %268

268:                                              ; preds = %260, %251
  %269 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %270 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %268
  %278 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %279 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %284 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  br label %285

285:                                              ; preds = %277, %268
  br label %379

286:                                              ; preds = %168
  %287 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %288 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %327

295:                                              ; preds = %286
  %296 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %297 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %318

301:                                              ; preds = %295
  %302 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %303 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %302, i32 0, i32 6
  %304 = load i32, i32* %303, align 8
  %305 = load %union.ccb*, %union.ccb** %4, align 8
  %306 = bitcast %union.ccb* %305 to %struct.TYPE_16__*
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = sext i32 %308 to i64
  %310 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %311 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 4
  %314 = load i8*, i8** %313, align 8
  %315 = call i8* @ATA_SETMODE(i32 %304, i64 %309, i8* %314)
  %316 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %317 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %316, i32 0, i32 4
  store i8* %315, i8** %317, align 8
  br label %326

318:                                              ; preds = %295
  %319 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %320 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 4
  %323 = load i8*, i8** %322, align 8
  %324 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %325 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %324, i32 0, i32 4
  store i8* %323, i8** %325, align 8
  br label %326

326:                                              ; preds = %318, %301
  br label %327

327:                                              ; preds = %326, %286
  %328 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %329 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @CTS_ATA_VALID_BYTECOUNT, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %344

336:                                              ; preds = %327
  %337 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %338 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %337, i32 0, i32 0
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %343 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 4
  br label %344

344:                                              ; preds = %336, %327
  %345 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %346 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %351 = and i32 %349, %350
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %344
  %354 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %355 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %356, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %360 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %359, i32 0, i32 2
  store i32 %358, i32* %360, align 8
  br label %361

361:                                              ; preds = %353, %344
  %362 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %363 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @CTS_ATA_VALID_CAPS, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %361
  %371 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %372 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.ata_cam_device*, %struct.ata_cam_device** %10, align 8
  %377 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 4
  br label %378

378:                                              ; preds = %370, %361
  br label %379

379:                                              ; preds = %378, %285
  %380 = load i8*, i8** @CAM_REQ_CMP, align 8
  %381 = load %union.ccb*, %union.ccb** %4, align 8
  %382 = bitcast %union.ccb* %381 to %struct.TYPE_16__*
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 2
  store i8* %380, i8** %383, align 8
  br label %864

384:                                              ; preds = %2
  %385 = load %union.ccb*, %union.ccb** %4, align 8
  %386 = bitcast %union.ccb* %385 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %386, %struct.ccb_trans_settings** %11, align 8
  %387 = load i32, i32* %5, align 4
  %388 = load %union.ccb*, %union.ccb** %4, align 8
  %389 = call i32 @ata_check_ids(i32 %387, %union.ccb* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %384
  br label %867

392:                                              ; preds = %384
  %393 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %394 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %397 = icmp eq i32 %395, %396
  br i1 %397, label %398, label %408

398:                                              ; preds = %392
  %399 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %400 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %399, i32 0, i32 5
  %401 = load %struct.ata_cam_device*, %struct.ata_cam_device** %400, align 8
  %402 = load %union.ccb*, %union.ccb** %4, align 8
  %403 = bitcast %union.ccb* %402 to %struct.TYPE_16__*
  %404 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %403, i32 0, i32 1
  %405 = load i32, i32* %404, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %401, i64 %406
  store %struct.ata_cam_device* %407, %struct.ata_cam_device** %12, align 8
  br label %418

408:                                              ; preds = %392
  %409 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %410 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %409, i32 0, i32 3
  %411 = load %struct.ata_cam_device*, %struct.ata_cam_device** %410, align 8
  %412 = load %union.ccb*, %union.ccb** %4, align 8
  %413 = bitcast %union.ccb* %412 to %struct.TYPE_16__*
  %414 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %411, i64 %416
  store %struct.ata_cam_device* %417, %struct.ata_cam_device** %12, align 8
  br label %418

418:                                              ; preds = %408, %398
  %419 = load i32, i32* @PROTO_UNSPECIFIED, align 4
  %420 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %421 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %420, i32 0, i32 5
  store i32 %419, i32* %421, align 8
  %422 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %423 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %424 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %423, i32 0, i32 4
  store i8* %422, i8** %424, align 8
  %425 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %426 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 4
  %428 = load i32, i32* @ATA_SATA, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %585

431:                                              ; preds = %418
  %432 = load i8*, i8** @XPORT_SATA, align 8
  %433 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %434 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %433, i32 0, i32 3
  store i8* %432, i8** %434, align 8
  %435 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %436 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %437 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %436, i32 0, i32 2
  store i8* %435, i8** %437, align 8
  %438 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %439 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 0
  store i32 0, i32* %441, align 8
  %442 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %443 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %442, i32 0, i32 4
  %444 = load i8*, i8** %443, align 8
  %445 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %446 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %446, i32 0, i32 1
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %447, i32 0, i32 5
  store i8* %444, i8** %448, align 8
  %449 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %450 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %451 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = or i32 %454, %449
  store i32 %455, i32* %453, align 8
  %456 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %457 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %460 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %460, i32 0, i32 1
  %462 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %461, i32 0, i32 4
  store i32 %458, i32* %462, align 8
  %463 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %464 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %465 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %464, i32 0, i32 0
  %466 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = or i32 %468, %463
  store i32 %469, i32* %467, align 8
  %470 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %471 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 8
  %473 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %474 = icmp eq i32 %472, %473
  br i1 %474, label %475, label %541

475:                                              ; preds = %431
  %476 = load i32, i32* %5, align 4
  %477 = load %union.ccb*, %union.ccb** %4, align 8
  %478 = bitcast %union.ccb* %477 to %struct.TYPE_16__*
  %479 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = call i32 @ATA_GETREV(i32 %476, i64 %481)
  %483 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %484 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %485, i32 0, i32 1
  store i32 %482, i32* %486, align 4
  %487 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %488 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %489, i32 0, i32 1
  %491 = load i32, i32* %490, align 4
  %492 = icmp ne i32 %491, 255
  br i1 %492, label %493, label %501

493:                                              ; preds = %475
  %494 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %495 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %496 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %496, i32 0, i32 1
  %498 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, %494
  store i32 %500, i32* %498, align 8
  br label %501

501:                                              ; preds = %493, %475
  %502 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %503 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* @CTS_SATA_CAPS_D, align 4
  %506 = and i32 %504, %505
  %507 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %508 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %507, i32 0, i32 0
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 2
  store i32 %506, i32* %510, align 8
  %511 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %512 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %511, i32 0, i32 4
  %513 = load i32, i32* %512, align 8
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %523

515:                                              ; preds = %501
  %516 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %517 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %518 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = or i32 %521, %516
  store i32 %522, i32* %520, align 8
  br label %523

523:                                              ; preds = %515, %501
  %524 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %525 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %524, i32 0, i32 3
  %526 = load %struct.ata_cam_device*, %struct.ata_cam_device** %525, align 8
  %527 = load %union.ccb*, %union.ccb** %4, align 8
  %528 = bitcast %union.ccb* %527 to %struct.TYPE_16__*
  %529 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %528, i32 0, i32 1
  %530 = load i32, i32* %529, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %526, i64 %531
  %533 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %536 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %535, i32 0, i32 0
  %537 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %536, i32 0, i32 1
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 2
  %539 = load i32, i32* %538, align 8
  %540 = and i32 %539, %534
  store i32 %540, i32* %538, align 8
  br label %563

541:                                              ; preds = %431
  %542 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %543 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 8
  %545 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %546 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %547, i32 0, i32 1
  store i32 %544, i32* %548, align 4
  %549 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %550 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %551 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %551, i32 0, i32 1
  %553 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %552, i32 0, i32 0
  %554 = load i32, i32* %553, align 8
  %555 = or i32 %554, %549
  store i32 %555, i32* %553, align 8
  %556 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %557 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 4
  %559 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %560 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %559, i32 0, i32 0
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 1
  %562 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %561, i32 0, i32 2
  store i32 %558, i32* %562, align 8
  br label %563

563:                                              ; preds = %541, %523
  %564 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %565 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %566 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %566, i32 0, i32 1
  %568 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = or i32 %569, %564
  store i32 %570, i32* %568, align 8
  %571 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %572 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %571, i32 0, i32 2
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %575 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %575, i32 0, i32 1
  %577 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %576, i32 0, i32 3
  store i32 %573, i32* %577, align 4
  %578 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %579 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %580 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %579, i32 0, i32 0
  %581 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %580, i32 0, i32 1
  %582 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = or i32 %583, %578
  store i32 %584, i32* %582, align 8
  br label %701

585:                                              ; preds = %418
  %586 = load i8*, i8** @XPORT_ATA, align 8
  %587 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %588 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %587, i32 0, i32 3
  store i8* %586, i8** %588, align 8
  %589 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %590 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %591 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %590, i32 0, i32 2
  store i8* %589, i8** %591, align 8
  %592 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %593 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %593, i32 0, i32 0
  %595 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %594, i32 0, i32 0
  store i32 0, i32* %595, align 8
  %596 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %597 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %596, i32 0, i32 4
  %598 = load i8*, i8** %597, align 8
  %599 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %600 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %599, i32 0, i32 0
  %601 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %601, i32 0, i32 4
  store i8* %598, i8** %602, align 8
  %603 = load i32, i32* @CTS_ATA_VALID_MODE, align 4
  %604 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %605 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %604, i32 0, i32 0
  %606 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 0
  %608 = load i32, i32* %607, align 8
  %609 = or i32 %608, %603
  store i32 %609, i32* %607, align 8
  %610 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %611 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %610, i32 0, i32 3
  %612 = load i32, i32* %611, align 4
  %613 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %614 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %614, i32 0, i32 0
  %616 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %615, i32 0, i32 3
  store i32 %612, i32* %616, align 4
  %617 = load i32, i32* @CTS_ATA_VALID_BYTECOUNT, align 4
  %618 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %619 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %619, i32 0, i32 0
  %621 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %620, i32 0, i32 0
  %622 = load i32, i32* %621, align 8
  %623 = or i32 %622, %617
  store i32 %623, i32* %621, align 8
  %624 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %625 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %624, i32 0, i32 1
  %626 = load i32, i32* %625, align 8
  %627 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %628 = icmp eq i32 %626, %627
  br i1 %628, label %629, label %671

629:                                              ; preds = %585
  %630 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %631 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = load i32, i32* @CTS_ATA_CAPS_D, align 4
  %634 = and i32 %632, %633
  %635 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %636 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %635, i32 0, i32 0
  %637 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %637, i32 0, i32 1
  store i32 %634, i32* %638, align 4
  %639 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %640 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = load i32, i32* @ATA_NO_48BIT_DMA, align 4
  %643 = and i32 %641, %642
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %653, label %645

645:                                              ; preds = %629
  %646 = load i32, i32* @CTS_ATA_CAPS_H_DMA48, align 4
  %647 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %648 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %647, i32 0, i32 0
  %649 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %648, i32 0, i32 0
  %650 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %649, i32 0, i32 1
  %651 = load i32, i32* %650, align 4
  %652 = or i32 %651, %646
  store i32 %652, i32* %650, align 4
  br label %653

653:                                              ; preds = %645, %629
  %654 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %655 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %654, i32 0, i32 3
  %656 = load %struct.ata_cam_device*, %struct.ata_cam_device** %655, align 8
  %657 = load %union.ccb*, %union.ccb** %4, align 8
  %658 = bitcast %union.ccb* %657 to %struct.TYPE_16__*
  %659 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %658, i32 0, i32 1
  %660 = load i32, i32* %659, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %656, i64 %661
  %663 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %662, i32 0, i32 1
  %664 = load i32, i32* %663, align 4
  %665 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %666 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %665, i32 0, i32 0
  %667 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %667, i32 0, i32 1
  %669 = load i32, i32* %668, align 4
  %670 = and i32 %669, %664
  store i32 %670, i32* %668, align 4
  br label %679

671:                                              ; preds = %585
  %672 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %673 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %672, i32 0, i32 1
  %674 = load i32, i32* %673, align 4
  %675 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %676 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %675, i32 0, i32 0
  %677 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %676, i32 0, i32 0
  %678 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %677, i32 0, i32 1
  store i32 %674, i32* %678, align 4
  br label %679

679:                                              ; preds = %671, %653
  %680 = load i32, i32* @CTS_ATA_VALID_CAPS, align 4
  %681 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %682 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %681, i32 0, i32 0
  %683 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %682, i32 0, i32 0
  %684 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %683, i32 0, i32 0
  %685 = load i32, i32* %684, align 8
  %686 = or i32 %685, %680
  store i32 %686, i32* %684, align 8
  %687 = load %struct.ata_cam_device*, %struct.ata_cam_device** %12, align 8
  %688 = getelementptr inbounds %struct.ata_cam_device, %struct.ata_cam_device* %687, i32 0, i32 2
  %689 = load i32, i32* %688, align 8
  %690 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %691 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %691, i32 0, i32 0
  %693 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %692, i32 0, i32 2
  store i32 %689, i32* %693, align 8
  %694 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %695 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %11, align 8
  %696 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %695, i32 0, i32 0
  %697 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %696, i32 0, i32 0
  %698 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %697, i32 0, i32 0
  %699 = load i32, i32* %698, align 8
  %700 = or i32 %699, %694
  store i32 %700, i32* %698, align 8
  br label %701

701:                                              ; preds = %679, %563
  %702 = load i8*, i8** @CAM_REQ_CMP, align 8
  %703 = load %union.ccb*, %union.ccb** %4, align 8
  %704 = bitcast %union.ccb* %703 to %struct.TYPE_16__*
  %705 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %704, i32 0, i32 2
  store i8* %702, i8** %705, align 8
  br label %864

706:                                              ; preds = %2, %2
  %707 = load i32, i32* %5, align 4
  %708 = call i32 @ata_reinit(i32 %707)
  %709 = load i8*, i8** @CAM_REQ_CMP, align 8
  %710 = load %union.ccb*, %union.ccb** %4, align 8
  %711 = bitcast %union.ccb* %710 to %struct.TYPE_16__*
  %712 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %711, i32 0, i32 2
  store i8* %709, i8** %712, align 8
  br label %864

713:                                              ; preds = %2
  %714 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %715 = load %union.ccb*, %union.ccb** %4, align 8
  %716 = bitcast %union.ccb* %715 to %struct.TYPE_16__*
  %717 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %716, i32 0, i32 2
  store i8* %714, i8** %717, align 8
  br label %864

718:                                              ; preds = %2
  %719 = load %union.ccb*, %union.ccb** %4, align 8
  %720 = bitcast %union.ccb* %719 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %720, %struct.ccb_pathinq** %13, align 8
  %721 = load i32, i32* %5, align 4
  %722 = call i32 @device_get_parent(i32 %721)
  store i32 %722, i32* %6, align 4
  %723 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %724 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %723, i32 0, i32 0
  store i32 1, i32* %724, align 8
  %725 = load i32, i32* @PI_SDTR_ABLE, align 4
  %726 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %727 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %726, i32 0, i32 23
  store i32 %725, i32* %727, align 4
  %728 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %729 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %728, i32 0, i32 22
  store i32 0, i32* %729, align 8
  %730 = load i32, i32* @PIM_SEQSCAN, align 4
  %731 = load i32, i32* @PIM_UNMAPPED, align 4
  %732 = or i32 %730, %731
  %733 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %734 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %733, i32 0, i32 1
  store i32 %732, i32* %734, align 4
  %735 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %736 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %735, i32 0, i32 21
  store i32 0, i32* %736, align 4
  %737 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %738 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %737, i32 0, i32 1
  %739 = load i32, i32* %738, align 4
  %740 = load i32, i32* @ATA_NO_SLAVE, align 4
  %741 = and i32 %739, %740
  %742 = icmp ne i32 %741, 0
  br i1 %742, label %743, label %746

743:                                              ; preds = %718
  %744 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %745 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %744, i32 0, i32 2
  store i32 0, i32* %745, align 8
  br label %749

746:                                              ; preds = %718
  %747 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %748 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %747, i32 0, i32 2
  store i32 1, i32* %748, align 8
  br label %749

749:                                              ; preds = %746, %743
  %750 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %751 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %750, i32 0, i32 20
  store i32 0, i32* %751, align 8
  %752 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %753 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %752, i32 0, i32 19
  store i32 0, i32* %753, align 4
  %754 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %755 = call i32 @cam_sim_bus(%struct.cam_sim* %754)
  %756 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %757 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %756, i32 0, i32 18
  store i32 %755, i32* %757, align 8
  %758 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %759 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 4
  %761 = load i32, i32* @ATA_SATA, align 4
  %762 = and i32 %760, %761
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %764, label %767

764:                                              ; preds = %749
  %765 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %766 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %765, i32 0, i32 3
  store i32 150000, i32* %766, align 4
  br label %770

767:                                              ; preds = %749
  %768 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %769 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %768, i32 0, i32 3
  store i32 3300, i32* %769, align 4
  br label %770

770:                                              ; preds = %767, %764
  %771 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %772 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %771, i32 0, i32 17
  %773 = load i32, i32* %772, align 4
  %774 = load i32, i32* @SIM_IDLEN, align 4
  %775 = call i32 @strlcpy(i32 %773, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %774)
  %776 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %777 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %776, i32 0, i32 16
  %778 = load i32, i32* %777, align 8
  %779 = load i32, i32* @HBA_IDLEN, align 4
  %780 = call i32 @strlcpy(i32 %778, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %779)
  %781 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %782 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %781, i32 0, i32 15
  %783 = load i32, i32* %782, align 4
  %784 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %785 = call i8* @cam_sim_name(%struct.cam_sim* %784)
  %786 = load i32, i32* @DEV_IDLEN, align 4
  %787 = call i32 @strlcpy(i32 %783, i8* %785, i32 %786)
  %788 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %789 = call i32 @cam_sim_unit(%struct.cam_sim* %788)
  %790 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %791 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %790, i32 0, i32 14
  store i32 %789, i32* %791, align 8
  %792 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %793 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %792, i32 0, i32 1
  %794 = load i32, i32* %793, align 4
  %795 = load i32, i32* @ATA_SATA, align 4
  %796 = and i32 %794, %795
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %798, label %802

798:                                              ; preds = %770
  %799 = load i8*, i8** @XPORT_SATA, align 8
  %800 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %801 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %800, i32 0, i32 13
  store i8* %799, i8** %801, align 8
  br label %806

802:                                              ; preds = %770
  %803 = load i8*, i8** @XPORT_ATA, align 8
  %804 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %805 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %804, i32 0, i32 13
  store i8* %803, i8** %805, align 8
  br label %806

806:                                              ; preds = %802, %798
  %807 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %808 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %809 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %808, i32 0, i32 12
  store i8* %807, i8** %809, align 8
  %810 = load i32, i32* @PROTO_ATA, align 4
  %811 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %812 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %811, i32 0, i32 11
  store i32 %810, i32* %812, align 8
  %813 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %814 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %815 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %814, i32 0, i32 10
  store i8* %813, i8** %815, align 8
  %816 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %817 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %816, i32 0, i32 2
  %818 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %817, i32 0, i32 0
  %819 = load i32, i32* %818, align 8
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %826

821:                                              ; preds = %806
  %822 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %823 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %822, i32 0, i32 2
  %824 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %823, i32 0, i32 0
  %825 = load i32, i32* %824, align 8
  br label %828

826:                                              ; preds = %806
  %827 = load i32, i32* @DFLTPHYS, align 4
  br label %828

828:                                              ; preds = %826, %821
  %829 = phi i32 [ %825, %821 ], [ %827, %826 ]
  %830 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %831 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %830, i32 0, i32 9
  store i32 %829, i32* %831, align 8
  %832 = load i32, i32* %6, align 4
  %833 = call i32 @device_get_parent(i32 %832)
  %834 = call i32 @device_get_devclass(i32 %833)
  %835 = call i32 @devclass_find(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %836 = icmp eq i32 %834, %835
  br i1 %836, label %837, label %854

837:                                              ; preds = %828
  %838 = load i32, i32* %6, align 4
  %839 = call i32 @pci_get_vendor(i32 %838)
  %840 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %841 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %840, i32 0, i32 8
  store i32 %839, i32* %841, align 4
  %842 = load i32, i32* %6, align 4
  %843 = call i32 @pci_get_device(i32 %842)
  %844 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %845 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %844, i32 0, i32 7
  store i32 %843, i32* %845, align 8
  %846 = load i32, i32* %6, align 4
  %847 = call i32 @pci_get_subvendor(i32 %846)
  %848 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %849 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %848, i32 0, i32 6
  store i32 %847, i32* %849, align 4
  %850 = load i32, i32* %6, align 4
  %851 = call i32 @pci_get_subdevice(i32 %850)
  %852 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %853 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %852, i32 0, i32 5
  store i32 %851, i32* %853, align 8
  br label %854

854:                                              ; preds = %837, %828
  %855 = load i8*, i8** @CAM_REQ_CMP, align 8
  %856 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %857 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %856, i32 0, i32 4
  %858 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %857, i32 0, i32 0
  store i8* %855, i8** %858, align 8
  br label %864

859:                                              ; preds = %2
  %860 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %861 = load %union.ccb*, %union.ccb** %4, align 8
  %862 = bitcast %union.ccb* %861 to %struct.TYPE_16__*
  %863 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %862, i32 0, i32 2
  store i8* %860, i8** %863, align 8
  br label %864

864:                                              ; preds = %859, %854, %713, %706, %701, %379, %129, %120, %56
  %865 = load %union.ccb*, %union.ccb** %4, align 8
  %866 = call i32 @xpt_done(%union.ccb* %865)
  br label %867

867:                                              ; preds = %864, %391, %141, %125, %41
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @ata_check_ids(i32, %union.ccb*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bzero(%struct.ata_res*, i32) #1

declare dso_local i32 @ata_cam_begin_transaction(i32, %union.ccb*) #1

declare dso_local i8* @ATA_SETMODE(i32, i64, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ATA_GETREV(i32, i64) #1

declare dso_local i32 @ata_reinit(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @device_get_devclass(i32) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
