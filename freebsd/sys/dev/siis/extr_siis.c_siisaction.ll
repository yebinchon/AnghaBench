; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siisaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siisaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.siis_channel = type { i32, i32, %struct.siis_device*, i32, i32, %struct.siis_device*, i32, %union.ccb*, i32, i32, i32 }
%struct.siis_device = type { i32, i32, i32, i8*, i8*, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"siisaction func_code=%x\0A\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@RECOVERY_NONE = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@CTS_SATA_VALID_TAGS = common dso_local global i32 0, align 4
@SIIS_MAX_SLOTS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_PM = common dso_local global i32 0, align 4
@SIIS_P_CTLSET = common dso_local global i32 0, align 4
@SIIS_P_CTL_PME = common dso_local global i32 0, align 4
@SIIS_P_CTLCLR = common dso_local global i32 0, align 4
@CTS_SATA_VALID_CAPS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PROTO_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@XPORT_SATA = common dso_local global i8* null, align 8
@XPORT_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@SIIS_P_SSTS = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@SIIS_Q_SNTF = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PI_SATAPM = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@PIM_ATA_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"SIIS\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @siisaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siisaction(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.siis_channel*, align 8
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.siis_device*, align 8
  %10 = alloca %struct.ccb_trans_settings*, align 8
  %11 = alloca %struct.siis_device*, align 8
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
  %28 = inttoptr i64 %27 to %struct.siis_channel*
  store %struct.siis_channel* %28, %struct.siis_channel** %7, align 8
  %29 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %30 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %5, align 4
  %32 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %33 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %32, i32 0, i32 9
  %34 = load i32, i32* @MA_OWNED, align 4
  %35 = call i32 @mtx_assert(i32* %33, i32 %34)
  %36 = load %union.ccb*, %union.ccb** %4, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_10__*
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %669 [
    i32 135, label %40
    i32 130, label %40
    i32 136, label %94
    i32 129, label %99
    i32 134, label %279
    i32 132, label %561
    i32 131, label %561
    i32 128, label %568
    i32 133, label %573
  ]

40:                                               ; preds = %2, %2
  %41 = load i32, i32* %5, align 4
  %42 = load %union.ccb*, %union.ccb** %4, align 8
  %43 = call i32 @siis_check_ids(i32 %41, %union.ccb* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %677

46:                                               ; preds = %40
  %47 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %48 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  %52 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %53 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_10__*
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %union.ccb*, %union.ccb** %4, align 8
  %64 = bitcast %union.ccb* %63 to %struct.TYPE_10__*
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %66, 15
  br i1 %67, label %68, label %73

68:                                               ; preds = %62, %46
  %69 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_10__*
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  store i8* %69, i8** %72, align 8
  br label %674

73:                                               ; preds = %62, %56, %51
  %74 = load i32, i32* @RECOVERY_NONE, align 4
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = bitcast %union.ccb* %75 to %struct.TYPE_10__*
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %union.ccb*, %union.ccb** %4, align 8
  %80 = call i32 @siis_check_collision(i32 %78, %union.ccb* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %73
  %83 = load %union.ccb*, %union.ccb** %4, align 8
  %84 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %85 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %84, i32 0, i32 7
  store %union.ccb* %83, %union.ccb** %85, align 8
  %86 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %87 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @xpt_freeze_simq(i32 %88, i32 1)
  br label %677

90:                                               ; preds = %73
  %91 = load i32, i32* %5, align 4
  %92 = load %union.ccb*, %union.ccb** %4, align 8
  %93 = call i32 @siis_begin_transaction(i32 %91, %union.ccb* %92)
  br label %677

94:                                               ; preds = %2
  %95 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %96 = load %union.ccb*, %union.ccb** %4, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_10__*
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  store i8* %95, i8** %98, align 8
  br label %674

99:                                               ; preds = %2
  %100 = load %union.ccb*, %union.ccb** %4, align 8
  %101 = bitcast %union.ccb* %100 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %101, %struct.ccb_trans_settings** %8, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load %union.ccb*, %union.ccb** %4, align 8
  %104 = call i32 @siis_check_ids(i32 %102, %union.ccb* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %677

107:                                              ; preds = %99
  %108 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %109 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %115 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %114, i32 0, i32 5
  %116 = load %struct.siis_device*, %struct.siis_device** %115, align 8
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_10__*
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %116, i64 %121
  store %struct.siis_device* %122, %struct.siis_device** %9, align 8
  br label %133

123:                                              ; preds = %107
  %124 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %125 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %124, i32 0, i32 2
  %126 = load %struct.siis_device*, %struct.siis_device** %125, align 8
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_10__*
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %126, i64 %131
  store %struct.siis_device* %132, %struct.siis_device** %9, align 8
  br label %133

133:                                              ; preds = %123, %113
  %134 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %135 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %133
  %143 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %144 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.siis_device*, %struct.siis_device** %9, align 8
  %149 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %142, %133
  %151 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %152 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %150
  %160 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %161 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.siis_device*, %struct.siis_device** %9, align 8
  %166 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %159, %150
  %168 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %169 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %167
  %177 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %178 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 6
  %181 = load i8*, i8** %180, align 8
  %182 = call i8* @min(i32 8192, i8* %181)
  %183 = load %struct.siis_device*, %struct.siis_device** %9, align 8
  %184 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %183, i32 0, i32 4
  store i8* %182, i8** %184, align 8
  br label %185

185:                                              ; preds = %176, %167
  %186 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %187 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %204

194:                                              ; preds = %185
  %195 = load i32, i32* @SIIS_MAX_SLOTS, align 4
  %196 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %197 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @min(i32 %195, i8* %200)
  %202 = load %struct.siis_device*, %struct.siis_device** %9, align 8
  %203 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %202, i32 0, i32 3
  store i8* %201, i8** %203, align 8
  br label %204

204:                                              ; preds = %194, %185
  %205 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %206 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %240

213:                                              ; preds = %204
  %214 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %215 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %220 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %222 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %213
  %226 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %227 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @SIIS_P_CTLSET, align 4
  %230 = load i32, i32* @SIIS_P_CTL_PME, align 4
  %231 = call i32 @ATA_OUTL(i32 %228, i32 %229, i32 %230)
  br label %239

232:                                              ; preds = %213
  %233 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %234 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @SIIS_P_CTLCLR, align 4
  %237 = load i32, i32* @SIIS_P_CTL_PME, align 4
  %238 = call i32 @ATA_OUTL(i32 %235, i32 %236, i32 %237)
  br label %239

239:                                              ; preds = %232, %225
  br label %240

240:                                              ; preds = %239, %204
  %241 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %242 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %240
  %250 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %251 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.siis_device*, %struct.siis_device** %9, align 8
  %256 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %255, i32 0, i32 2
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %249, %240
  %258 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %259 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %257
  %267 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %268 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = load %struct.siis_device*, %struct.siis_device** %9, align 8
  %273 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  br label %274

274:                                              ; preds = %266, %257
  %275 = load i8*, i8** @CAM_REQ_CMP, align 8
  %276 = load %union.ccb*, %union.ccb** %4, align 8
  %277 = bitcast %union.ccb* %276 to %struct.TYPE_10__*
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 2
  store i8* %275, i8** %278, align 8
  br label %674

279:                                              ; preds = %2
  %280 = load %union.ccb*, %union.ccb** %4, align 8
  %281 = bitcast %union.ccb* %280 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %281, %struct.ccb_trans_settings** %10, align 8
  %282 = load i32, i32* %5, align 4
  %283 = load %union.ccb*, %union.ccb** %4, align 8
  %284 = call i32 @siis_check_ids(i32 %282, %union.ccb* %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %279
  br label %677

287:                                              ; preds = %279
  %288 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %289 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %287
  %294 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %295 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %294, i32 0, i32 5
  %296 = load %struct.siis_device*, %struct.siis_device** %295, align 8
  %297 = load %union.ccb*, %union.ccb** %4, align 8
  %298 = bitcast %union.ccb* %297 to %struct.TYPE_10__*
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %296, i64 %301
  store %struct.siis_device* %302, %struct.siis_device** %11, align 8
  br label %313

303:                                              ; preds = %287
  %304 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %305 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %304, i32 0, i32 2
  %306 = load %struct.siis_device*, %struct.siis_device** %305, align 8
  %307 = load %union.ccb*, %union.ccb** %4, align 8
  %308 = bitcast %union.ccb* %307 to %struct.TYPE_10__*
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %306, i64 %311
  store %struct.siis_device* %312, %struct.siis_device** %11, align 8
  br label %313

313:                                              ; preds = %303, %293
  %314 = load i32, i32* @PROTO_UNSPECIFIED, align 4
  %315 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %316 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %315, i32 0, i32 6
  store i32 %314, i32* %316, align 8
  %317 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %318 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %319 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %318, i32 0, i32 5
  store i8* %317, i8** %319, align 8
  %320 = load i8*, i8** @XPORT_SATA, align 8
  %321 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %322 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %321, i32 0, i32 4
  store i8* %320, i8** %322, align 8
  %323 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %324 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %325 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %324, i32 0, i32 3
  store i8* %323, i8** %325, align 8
  %326 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %327 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  store i32 0, i32* %328, align 4
  %329 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %330 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  store i32 0, i32* %332, align 8
  %333 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %334 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %337 = icmp eq i32 %335, %336
  br i1 %337, label %338, label %435

338:                                              ; preds = %313
  %339 = load %union.ccb*, %union.ccb** %4, align 8
  %340 = bitcast %union.ccb* %339 to %struct.TYPE_10__*
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 15
  br i1 %343, label %355, label %344

344:                                              ; preds = %338
  %345 = load %union.ccb*, %union.ccb** %4, align 8
  %346 = bitcast %union.ccb* %345 to %struct.TYPE_10__*
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %435

350:                                              ; preds = %344
  %351 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %352 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %435, label %355

355:                                              ; preds = %350, %338
  %356 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %357 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @SIIS_P_SSTS, align 4
  %360 = call i32 @ATA_INL(i32 %358, i32 %359)
  %361 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %362 = and i32 %360, %361
  store i32 %362, i32* %12, align 4
  %363 = load i32, i32* %12, align 4
  %364 = and i32 %363, 240
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %381

366:                                              ; preds = %355
  %367 = load i32, i32* %12, align 4
  %368 = and i32 %367, 240
  %369 = ashr i32 %368, 4
  %370 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %371 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 1
  store i32 %369, i32* %373, align 4
  %374 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %375 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %376 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = or i32 %379, %374
  store i32 %380, i32* %378, align 8
  br label %381

381:                                              ; preds = %366, %355
  %382 = load %struct.siis_device*, %struct.siis_device** %11, align 8
  %383 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @CTS_SATA_CAPS_D, align 4
  %386 = and i32 %384, %385
  %387 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %388 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 2
  store i32 %386, i32* %390, align 8
  %391 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %392 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %381
  %396 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %397 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %398 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %396
  store i32 %402, i32* %400, align 8
  br label %403

403:                                              ; preds = %395, %381
  %404 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %405 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %406 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 8
  %410 = or i32 %409, %404
  store i32 %410, i32* %408, align 8
  %411 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %412 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %411, i32 0, i32 2
  %413 = load %struct.siis_device*, %struct.siis_device** %412, align 8
  %414 = load %union.ccb*, %union.ccb** %4, align 8
  %415 = bitcast %union.ccb* %414 to %struct.TYPE_10__*
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %413, i64 %418
  %420 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %423 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = and i32 %426, %421
  store i32 %427, i32* %425, align 8
  %428 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %429 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %430 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = or i32 %433, %428
  store i32 %434, i32* %432, align 8
  br label %486

435:                                              ; preds = %350, %344, %313
  %436 = load %struct.siis_device*, %struct.siis_device** %11, align 8
  %437 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %436, i32 0, i32 0
  %438 = load i32, i32* %437, align 8
  %439 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %440 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 1
  store i32 %438, i32* %442, align 4
  %443 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %444 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %445 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = or i32 %448, %443
  store i32 %449, i32* %447, align 8
  %450 = load %struct.siis_device*, %struct.siis_device** %11, align 8
  %451 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %454 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %455, i32 0, i32 2
  store i32 %452, i32* %456, align 8
  %457 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %458 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 8
  %460 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %461 = icmp eq i32 %459, %460
  br i1 %461, label %462, label %478

462:                                              ; preds = %435
  %463 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %464 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = load i32, i32* @SIIS_Q_SNTF, align 4
  %467 = and i32 %465, %466
  %468 = icmp eq i32 %467, 0
  br i1 %468, label %469, label %478

469:                                              ; preds = %462
  %470 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %471 = xor i32 %470, -1
  %472 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %473 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = and i32 %476, %471
  store i32 %477, i32* %475, align 8
  br label %478

478:                                              ; preds = %469, %462, %435
  %479 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %480 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %481 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = or i32 %484, %479
  store i32 %485, i32* %483, align 8
  br label %486

486:                                              ; preds = %478, %403
  %487 = load %struct.siis_device*, %struct.siis_device** %11, align 8
  %488 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %487, i32 0, i32 5
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %491 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 7
  store i32 %489, i32* %493, align 8
  %494 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %495 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %496 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = or i32 %499, %494
  store i32 %500, i32* %498, align 8
  %501 = load %struct.siis_device*, %struct.siis_device** %11, align 8
  %502 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %501, i32 0, i32 4
  %503 = load i8*, i8** %502, align 8
  %504 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %505 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i32 0, i32 6
  store i8* %503, i8** %507, align 8
  %508 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %509 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %510 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %509, i32 0, i32 0
  %511 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = or i32 %513, %508
  store i32 %514, i32* %512, align 8
  %515 = load %struct.siis_channel*, %struct.siis_channel** %7, align 8
  %516 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %519 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %520, i32 0, i32 5
  store i32 %517, i32* %521, align 8
  %522 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %523 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %524 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = or i32 %527, %522
  store i32 %528, i32* %526, align 8
  %529 = load %struct.siis_device*, %struct.siis_device** %11, align 8
  %530 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %529, i32 0, i32 3
  %531 = load i8*, i8** %530, align 8
  %532 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %533 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %534, i32 0, i32 4
  store i8* %531, i8** %535, align 8
  %536 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %537 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %538 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 8
  %542 = or i32 %541, %536
  store i32 %542, i32* %540, align 8
  %543 = load %struct.siis_device*, %struct.siis_device** %11, align 8
  %544 = getelementptr inbounds %struct.siis_device, %struct.siis_device* %543, i32 0, i32 2
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %547 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %546, i32 0, i32 0
  %548 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %548, i32 0, i32 3
  store i32 %545, i32* %549, align 4
  %550 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %551 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %552 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = or i32 %555, %550
  store i32 %556, i32* %554, align 8
  %557 = load i8*, i8** @CAM_REQ_CMP, align 8
  %558 = load %union.ccb*, %union.ccb** %4, align 8
  %559 = bitcast %union.ccb* %558 to %struct.TYPE_10__*
  %560 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %559, i32 0, i32 2
  store i8* %557, i8** %560, align 8
  br label %674

561:                                              ; preds = %2, %2
  %562 = load i32, i32* %5, align 4
  %563 = call i32 @siis_reset(i32 %562)
  %564 = load i8*, i8** @CAM_REQ_CMP, align 8
  %565 = load %union.ccb*, %union.ccb** %4, align 8
  %566 = bitcast %union.ccb* %565 to %struct.TYPE_10__*
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i32 0, i32 2
  store i8* %564, i8** %567, align 8
  br label %674

568:                                              ; preds = %2
  %569 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %570 = load %union.ccb*, %union.ccb** %4, align 8
  %571 = bitcast %union.ccb* %570 to %struct.TYPE_10__*
  %572 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %571, i32 0, i32 2
  store i8* %569, i8** %572, align 8
  br label %674

573:                                              ; preds = %2
  %574 = load %union.ccb*, %union.ccb** %4, align 8
  %575 = bitcast %union.ccb* %574 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %575, %struct.ccb_pathinq** %13, align 8
  %576 = load i32, i32* %5, align 4
  %577 = call i32 @device_get_parent(i32 %576)
  store i32 %577, i32* %6, align 4
  %578 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %579 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %578, i32 0, i32 0
  store i32 1, i32* %579, align 8
  %580 = load i32, i32* @PI_SDTR_ABLE, align 4
  %581 = load i32, i32* @PI_TAG_ABLE, align 4
  %582 = or i32 %580, %581
  %583 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %584 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %583, i32 0, i32 1
  store i32 %582, i32* %584, align 4
  %585 = load i32, i32* @PI_SATAPM, align 4
  %586 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %587 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %586, i32 0, i32 1
  %588 = load i32, i32* %587, align 4
  %589 = or i32 %588, %585
  store i32 %589, i32* %587, align 4
  %590 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %591 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %590, i32 0, i32 23
  store i32 0, i32* %591, align 8
  %592 = load i32, i32* @PIM_SEQSCAN, align 4
  %593 = load i32, i32* @PIM_UNMAPPED, align 4
  %594 = or i32 %592, %593
  %595 = load i32, i32* @PIM_ATA_EXT, align 4
  %596 = or i32 %594, %595
  %597 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %598 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %597, i32 0, i32 2
  store i32 %596, i32* %598, align 8
  %599 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %600 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %599, i32 0, i32 22
  store i32 0, i32* %600, align 4
  %601 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %602 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %601, i32 0, i32 3
  store i32 15, i32* %602, align 4
  %603 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %604 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %603, i32 0, i32 21
  store i32 0, i32* %604, align 8
  %605 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %606 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %605, i32 0, i32 20
  store i32 0, i32* %606, align 4
  %607 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %608 = call i32 @cam_sim_bus(%struct.cam_sim* %607)
  %609 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %610 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %609, i32 0, i32 19
  store i32 %608, i32* %610, align 8
  %611 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %612 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %611, i32 0, i32 4
  store i32 150000, i32* %612, align 8
  %613 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %614 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %613, i32 0, i32 18
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* @SIM_IDLEN, align 4
  %617 = call i32 @strlcpy(i32 %615, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %616)
  %618 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %619 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %618, i32 0, i32 17
  %620 = load i32, i32* %619, align 8
  %621 = load i32, i32* @HBA_IDLEN, align 4
  %622 = call i32 @strlcpy(i32 %620, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %621)
  %623 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %624 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %623, i32 0, i32 16
  %625 = load i32, i32* %624, align 4
  %626 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %627 = call i8* @cam_sim_name(%struct.cam_sim* %626)
  %628 = load i32, i32* @DEV_IDLEN, align 4
  %629 = call i32 @strlcpy(i32 %625, i8* %627, i32 %628)
  %630 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %631 = call i32 @cam_sim_unit(%struct.cam_sim* %630)
  %632 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %633 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %632, i32 0, i32 15
  store i32 %631, i32* %633, align 8
  %634 = load i8*, i8** @XPORT_SATA, align 8
  %635 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %636 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %635, i32 0, i32 14
  store i8* %634, i8** %636, align 8
  %637 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %638 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %639 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %638, i32 0, i32 13
  store i8* %637, i8** %639, align 8
  %640 = load i32, i32* @PROTO_ATA, align 4
  %641 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %642 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %641, i32 0, i32 12
  store i32 %640, i32* %642, align 8
  %643 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %644 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %645 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %644, i32 0, i32 11
  store i8* %643, i8** %645, align 8
  %646 = load i32, i32* @MAXPHYS, align 4
  %647 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %648 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %647, i32 0, i32 10
  store i32 %646, i32* %648, align 8
  %649 = load i32, i32* %6, align 4
  %650 = call i32 @pci_get_vendor(i32 %649)
  %651 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %652 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %651, i32 0, i32 9
  store i32 %650, i32* %652, align 4
  %653 = load i32, i32* %6, align 4
  %654 = call i32 @pci_get_device(i32 %653)
  %655 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %656 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %655, i32 0, i32 8
  store i32 %654, i32* %656, align 8
  %657 = load i32, i32* %6, align 4
  %658 = call i32 @pci_get_subvendor(i32 %657)
  %659 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %660 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %659, i32 0, i32 7
  store i32 %658, i32* %660, align 4
  %661 = load i32, i32* %6, align 4
  %662 = call i32 @pci_get_subdevice(i32 %661)
  %663 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %664 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %663, i32 0, i32 6
  store i32 %662, i32* %664, align 8
  %665 = load i8*, i8** @CAM_REQ_CMP, align 8
  %666 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %667 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %666, i32 0, i32 5
  %668 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %667, i32 0, i32 0
  store i8* %665, i8** %668, align 8
  br label %674

669:                                              ; preds = %2
  %670 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %671 = load %union.ccb*, %union.ccb** %4, align 8
  %672 = bitcast %union.ccb* %671 to %struct.TYPE_10__*
  %673 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %672, i32 0, i32 2
  store i8* %670, i8** %673, align 8
  br label %674

674:                                              ; preds = %669, %573, %568, %561, %486, %274, %94, %68
  %675 = load %union.ccb*, %union.ccb** %4, align 8
  %676 = call i32 @xpt_done(%union.ccb* %675)
  br label %677

677:                                              ; preds = %674, %286, %106, %90, %82, %45
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @siis_check_ids(i32, %union.ccb*) #1

declare dso_local i32 @siis_check_collision(i32, %union.ccb*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @siis_begin_transaction(i32, %union.ccb*) #1

declare dso_local i8* @min(i32, i8*) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @siis_reset(i32) #1

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
