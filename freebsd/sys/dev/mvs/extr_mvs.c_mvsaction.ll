; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvsaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvsaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.mvs_channel = type { i32, i32, %struct.mvs_device*, i32, %struct.mvs_device*, i32, %union.ccb*, i32, i32 }
%struct.mvs_device = type { i32, i32, i32, i8*, i8*, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mvsaction func_code=%x\0A\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@RECOVERY_NONE = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@MVS_Q_GENIIE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_TAGS = common dso_local global i32 0, align 4
@MVS_MAX_SLOTS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_PM = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CTS_SATA_VALID_CAPS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PROTO_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@XPORT_SATA = common dso_local global i8* null, align 8
@XPORT_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@SATA_SS = common dso_local global i32 0, align 4
@SATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@MVS_Q_GENI = common dso_local global i32 0, align 4
@PI_SATAPM = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Marvell\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@MVS_Q_SOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @mvsaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvsaction(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvs_channel*, align 8
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.mvs_device*, align 8
  %10 = alloca %struct.ccb_trans_settings*, align 8
  %11 = alloca %struct.mvs_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_10__*
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_10__*
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @CAM_DEBUG(i32 %17, i32 %18, i8* %24)
  %26 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %27 = call i64 @cam_sim_softc(%struct.cam_sim* %26)
  %28 = inttoptr i64 %27 to %struct.mvs_channel*
  store %struct.mvs_channel* %28, %struct.mvs_channel** %7, align 8
  %29 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %30 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %29, i32 0, i32 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_10__*
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %673 [
    i32 135, label %36
    i32 130, label %36
    i32 136, label %90
    i32 129, label %95
    i32 134, label %264
    i32 132, label %526
    i32 131, label %526
    i32 128, label %533
    i32 133, label %538
  ]

36:                                               ; preds = %2, %2
  %37 = load i32, i32* %5, align 4
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = call i32 @mvs_check_ids(i32 %37, %union.ccb* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %681

42:                                               ; preds = %36
  %43 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %44 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %42
  %48 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %49 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_10__*
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %52
  %59 = load %union.ccb*, %union.ccb** %4, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_10__*
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 15
  br i1 %63, label %64, label %69

64:                                               ; preds = %58, %42
  %65 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %66 = load %union.ccb*, %union.ccb** %4, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store i8* %65, i8** %68, align 8
  br label %678

69:                                               ; preds = %58, %52, %47
  %70 = load i32, i32* @RECOVERY_NONE, align 4
  %71 = load %union.ccb*, %union.ccb** %4, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_10__*
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* %5, align 4
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = call i32 @mvs_check_collision(i32 %74, %union.ccb* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %69
  %79 = load %union.ccb*, %union.ccb** %4, align 8
  %80 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %81 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %80, i32 0, i32 6
  store %union.ccb* %79, %union.ccb** %81, align 8
  %82 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %83 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @xpt_freeze_simq(i32 %84, i32 1)
  br label %681

86:                                               ; preds = %69
  %87 = load i32, i32* %5, align 4
  %88 = load %union.ccb*, %union.ccb** %4, align 8
  %89 = call i32 @mvs_begin_transaction(i32 %87, %union.ccb* %88)
  br label %681

90:                                               ; preds = %2
  %91 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %92 = load %union.ccb*, %union.ccb** %4, align 8
  %93 = bitcast %union.ccb* %92 to %struct.TYPE_10__*
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  br label %678

95:                                               ; preds = %2
  %96 = load %union.ccb*, %union.ccb** %4, align 8
  %97 = bitcast %union.ccb* %96 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %97, %struct.ccb_trans_settings** %8, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %union.ccb*, %union.ccb** %4, align 8
  %100 = call i32 @mvs_check_ids(i32 %98, %union.ccb* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %681

103:                                              ; preds = %95
  %104 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %105 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %111 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %110, i32 0, i32 4
  %112 = load %struct.mvs_device*, %struct.mvs_device** %111, align 8
  %113 = load %union.ccb*, %union.ccb** %4, align 8
  %114 = bitcast %union.ccb* %113 to %struct.TYPE_10__*
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %112, i64 %117
  store %struct.mvs_device* %118, %struct.mvs_device** %9, align 8
  br label %129

119:                                              ; preds = %103
  %120 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %121 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %120, i32 0, i32 2
  %122 = load %struct.mvs_device*, %struct.mvs_device** %121, align 8
  %123 = load %union.ccb*, %union.ccb** %4, align 8
  %124 = bitcast %union.ccb* %123 to %struct.TYPE_10__*
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %122, i64 %127
  store %struct.mvs_device* %128, %struct.mvs_device** %9, align 8
  br label %129

129:                                              ; preds = %119, %109
  %130 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %131 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %129
  %139 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %140 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %145 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %138, %129
  %147 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %148 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %146
  %156 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %157 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 7
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %162 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %155, %146
  %164 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %165 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %163
  %173 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %174 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @MVS_Q_GENIIE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i32 8192, i32 2048
  %181 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %182 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 6
  %185 = load i8*, i8** %184, align 8
  %186 = call i8* @min(i32 %180, i8* %185)
  %187 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %188 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %187, i32 0, i32 4
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %172, %163
  %190 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %191 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %208

198:                                              ; preds = %189
  %199 = load i32, i32* @MVS_MAX_SLOTS, align 4
  %200 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %201 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 4
  %204 = load i8*, i8** %203, align 8
  %205 = call i8* @min(i32 %199, i8* %204)
  %206 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %207 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %206, i32 0, i32 3
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %198, %189
  %209 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %210 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %208
  %218 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %219 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %224 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %217, %208
  %226 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %227 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %242

234:                                              ; preds = %225
  %235 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %236 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %241 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %240, i32 0, i32 2
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %234, %225
  %243 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %244 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %242
  %252 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %253 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.mvs_device*, %struct.mvs_device** %9, align 8
  %258 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 4
  br label %259

259:                                              ; preds = %251, %242
  %260 = load i8*, i8** @CAM_REQ_CMP, align 8
  %261 = load %union.ccb*, %union.ccb** %4, align 8
  %262 = bitcast %union.ccb* %261 to %struct.TYPE_10__*
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  store i8* %260, i8** %263, align 8
  br label %678

264:                                              ; preds = %2
  %265 = load %union.ccb*, %union.ccb** %4, align 8
  %266 = bitcast %union.ccb* %265 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %266, %struct.ccb_trans_settings** %10, align 8
  %267 = load i32, i32* %5, align 4
  %268 = load %union.ccb*, %union.ccb** %4, align 8
  %269 = call i32 @mvs_check_ids(i32 %267, %union.ccb* %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %264
  br label %681

272:                                              ; preds = %264
  %273 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %274 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %288

278:                                              ; preds = %272
  %279 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %280 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %279, i32 0, i32 4
  %281 = load %struct.mvs_device*, %struct.mvs_device** %280, align 8
  %282 = load %union.ccb*, %union.ccb** %4, align 8
  %283 = bitcast %union.ccb* %282 to %struct.TYPE_10__*
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %281, i64 %286
  store %struct.mvs_device* %287, %struct.mvs_device** %11, align 8
  br label %298

288:                                              ; preds = %272
  %289 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %290 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %289, i32 0, i32 2
  %291 = load %struct.mvs_device*, %struct.mvs_device** %290, align 8
  %292 = load %union.ccb*, %union.ccb** %4, align 8
  %293 = bitcast %union.ccb* %292 to %struct.TYPE_10__*
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %291, i64 %296
  store %struct.mvs_device* %297, %struct.mvs_device** %11, align 8
  br label %298

298:                                              ; preds = %288, %278
  %299 = load i32, i32* @PROTO_UNSPECIFIED, align 4
  %300 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %301 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %300, i32 0, i32 6
  store i32 %299, i32* %301, align 8
  %302 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %303 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %304 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %303, i32 0, i32 5
  store i8* %302, i8** %304, align 8
  %305 = load i8*, i8** @XPORT_SATA, align 8
  %306 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %307 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %306, i32 0, i32 4
  store i8* %305, i8** %307, align 8
  %308 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %309 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %310 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %309, i32 0, i32 3
  store i8* %308, i8** %310, align 8
  %311 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %312 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 0
  store i32 0, i32* %313, align 4
  %314 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %315 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 0
  store i32 0, i32* %317, align 8
  %318 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %319 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %407

323:                                              ; preds = %298
  %324 = load %union.ccb*, %union.ccb** %4, align 8
  %325 = bitcast %union.ccb* %324 to %struct.TYPE_10__*
  %326 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 15
  br i1 %328, label %340, label %329

329:                                              ; preds = %323
  %330 = load %union.ccb*, %union.ccb** %4, align 8
  %331 = bitcast %union.ccb* %330 to %struct.TYPE_10__*
  %332 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %407

335:                                              ; preds = %329
  %336 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %337 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %407, label %340

340:                                              ; preds = %335, %323
  %341 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %342 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @SATA_SS, align 4
  %345 = call i32 @ATA_INL(i32 %343, i32 %344)
  %346 = load i32, i32* @SATA_SS_SPD_MASK, align 4
  %347 = and i32 %345, %346
  store i32 %347, i32* %12, align 4
  %348 = load i32, i32* %12, align 4
  %349 = and i32 %348, 240
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %366

351:                                              ; preds = %340
  %352 = load i32, i32* %12, align 4
  %353 = and i32 %352, 240
  %354 = ashr i32 %353, 4
  %355 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %356 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 1
  store i32 %354, i32* %358, align 4
  %359 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %360 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %361 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = or i32 %364, %359
  store i32 %365, i32* %363, align 8
  br label %366

366:                                              ; preds = %351, %340
  %367 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %368 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %367, i32 0, i32 1
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* @CTS_SATA_CAPS_D, align 4
  %371 = and i32 %369, %370
  %372 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %373 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 2
  store i32 %371, i32* %375, align 8
  %376 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %377 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %378 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 2
  %381 = load i32, i32* %380, align 8
  %382 = or i32 %381, %376
  store i32 %382, i32* %380, align 8
  %383 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %384 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %383, i32 0, i32 2
  %385 = load %struct.mvs_device*, %struct.mvs_device** %384, align 8
  %386 = load %union.ccb*, %union.ccb** %4, align 8
  %387 = bitcast %union.ccb* %386 to %struct.TYPE_10__*
  %388 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %385, i64 %390
  %392 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %395 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = and i32 %398, %393
  store i32 %399, i32* %397, align 8
  %400 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %401 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %402 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = or i32 %405, %400
  store i32 %406, i32* %404, align 8
  br label %451

407:                                              ; preds = %335, %329, %298
  %408 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %409 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %412 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %411, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 1
  store i32 %410, i32* %414, align 4
  %415 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %416 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %417 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = or i32 %420, %415
  store i32 %421, i32* %419, align 8
  %422 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %423 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %426 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %427, i32 0, i32 2
  store i32 %424, i32* %428, align 8
  %429 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %430 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %443

434:                                              ; preds = %407
  %435 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %436 = xor i32 %435, -1
  %437 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %438 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 8
  %442 = and i32 %441, %436
  store i32 %442, i32* %440, align 8
  br label %443

443:                                              ; preds = %434, %407
  %444 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %445 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %446 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = or i32 %449, %444
  store i32 %450, i32* %448, align 8
  br label %451

451:                                              ; preds = %443, %366
  %452 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %453 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %452, i32 0, i32 5
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %456 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %456, i32 0, i32 0
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 7
  store i32 %454, i32* %458, align 8
  %459 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %460 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %461 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = or i32 %464, %459
  store i32 %465, i32* %463, align 8
  %466 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %467 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %466, i32 0, i32 4
  %468 = load i8*, i8** %467, align 8
  %469 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %470 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 6
  store i8* %468, i8** %472, align 8
  %473 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %474 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %475 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = or i32 %478, %473
  store i32 %479, i32* %477, align 8
  %480 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %481 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %484 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %485, i32 0, i32 5
  store i32 %482, i32* %486, align 8
  %487 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %488 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %489 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %489, i32 0, i32 0
  %491 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = or i32 %492, %487
  store i32 %493, i32* %491, align 8
  %494 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %495 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %494, i32 0, i32 3
  %496 = load i8*, i8** %495, align 8
  %497 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %498 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %499, i32 0, i32 4
  store i8* %496, i8** %500, align 8
  %501 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %502 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %503 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %503, i32 0, i32 0
  %505 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = or i32 %506, %501
  store i32 %507, i32* %505, align 8
  %508 = load %struct.mvs_device*, %struct.mvs_device** %11, align 8
  %509 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %508, i32 0, i32 2
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %512 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i32 0, i32 3
  store i32 %510, i32* %514, align 4
  %515 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %516 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %517 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %516, i32 0, i32 0
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %517, i32 0, i32 0
  %519 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 8
  %521 = or i32 %520, %515
  store i32 %521, i32* %519, align 8
  %522 = load i8*, i8** @CAM_REQ_CMP, align 8
  %523 = load %union.ccb*, %union.ccb** %4, align 8
  %524 = bitcast %union.ccb* %523 to %struct.TYPE_10__*
  %525 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %524, i32 0, i32 2
  store i8* %522, i8** %525, align 8
  br label %678

526:                                              ; preds = %2, %2
  %527 = load i32, i32* %5, align 4
  %528 = call i32 @mvs_reset(i32 %527)
  %529 = load i8*, i8** @CAM_REQ_CMP, align 8
  %530 = load %union.ccb*, %union.ccb** %4, align 8
  %531 = bitcast %union.ccb* %530 to %struct.TYPE_10__*
  %532 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %531, i32 0, i32 2
  store i8* %529, i8** %532, align 8
  br label %678

533:                                              ; preds = %2
  %534 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %535 = load %union.ccb*, %union.ccb** %4, align 8
  %536 = bitcast %union.ccb* %535 to %struct.TYPE_10__*
  %537 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %536, i32 0, i32 2
  store i8* %534, i8** %537, align 8
  br label %678

538:                                              ; preds = %2
  %539 = load %union.ccb*, %union.ccb** %4, align 8
  %540 = bitcast %union.ccb* %539 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %540, %struct.ccb_pathinq** %13, align 8
  %541 = load i32, i32* %5, align 4
  %542 = call i32 @device_get_parent(i32 %541)
  store i32 %542, i32* %6, align 4
  %543 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %544 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %543, i32 0, i32 0
  store i32 1, i32* %544, align 8
  %545 = load i32, i32* @PI_SDTR_ABLE, align 4
  %546 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %547 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %546, i32 0, i32 23
  store i32 %545, i32* %547, align 8
  %548 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %549 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %548, i32 0, i32 0
  %550 = load i32, i32* %549, align 8
  %551 = load i32, i32* @MVS_Q_GENI, align 4
  %552 = and i32 %550, %551
  %553 = icmp ne i32 %552, 0
  br i1 %553, label %578, label %554

554:                                              ; preds = %538
  %555 = load i32, i32* @PI_SATAPM, align 4
  %556 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %557 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %556, i32 0, i32 23
  %558 = load i32, i32* %557, align 8
  %559 = or i32 %558, %555
  store i32 %559, i32* %557, align 8
  %560 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %561 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %560, i32 0, i32 0
  %562 = load i32, i32* %561, align 8
  %563 = load i32, i32* @MVS_Q_GENIIE, align 4
  %564 = and i32 %562, %563
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %571, label %566

566:                                              ; preds = %554
  %567 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %568 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %567, i32 0, i32 1
  %569 = load i32, i32* %568, align 4
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %577

571:                                              ; preds = %566, %554
  %572 = load i32, i32* @PI_TAG_ABLE, align 4
  %573 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %574 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %573, i32 0, i32 23
  %575 = load i32, i32* %574, align 8
  %576 = or i32 %575, %572
  store i32 %576, i32* %574, align 8
  br label %577

577:                                              ; preds = %571, %566
  br label %578

578:                                              ; preds = %577, %538
  %579 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %580 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %579, i32 0, i32 22
  store i32 0, i32* %580, align 4
  %581 = load i32, i32* @PIM_SEQSCAN, align 4
  %582 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %583 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %582, i32 0, i32 21
  store i32 %581, i32* %583, align 8
  %584 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %585 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %584, i32 0, i32 20
  store i32 0, i32* %585, align 4
  %586 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %587 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %586, i32 0, i32 0
  %588 = load i32, i32* %587, align 8
  %589 = load i32, i32* @MVS_Q_GENI, align 4
  %590 = and i32 %588, %589
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %595, label %592

592:                                              ; preds = %578
  %593 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %594 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %593, i32 0, i32 1
  store i32 15, i32* %594, align 4
  br label %598

595:                                              ; preds = %578
  %596 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %597 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %596, i32 0, i32 1
  store i32 0, i32* %597, align 4
  br label %598

598:                                              ; preds = %595, %592
  %599 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %600 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %599, i32 0, i32 19
  store i32 0, i32* %600, align 8
  %601 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %602 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %601, i32 0, i32 18
  store i32 0, i32* %602, align 4
  %603 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %604 = call i32 @cam_sim_bus(%struct.cam_sim* %603)
  %605 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %606 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %605, i32 0, i32 17
  store i32 %604, i32* %606, align 8
  %607 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %608 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %607, i32 0, i32 2
  store i32 150000, i32* %608, align 8
  %609 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %610 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %609, i32 0, i32 16
  %611 = load i32, i32* %610, align 4
  %612 = load i32, i32* @SIM_IDLEN, align 4
  %613 = call i32 @strlcpy(i32 %611, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %612)
  %614 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %615 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %614, i32 0, i32 15
  %616 = load i32, i32* %615, align 8
  %617 = load i32, i32* @HBA_IDLEN, align 4
  %618 = call i32 @strlcpy(i32 %616, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %617)
  %619 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %620 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %619, i32 0, i32 14
  %621 = load i32, i32* %620, align 4
  %622 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %623 = call i8* @cam_sim_name(%struct.cam_sim* %622)
  %624 = load i32, i32* @DEV_IDLEN, align 4
  %625 = call i32 @strlcpy(i32 %621, i8* %623, i32 %624)
  %626 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %627 = call i32 @cam_sim_unit(%struct.cam_sim* %626)
  %628 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %629 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %628, i32 0, i32 13
  store i32 %627, i32* %629, align 8
  %630 = load i8*, i8** @XPORT_SATA, align 8
  %631 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %632 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %631, i32 0, i32 12
  store i8* %630, i8** %632, align 8
  %633 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %634 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %635 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %634, i32 0, i32 11
  store i8* %633, i8** %635, align 8
  %636 = load i32, i32* @PROTO_ATA, align 4
  %637 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %638 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %637, i32 0, i32 10
  store i32 %636, i32* %638, align 8
  %639 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %640 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %641 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %640, i32 0, i32 9
  store i8* %639, i8** %641, align 8
  %642 = load i32, i32* @MAXPHYS, align 4
  %643 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %644 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %643, i32 0, i32 8
  store i32 %642, i32* %644, align 8
  %645 = load %struct.mvs_channel*, %struct.mvs_channel** %7, align 8
  %646 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %645, i32 0, i32 0
  %647 = load i32, i32* %646, align 8
  %648 = load i32, i32* @MVS_Q_SOC, align 4
  %649 = and i32 %647, %648
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %651, label %668

651:                                              ; preds = %598
  %652 = load i32, i32* %6, align 4
  %653 = call i32 @pci_get_vendor(i32 %652)
  %654 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %655 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %654, i32 0, i32 7
  store i32 %653, i32* %655, align 4
  %656 = load i32, i32* %6, align 4
  %657 = call i32 @pci_get_device(i32 %656)
  %658 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %659 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %658, i32 0, i32 6
  store i32 %657, i32* %659, align 8
  %660 = load i32, i32* %6, align 4
  %661 = call i32 @pci_get_subvendor(i32 %660)
  %662 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %663 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %662, i32 0, i32 5
  store i32 %661, i32* %663, align 4
  %664 = load i32, i32* %6, align 4
  %665 = call i32 @pci_get_subdevice(i32 %664)
  %666 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %667 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %666, i32 0, i32 4
  store i32 %665, i32* %667, align 8
  br label %668

668:                                              ; preds = %651, %598
  %669 = load i8*, i8** @CAM_REQ_CMP, align 8
  %670 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %671 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %670, i32 0, i32 3
  %672 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %671, i32 0, i32 0
  store i8* %669, i8** %672, align 8
  br label %678

673:                                              ; preds = %2
  %674 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %675 = load %union.ccb*, %union.ccb** %4, align 8
  %676 = bitcast %union.ccb* %675 to %struct.TYPE_10__*
  %677 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %676, i32 0, i32 2
  store i8* %674, i8** %677, align 8
  br label %678

678:                                              ; preds = %673, %668, %533, %526, %451, %259, %90, %64
  %679 = load %union.ccb*, %union.ccb** %4, align 8
  %680 = call i32 @xpt_done(%union.ccb* %679)
  br label %681

681:                                              ; preds = %678, %271, %102, %86, %78, %41
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mvs_check_ids(i32, %union.ccb*) #1

declare dso_local i32 @mvs_check_collision(i32, %union.ccb*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @mvs_begin_transaction(i32, %union.ccb*) #1

declare dso_local i8* @min(i32, i8*) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @mvs_reset(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

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
