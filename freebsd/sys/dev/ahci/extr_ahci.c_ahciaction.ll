; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahciaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahciaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, i32, i32, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.ahci_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ahci_device*, i32, i32, %struct.ahci_device*, i32, %union.ccb*, i32 }
%struct.ahci_device = type { i32, i32, i32, i32, i32, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ahciaction func_code=%x\0A\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@RECOVERY_NONE = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@CTS_SATA_VALID_TAGS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_PM = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CTS_SATA_VALID_CAPS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PROTO_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@XPORT_SATA = common dso_local global i8* null, align 8
@XPORT_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@AHCI_P_SSTS = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D = common dso_local global i32 0, align 4
@AHCI_CAP_PSC = common dso_local global i32 0, align 4
@AHCI_CAP_SSC = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@AHCI_CAP2_APST = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_APST = common dso_local global i32 0, align 4
@AHCI_CAP_SNCQ = common dso_local global i32 0, align 4
@AHCI_Q_NOAA = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_DMAAA = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@AHCI_CAP_SPM = common dso_local global i32 0, align 4
@PI_SATAPM = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@AHCI_Q_NOAUX = common dso_local global i32 0, align 4
@PIM_ATA_EXT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"AHCI\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@AHCI_Q_MAXIO_64K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @ahciaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahciaction(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ahci_channel*, align 8
  %6 = alloca %struct.ccb_trans_settings*, align 8
  %7 = alloca %struct.ahci_device*, align 8
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.ahci_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_10__*
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_10__*
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @CAM_DEBUG(i32 %15, i32 %16, i8* %22)
  %24 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %25 = call i64 @cam_sim_softc(%struct.cam_sim* %24)
  %26 = inttoptr i64 %25 to %struct.ahci_channel*
  store %struct.ahci_channel* %26, %struct.ahci_channel** %5, align 8
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_10__*
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %728 [
    i32 135, label %31
    i32 130, label %31
    i32 136, label %85
    i32 129, label %90
    i32 134, label %255
    i32 132, label %562
    i32 131, label %562
    i32 128, label %569
    i32 133, label %574
  ]

31:                                               ; preds = %2, %2
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = call i32 @ahci_check_ids(%struct.ahci_channel* %32, %union.ccb* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %737

37:                                               ; preds = %31
  %38 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %39 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %44 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %union.ccb*, %union.ccb** %4, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %union.ccb*, %union.ccb** %4, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 15
  br i1 %58, label %59, label %64

59:                                               ; preds = %53, %37
  %60 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  br label %733

64:                                               ; preds = %53, %47, %42
  %65 = load i32, i32* @RECOVERY_NONE, align 4
  %66 = load %union.ccb*, %union.ccb** %4, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 8
  %69 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = call i32 @ahci_check_collision(%struct.ahci_channel* %69, %union.ccb* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %union.ccb*, %union.ccb** %4, align 8
  %75 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %76 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %75, i32 0, i32 14
  store %union.ccb* %74, %union.ccb** %76, align 8
  %77 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %78 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %77, i32 0, i32 13
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @xpt_freeze_simq(i32 %79, i32 1)
  br label %737

81:                                               ; preds = %64
  %82 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %83 = load %union.ccb*, %union.ccb** %4, align 8
  %84 = call i32 @ahci_begin_transaction(%struct.ahci_channel* %82, %union.ccb* %83)
  br label %737

85:                                               ; preds = %2
  %86 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %87 = load %union.ccb*, %union.ccb** %4, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_10__*
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  br label %733

90:                                               ; preds = %2
  %91 = load %union.ccb*, %union.ccb** %4, align 8
  %92 = bitcast %union.ccb* %91 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %92, %struct.ccb_trans_settings** %6, align 8
  %93 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %94 = load %union.ccb*, %union.ccb** %4, align 8
  %95 = call i32 @ahci_check_ids(%struct.ahci_channel* %93, %union.ccb* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %737

98:                                               ; preds = %90
  %99 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %100 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %106 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %105, i32 0, i32 12
  %107 = load %struct.ahci_device*, %struct.ahci_device** %106, align 8
  %108 = load %union.ccb*, %union.ccb** %4, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_10__*
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %107, i64 %112
  store %struct.ahci_device* %113, %struct.ahci_device** %7, align 8
  br label %124

114:                                              ; preds = %98
  %115 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %116 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %115, i32 0, i32 9
  %117 = load %struct.ahci_device*, %struct.ahci_device** %116, align 8
  %118 = load %union.ccb*, %union.ccb** %4, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_10__*
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %117, i64 %122
  store %struct.ahci_device* %123, %struct.ahci_device** %7, align 8
  br label %124

124:                                              ; preds = %114, %104
  %125 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %126 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %124
  %134 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %135 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ahci_device*, %struct.ahci_device** %7, align 8
  %140 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %133, %124
  %142 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %143 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %141
  %151 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %152 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 7
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ahci_device*, %struct.ahci_device** %7, align 8
  %157 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %156, i32 0, i32 5
  store i32 %155, i32* %157, align 4
  br label %158

158:                                              ; preds = %150, %141
  %159 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %160 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %158
  %168 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %169 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i8* @min(i32 8192, i32 %172)
  %174 = ptrtoint i8* %173 to i32
  %175 = load %struct.ahci_device*, %struct.ahci_device** %7, align 8
  %176 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %158
  %178 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %179 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %177
  %187 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %188 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %191 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @min(i32 %189, i32 %194)
  %196 = ptrtoint i8* %195 to i32
  %197 = load %struct.ahci_device*, %struct.ahci_device** %7, align 8
  %198 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %197, i32 0, i32 2
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %186, %177
  %200 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %201 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %199
  %209 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %210 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %215 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %214, i32 0, i32 8
  store i32 %213, i32* %215, align 8
  br label %216

216:                                              ; preds = %208, %199
  %217 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %218 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %216
  %226 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %227 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ahci_device*, %struct.ahci_device** %7, align 8
  %232 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %231, i32 0, i32 4
  store i32 %230, i32* %232, align 4
  br label %233

233:                                              ; preds = %225, %216
  %234 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %235 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %233
  %243 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %244 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.ahci_device*, %struct.ahci_device** %7, align 8
  %249 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %242, %233
  %251 = load i8*, i8** @CAM_REQ_CMP, align 8
  %252 = load %union.ccb*, %union.ccb** %4, align 8
  %253 = bitcast %union.ccb* %252 to %struct.TYPE_10__*
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 2
  store i8* %251, i8** %254, align 8
  br label %733

255:                                              ; preds = %2
  %256 = load %union.ccb*, %union.ccb** %4, align 8
  %257 = bitcast %union.ccb* %256 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %257, %struct.ccb_trans_settings** %8, align 8
  %258 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %259 = load %union.ccb*, %union.ccb** %4, align 8
  %260 = call i32 @ahci_check_ids(%struct.ahci_channel* %258, %union.ccb* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %255
  br label %737

263:                                              ; preds = %255
  %264 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %265 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %279

269:                                              ; preds = %263
  %270 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %271 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %270, i32 0, i32 12
  %272 = load %struct.ahci_device*, %struct.ahci_device** %271, align 8
  %273 = load %union.ccb*, %union.ccb** %4, align 8
  %274 = bitcast %union.ccb* %273 to %struct.TYPE_10__*
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %272, i64 %277
  store %struct.ahci_device* %278, %struct.ahci_device** %9, align 8
  br label %289

279:                                              ; preds = %263
  %280 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %281 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %280, i32 0, i32 9
  %282 = load %struct.ahci_device*, %struct.ahci_device** %281, align 8
  %283 = load %union.ccb*, %union.ccb** %4, align 8
  %284 = bitcast %union.ccb* %283 to %struct.TYPE_10__*
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %282, i64 %287
  store %struct.ahci_device* %288, %struct.ahci_device** %9, align 8
  br label %289

289:                                              ; preds = %279, %269
  %290 = load i32, i32* @PROTO_UNSPECIFIED, align 4
  %291 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %292 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %291, i32 0, i32 6
  store i32 %290, i32* %292, align 8
  %293 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %294 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %295 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %294, i32 0, i32 5
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @XPORT_SATA, align 8
  %297 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %298 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %297, i32 0, i32 4
  store i8* %296, i8** %298, align 8
  %299 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %300 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %301 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %300, i32 0, i32 3
  store i8* %299, i8** %301, align 8
  %302 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %303 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  store i32 0, i32* %304, align 4
  %305 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %306 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 0
  store i32 0, i32* %308, align 8
  %309 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %310 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %458

314:                                              ; preds = %289
  %315 = load %union.ccb*, %union.ccb** %4, align 8
  %316 = bitcast %union.ccb* %315 to %struct.TYPE_10__*
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 15
  br i1 %319, label %331, label %320

320:                                              ; preds = %314
  %321 = load %union.ccb*, %union.ccb** %4, align 8
  %322 = bitcast %union.ccb* %321 to %struct.TYPE_10__*
  %323 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %458

326:                                              ; preds = %320
  %327 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %328 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %327, i32 0, i32 8
  %329 = load i32, i32* %328, align 8
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %458, label %331

331:                                              ; preds = %326, %314
  %332 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %333 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %332, i32 0, i32 11
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* @AHCI_P_SSTS, align 4
  %336 = call i32 @ATA_INL(i32 %334, i32 %335)
  %337 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %338 = and i32 %336, %337
  store i32 %338, i32* %10, align 4
  %339 = load i32, i32* %10, align 4
  %340 = and i32 %339, 240
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %357

342:                                              ; preds = %331
  %343 = load i32, i32* %10, align 4
  %344 = and i32 %343, 240
  %345 = ashr i32 %344, 4
  %346 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %347 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 1
  store i32 %345, i32* %349, align 4
  %350 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %351 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %352 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 8
  %356 = or i32 %355, %350
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %342, %331
  %358 = load %struct.ahci_device*, %struct.ahci_device** %9, align 8
  %359 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @CTS_SATA_CAPS_D, align 4
  %362 = and i32 %360, %361
  %363 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %364 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 4
  store i32 %362, i32* %366, align 8
  %367 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %368 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %367, i32 0, i32 10
  %369 = load i32, i32* %368, align 8
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %404

371:                                              ; preds = %357
  %372 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %373 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  %375 = load i32, i32* @AHCI_CAP_PSC, align 4
  %376 = load i32, i32* @AHCI_CAP_SSC, align 4
  %377 = or i32 %375, %376
  %378 = and i32 %374, %377
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %371
  %381 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %382 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %383 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = or i32 %386, %381
  store i32 %387, i32* %385, align 8
  br label %388

388:                                              ; preds = %380, %371
  %389 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %390 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 8
  %392 = load i32, i32* @AHCI_CAP2_APST, align 4
  %393 = and i32 %391, %392
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %388
  %396 = load i32, i32* @CTS_SATA_CAPS_H_APST, align 4
  %397 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %398 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = or i32 %401, %396
  store i32 %402, i32* %400, align 8
  br label %403

403:                                              ; preds = %395, %388
  br label %404

404:                                              ; preds = %403, %357
  %405 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %406 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @AHCI_CAP_SNCQ, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %426

411:                                              ; preds = %404
  %412 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %413 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %412, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* @AHCI_Q_NOAA, align 4
  %416 = and i32 %414, %415
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %418, label %426

418:                                              ; preds = %411
  %419 = load i32, i32* @CTS_SATA_CAPS_H_DMAAA, align 4
  %420 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %421 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 4
  %424 = load i32, i32* %423, align 8
  %425 = or i32 %424, %419
  store i32 %425, i32* %423, align 8
  br label %426

426:                                              ; preds = %418, %411, %404
  %427 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %428 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %429 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %429, i32 0, i32 0
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 4
  %432 = load i32, i32* %431, align 8
  %433 = or i32 %432, %427
  store i32 %433, i32* %431, align 8
  %434 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %435 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %434, i32 0, i32 9
  %436 = load %struct.ahci_device*, %struct.ahci_device** %435, align 8
  %437 = load %union.ccb*, %union.ccb** %4, align 8
  %438 = bitcast %union.ccb* %437 to %struct.TYPE_10__*
  %439 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %436, i64 %441
  %443 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %446 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %447, i32 0, i32 4
  %449 = load i32, i32* %448, align 8
  %450 = and i32 %449, %444
  store i32 %450, i32* %448, align 8
  %451 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %452 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %453 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %453, i32 0, i32 0
  %455 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = or i32 %456, %451
  store i32 %457, i32* %455, align 8
  br label %487

458:                                              ; preds = %326, %320, %289
  %459 = load %struct.ahci_device*, %struct.ahci_device** %9, align 8
  %460 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %463 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %462, i32 0, i32 0
  %464 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %463, i32 0, i32 0
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 1
  store i32 %461, i32* %465, align 4
  %466 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %467 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %468 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = or i32 %471, %466
  store i32 %472, i32* %470, align 8
  %473 = load %struct.ahci_device*, %struct.ahci_device** %9, align 8
  %474 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %473, i32 0, i32 3
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %477 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i32 0, i32 4
  store i32 %475, i32* %479, align 8
  %480 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %481 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %482 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %481, i32 0, i32 0
  %483 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %482, i32 0, i32 0
  %484 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 8
  %486 = or i32 %485, %480
  store i32 %486, i32* %484, align 8
  br label %487

487:                                              ; preds = %458, %426
  %488 = load %struct.ahci_device*, %struct.ahci_device** %9, align 8
  %489 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %488, i32 0, i32 5
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %492 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %492, i32 0, i32 0
  %494 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %493, i32 0, i32 7
  store i32 %490, i32* %494, align 4
  %495 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %496 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %497 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = or i32 %500, %495
  store i32 %501, i32* %499, align 8
  %502 = load %struct.ahci_device*, %struct.ahci_device** %9, align 8
  %503 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %506 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 0
  %508 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %507, i32 0, i32 2
  store i32 %504, i32* %508, align 8
  %509 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %510 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %511 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %512, i32 0, i32 0
  %514 = load i32, i32* %513, align 8
  %515 = or i32 %514, %509
  store i32 %515, i32* %513, align 8
  %516 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %517 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %516, i32 0, i32 8
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %520 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %521, i32 0, i32 6
  store i32 %518, i32* %522, align 8
  %523 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %524 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %525 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %524, i32 0, i32 0
  %526 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 8
  %529 = or i32 %528, %523
  store i32 %529, i32* %527, align 8
  %530 = load %struct.ahci_device*, %struct.ahci_device** %9, align 8
  %531 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %530, i32 0, i32 2
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %534 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %535, i32 0, i32 3
  store i32 %532, i32* %536, align 4
  %537 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %538 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %539 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %540, i32 0, i32 0
  %542 = load i32, i32* %541, align 8
  %543 = or i32 %542, %537
  store i32 %543, i32* %541, align 8
  %544 = load %struct.ahci_device*, %struct.ahci_device** %9, align 8
  %545 = getelementptr inbounds %struct.ahci_device, %struct.ahci_device* %544, i32 0, i32 4
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %548 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 5
  store i32 %546, i32* %550, align 4
  %551 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %552 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %553 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = or i32 %556, %551
  store i32 %557, i32* %555, align 8
  %558 = load i8*, i8** @CAM_REQ_CMP, align 8
  %559 = load %union.ccb*, %union.ccb** %4, align 8
  %560 = bitcast %union.ccb* %559 to %struct.TYPE_10__*
  %561 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %560, i32 0, i32 2
  store i8* %558, i8** %561, align 8
  br label %733

562:                                              ; preds = %2, %2
  %563 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %564 = call i32 @ahci_reset(%struct.ahci_channel* %563)
  %565 = load i8*, i8** @CAM_REQ_CMP, align 8
  %566 = load %union.ccb*, %union.ccb** %4, align 8
  %567 = bitcast %union.ccb* %566 to %struct.TYPE_10__*
  %568 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %567, i32 0, i32 2
  store i8* %565, i8** %568, align 8
  br label %733

569:                                              ; preds = %2
  %570 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %571 = load %union.ccb*, %union.ccb** %4, align 8
  %572 = bitcast %union.ccb* %571 to %struct.TYPE_10__*
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 2
  store i8* %570, i8** %573, align 8
  br label %733

574:                                              ; preds = %2
  %575 = load %union.ccb*, %union.ccb** %4, align 8
  %576 = bitcast %union.ccb* %575 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %576, %struct.ccb_pathinq** %11, align 8
  %577 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %578 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %577, i32 0, i32 0
  store i32 1, i32* %578, align 8
  %579 = load i32, i32* @PI_SDTR_ABLE, align 4
  %580 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %581 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %580, i32 0, i32 23
  store i32 %579, i32* %581, align 4
  %582 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %583 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = load i32, i32* @AHCI_CAP_SNCQ, align 4
  %586 = and i32 %584, %585
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %574
  %589 = load i32, i32* @PI_TAG_ABLE, align 4
  %590 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %591 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %590, i32 0, i32 23
  %592 = load i32, i32* %591, align 4
  %593 = or i32 %592, %589
  store i32 %593, i32* %591, align 4
  br label %594

594:                                              ; preds = %588, %574
  %595 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %596 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %595, i32 0, i32 1
  %597 = load i32, i32* %596, align 4
  %598 = load i32, i32* @AHCI_CAP_SPM, align 4
  %599 = and i32 %597, %598
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %607

601:                                              ; preds = %594
  %602 = load i32, i32* @PI_SATAPM, align 4
  %603 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %604 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %603, i32 0, i32 23
  %605 = load i32, i32* %604, align 4
  %606 = or i32 %605, %602
  store i32 %606, i32* %604, align 4
  br label %607

607:                                              ; preds = %601, %594
  %608 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %609 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %608, i32 0, i32 22
  store i32 0, i32* %609, align 8
  %610 = load i32, i32* @PIM_SEQSCAN, align 4
  %611 = load i32, i32* @PIM_UNMAPPED, align 4
  %612 = or i32 %610, %611
  %613 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %614 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %613, i32 0, i32 1
  store i32 %612, i32* %614, align 4
  %615 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %616 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %615, i32 0, i32 3
  %617 = load i32, i32* %616, align 4
  %618 = load i32, i32* @AHCI_Q_NOAUX, align 4
  %619 = and i32 %617, %618
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %621, label %627

621:                                              ; preds = %607
  %622 = load i32, i32* @PIM_ATA_EXT, align 4
  %623 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %624 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %623, i32 0, i32 1
  %625 = load i32, i32* %624, align 4
  %626 = or i32 %625, %622
  store i32 %626, i32* %624, align 4
  br label %627

627:                                              ; preds = %621, %607
  %628 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %629 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %628, i32 0, i32 21
  store i32 0, i32* %629, align 4
  %630 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %631 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %630, i32 0, i32 1
  %632 = load i32, i32* %631, align 4
  %633 = load i32, i32* @AHCI_CAP_SPM, align 4
  %634 = and i32 %632, %633
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %636, label %639

636:                                              ; preds = %627
  %637 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %638 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %637, i32 0, i32 2
  store i32 15, i32* %638, align 8
  br label %642

639:                                              ; preds = %627
  %640 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %641 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %640, i32 0, i32 2
  store i32 0, i32* %641, align 8
  br label %642

642:                                              ; preds = %639, %636
  %643 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %644 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %643, i32 0, i32 20
  store i32 0, i32* %644, align 8
  %645 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %646 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %645, i32 0, i32 19
  store i32 0, i32* %646, align 4
  %647 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %648 = call i32 @cam_sim_bus(%struct.cam_sim* %647)
  %649 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %650 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %649, i32 0, i32 18
  store i32 %648, i32* %650, align 8
  %651 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %652 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %651, i32 0, i32 3
  store i32 150000, i32* %652, align 4
  %653 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %654 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %653, i32 0, i32 17
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* @SIM_IDLEN, align 4
  %657 = call i32 @strlcpy(i32 %655, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %656)
  %658 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %659 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %658, i32 0, i32 16
  %660 = load i32, i32* %659, align 8
  %661 = load i32, i32* @HBA_IDLEN, align 4
  %662 = call i32 @strlcpy(i32 %660, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %661)
  %663 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %664 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %663, i32 0, i32 15
  %665 = load i32, i32* %664, align 4
  %666 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %667 = call i8* @cam_sim_name(%struct.cam_sim* %666)
  %668 = load i32, i32* @DEV_IDLEN, align 4
  %669 = call i32 @strlcpy(i32 %665, i8* %667, i32 %668)
  %670 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %671 = call i32 @cam_sim_unit(%struct.cam_sim* %670)
  %672 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %673 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %672, i32 0, i32 14
  store i32 %671, i32* %673, align 8
  %674 = load i8*, i8** @XPORT_SATA, align 8
  %675 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %676 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %675, i32 0, i32 13
  store i8* %674, i8** %676, align 8
  %677 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %678 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %679 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %678, i32 0, i32 12
  store i8* %677, i8** %679, align 8
  %680 = load i32, i32* @PROTO_ATA, align 4
  %681 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %682 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %681, i32 0, i32 11
  store i32 %680, i32* %682, align 8
  %683 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %684 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %685 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %684, i32 0, i32 10
  store i8* %683, i8** %685, align 8
  %686 = load i32, i32* @MAXPHYS, align 4
  %687 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %688 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %687, i32 0, i32 4
  store i32 %686, i32* %688, align 8
  %689 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %690 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %689, i32 0, i32 3
  %691 = load i32, i32* %690, align 4
  %692 = load i32, i32* @AHCI_Q_MAXIO_64K, align 4
  %693 = and i32 %691, %692
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %703

695:                                              ; preds = %642
  %696 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %697 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %696, i32 0, i32 4
  %698 = load i32, i32* %697, align 8
  %699 = call i8* @min(i32 %698, i32 65536)
  %700 = ptrtoint i8* %699 to i32
  %701 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %702 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %701, i32 0, i32 4
  store i32 %700, i32* %702, align 8
  br label %703

703:                                              ; preds = %695, %642
  %704 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %705 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %704, i32 0, i32 7
  %706 = load i32, i32* %705, align 4
  %707 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %708 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %707, i32 0, i32 9
  store i32 %706, i32* %708, align 4
  %709 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %710 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %709, i32 0, i32 6
  %711 = load i32, i32* %710, align 8
  %712 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %713 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %712, i32 0, i32 8
  store i32 %711, i32* %713, align 8
  %714 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %715 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %714, i32 0, i32 5
  %716 = load i32, i32* %715, align 4
  %717 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %718 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %717, i32 0, i32 7
  store i32 %716, i32* %718, align 4
  %719 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %720 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %719, i32 0, i32 4
  %721 = load i32, i32* %720, align 8
  %722 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %723 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %722, i32 0, i32 6
  store i32 %721, i32* %723, align 8
  %724 = load i8*, i8** @CAM_REQ_CMP, align 8
  %725 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %726 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %725, i32 0, i32 5
  %727 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %726, i32 0, i32 0
  store i8* %724, i8** %727, align 8
  br label %733

728:                                              ; preds = %2
  %729 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %730 = load %union.ccb*, %union.ccb** %4, align 8
  %731 = bitcast %union.ccb* %730 to %struct.TYPE_10__*
  %732 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %731, i32 0, i32 2
  store i8* %729, i8** %732, align 8
  br label %733

733:                                              ; preds = %728, %703, %569, %562, %487, %250, %85, %59
  %734 = load %struct.ahci_channel*, %struct.ahci_channel** %5, align 8
  %735 = load %union.ccb*, %union.ccb** %4, align 8
  %736 = call i32 @ahci_done(%struct.ahci_channel* %734, %union.ccb* %735)
  br label %737

737:                                              ; preds = %733, %262, %97, %81, %73, %36
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @ahci_check_ids(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @ahci_check_collision(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @ahci_begin_transaction(%struct.ahci_channel*, %union.ccb*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ahci_reset(%struct.ahci_channel*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @ahci_done(%struct.ahci_channel*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
