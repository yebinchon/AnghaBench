; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sataaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sataaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, %struct.TYPE_9__, i32, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.fsl_sata_channel = type { i32, %struct.fsl_sata_device*, i32, i32, %struct.fsl_sata_device*, i32, %union.ccb*, i32 }
%struct.fsl_sata_device = type { i32, i32, i32, i8*, i8*, i32 }
%struct.ccb_trans_settings = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, i8*, i8*, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i8*, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"fsl_sataaction func_code=0x%x\0A\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i8* null, align 8
@RECOVERY_NONE = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_REVISION = common dso_local global i32 0, align 4
@CTS_SATA_VALID_MODE = common dso_local global i32 0, align 4
@CTS_SATA_VALID_BYTECOUNT = common dso_local global i32 0, align 4
@CTS_SATA_VALID_TAGS = common dso_local global i32 0, align 4
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@CTS_SATA_VALID_PM = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PROTO_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@XPORT_SATA = common dso_local global i8* null, align 8
@XPORT_VERSION_UNSPECIFIED = common dso_local global i8* null, align 8
@FSL_SATA_P_SSTS = common dso_local global i32 0, align 4
@ATA_SS_SPD_MASK = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_D = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_PMREQ = common dso_local global i32 0, align 4
@CTS_SATA_CAPS_H_AN = common dso_local global i32 0, align 4
@CTS_SATA_VALID_CAPS = common dso_local global i32 0, align 4
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PIM_UNMAPPED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"FSL SATA\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@PI_SATAPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @fsl_sataaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sataaction(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.fsl_sata_channel*, align 8
  %6 = alloca %struct.ccb_trans_settings*, align 8
  %7 = alloca %struct.fsl_sata_device*, align 8
  %8 = alloca %struct.ccb_trans_settings*, align 8
  %9 = alloca %struct.fsl_sata_device*, align 8
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
  %26 = inttoptr i64 %25 to %struct.fsl_sata_channel*
  store %struct.fsl_sata_channel* %26, %struct.fsl_sata_channel** %5, align 8
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_10__*
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %575 [
    i32 135, label %31
    i32 130, label %31
    i32 136, label %85
    i32 129, label %90
    i32 134, label %232
    i32 132, label %489
    i32 131, label %489
    i32 128, label %496
    i32 133, label %501
  ]

31:                                               ; preds = %2, %2
  %32 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = call i32 @fsl_sata_check_ids(%struct.fsl_sata_channel* %32, %union.ccb* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %584

37:                                               ; preds = %31
  %38 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %39 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %59, label %42

42:                                               ; preds = %37
  %43 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %44 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %union.ccb*, %union.ccb** %4, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_10__*
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %47
  %54 = load %union.ccb*, %union.ccb** %4, align 8
  %55 = bitcast %union.ccb* %54 to %struct.TYPE_10__*
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ult i64 %57, 15
  br i1 %58, label %59, label %64

59:                                               ; preds = %53, %37
  %60 = load i8*, i8** @CAM_SEL_TIMEOUT, align 8
  %61 = load %union.ccb*, %union.ccb** %4, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_10__*
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  store i8* %60, i8** %63, align 8
  br label %580

64:                                               ; preds = %53, %47, %42
  %65 = load i32, i32* @RECOVERY_NONE, align 4
  %66 = load %union.ccb*, %union.ccb** %4, align 8
  %67 = bitcast %union.ccb* %66 to %struct.TYPE_10__*
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  store i32 %65, i32* %68, align 8
  %69 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = call i32 @fsl_sata_check_collision(%struct.fsl_sata_channel* %69, %union.ccb* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %union.ccb*, %union.ccb** %4, align 8
  %75 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %76 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %75, i32 0, i32 6
  store %union.ccb* %74, %union.ccb** %76, align 8
  %77 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %78 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @xpt_freeze_simq(i32 %79, i32 1)
  br label %584

81:                                               ; preds = %64
  %82 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %83 = load %union.ccb*, %union.ccb** %4, align 8
  %84 = call i32 @fsl_sata_begin_transaction(%struct.fsl_sata_channel* %82, %union.ccb* %83)
  br label %584

85:                                               ; preds = %2
  %86 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %87 = load %union.ccb*, %union.ccb** %4, align 8
  %88 = bitcast %union.ccb* %87 to %struct.TYPE_10__*
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  br label %580

90:                                               ; preds = %2
  %91 = load %union.ccb*, %union.ccb** %4, align 8
  %92 = bitcast %union.ccb* %91 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %92, %struct.ccb_trans_settings** %6, align 8
  %93 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %94 = load %union.ccb*, %union.ccb** %4, align 8
  %95 = call i32 @fsl_sata_check_ids(%struct.fsl_sata_channel* %93, %union.ccb* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %584

98:                                               ; preds = %90
  %99 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %100 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %106 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %105, i32 0, i32 4
  %107 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %106, align 8
  %108 = load %union.ccb*, %union.ccb** %4, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_10__*
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %107, i64 %111
  store %struct.fsl_sata_device* %112, %struct.fsl_sata_device** %7, align 8
  br label %122

113:                                              ; preds = %98
  %114 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %115 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %114, i32 0, i32 1
  %116 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %115, align 8
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_10__*
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %116, i64 %120
  store %struct.fsl_sata_device* %121, %struct.fsl_sata_device** %7, align 8
  br label %122

122:                                              ; preds = %113, %104
  %123 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %124 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %122
  %132 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %133 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %7, align 8
  %138 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %131, %122
  %140 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %141 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %139
  %149 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %150 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %7, align 8
  %155 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %154, i32 0, i32 5
  store i32 %153, i32* %155, align 8
  br label %156

156:                                              ; preds = %148, %139
  %157 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %158 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %156
  %166 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %167 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 6
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @min(i32 8192, i8* %170)
  %172 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %7, align 8
  %173 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  br label %174

174:                                              ; preds = %165, %156
  %175 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %176 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %174
  %184 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %185 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %186 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = call i8* @min(i32 %184, i8* %189)
  %191 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %7, align 8
  %192 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %191, i32 0, i32 3
  store i8* %190, i8** %192, align 8
  br label %193

193:                                              ; preds = %183, %174
  %194 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %195 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %210

202:                                              ; preds = %193
  %203 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %204 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 5
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %209 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  br label %210

210:                                              ; preds = %202, %193
  %211 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %212 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %227

219:                                              ; preds = %210
  %220 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %6, align 8
  %221 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %7, align 8
  %226 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  br label %227

227:                                              ; preds = %219, %210
  %228 = load i8*, i8** @CAM_REQ_CMP, align 8
  %229 = load %union.ccb*, %union.ccb** %4, align 8
  %230 = bitcast %union.ccb* %229 to %struct.TYPE_10__*
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  store i8* %228, i8** %231, align 8
  br label %580

232:                                              ; preds = %2
  %233 = load %union.ccb*, %union.ccb** %4, align 8
  %234 = bitcast %union.ccb* %233 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %234, %struct.ccb_trans_settings** %8, align 8
  %235 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %236 = load %union.ccb*, %union.ccb** %4, align 8
  %237 = call i32 @fsl_sata_check_ids(%struct.fsl_sata_channel* %235, %union.ccb* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %232
  br label %584

240:                                              ; preds = %232
  %241 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %242 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %255

246:                                              ; preds = %240
  %247 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %248 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %247, i32 0, i32 4
  %249 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %248, align 8
  %250 = load %union.ccb*, %union.ccb** %4, align 8
  %251 = bitcast %union.ccb* %250 to %struct.TYPE_10__*
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %249, i64 %253
  store %struct.fsl_sata_device* %254, %struct.fsl_sata_device** %9, align 8
  br label %264

255:                                              ; preds = %240
  %256 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %257 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %256, i32 0, i32 1
  %258 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %257, align 8
  %259 = load %union.ccb*, %union.ccb** %4, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_10__*
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %258, i64 %262
  store %struct.fsl_sata_device* %263, %struct.fsl_sata_device** %9, align 8
  br label %264

264:                                              ; preds = %255, %246
  %265 = load i32, i32* @PROTO_UNSPECIFIED, align 4
  %266 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %267 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %266, i32 0, i32 6
  store i32 %265, i32* %267, align 8
  %268 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %269 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %270 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %269, i32 0, i32 5
  store i8* %268, i8** %270, align 8
  %271 = load i8*, i8** @XPORT_SATA, align 8
  %272 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %273 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %272, i32 0, i32 4
  store i8* %271, i8** %273, align 8
  %274 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %275 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %276 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %275, i32 0, i32 3
  store i8* %274, i8** %276, align 8
  %277 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %278 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  store i32 0, i32* %279, align 4
  %280 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %281 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  store i32 0, i32* %283, align 8
  %284 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %285 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %385

289:                                              ; preds = %264
  %290 = load %union.ccb*, %union.ccb** %4, align 8
  %291 = bitcast %union.ccb* %290 to %struct.TYPE_10__*
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load i64, i64* %292, align 8
  %294 = icmp eq i64 %293, 15
  br i1 %294, label %306, label %295

295:                                              ; preds = %289
  %296 = load %union.ccb*, %union.ccb** %4, align 8
  %297 = bitcast %union.ccb* %296 to %struct.TYPE_10__*
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %385

301:                                              ; preds = %295
  %302 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %303 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %385, label %306

306:                                              ; preds = %301, %289
  %307 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %308 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @FSL_SATA_P_SSTS, align 4
  %311 = call i32 @ATA_INL(i32 %309, i32 %310)
  %312 = load i32, i32* @ATA_SS_SPD_MASK, align 4
  %313 = and i32 %311, %312
  store i32 %313, i32* %10, align 4
  %314 = load i32, i32* %10, align 4
  %315 = and i32 %314, 240
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %332

317:                                              ; preds = %306
  %318 = load i32, i32* %10, align 4
  %319 = and i32 %318, 240
  %320 = ashr i32 %319, 4
  %321 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %322 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 1
  store i32 %320, i32* %324, align 4
  %325 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %326 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %327 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, %325
  store i32 %331, i32* %329, align 8
  br label %332

332:                                              ; preds = %317, %306
  %333 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %9, align 8
  %334 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @CTS_SATA_CAPS_D, align 4
  %337 = and i32 %335, %336
  %338 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %339 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %340, i32 0, i32 2
  store i32 %337, i32* %341, align 8
  %342 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %343 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %354

346:                                              ; preds = %332
  %347 = load i32, i32* @CTS_SATA_CAPS_H_PMREQ, align 4
  %348 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %349 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = or i32 %352, %347
  store i32 %353, i32* %351, align 8
  br label %354

354:                                              ; preds = %346, %332
  %355 = load i32, i32* @CTS_SATA_CAPS_H_AN, align 4
  %356 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %357 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 8
  %361 = or i32 %360, %355
  store i32 %361, i32* %359, align 8
  %362 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %363 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %362, i32 0, i32 1
  %364 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %363, align 8
  %365 = load %union.ccb*, %union.ccb** %4, align 8
  %366 = bitcast %union.ccb* %365 to %struct.TYPE_10__*
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %364, i64 %368
  %370 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %373 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = and i32 %376, %371
  store i32 %377, i32* %375, align 8
  %378 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %379 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %380 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = or i32 %383, %378
  store i32 %384, i32* %382, align 8
  br label %414

385:                                              ; preds = %301, %295, %264
  %386 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %9, align 8
  %387 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %390 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %391, i32 0, i32 1
  store i32 %388, i32* %392, align 4
  %393 = load i32, i32* @CTS_SATA_VALID_REVISION, align 4
  %394 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %395 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = or i32 %398, %393
  store i32 %399, i32* %397, align 8
  %400 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %9, align 8
  %401 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %404 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 2
  store i32 %402, i32* %406, align 8
  %407 = load i32, i32* @CTS_SATA_VALID_CAPS, align 4
  %408 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %409 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %408, i32 0, i32 0
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, %407
  store i32 %413, i32* %411, align 8
  br label %414

414:                                              ; preds = %385, %354
  %415 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %9, align 8
  %416 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 8
  %418 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %419 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 7
  store i32 %417, i32* %421, align 8
  %422 = load i32, i32* @CTS_SATA_VALID_MODE, align 4
  %423 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %424 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = or i32 %427, %422
  store i32 %428, i32* %426, align 8
  %429 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %9, align 8
  %430 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %429, i32 0, i32 4
  %431 = load i8*, i8** %430, align 8
  %432 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %433 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %434, i32 0, i32 6
  store i8* %431, i8** %435, align 8
  %436 = load i32, i32* @CTS_SATA_VALID_BYTECOUNT, align 4
  %437 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %438 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = or i32 %441, %436
  store i32 %442, i32* %440, align 8
  %443 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %444 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %447 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %446, i32 0, i32 0
  %448 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 5
  store i32 %445, i32* %449, align 8
  %450 = load i32, i32* @CTS_SATA_VALID_PM, align 4
  %451 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %452 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 8
  %456 = or i32 %455, %450
  store i32 %456, i32* %454, align 8
  %457 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %9, align 8
  %458 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %457, i32 0, i32 3
  %459 = load i8*, i8** %458, align 8
  %460 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %461 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 0
  %463 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %462, i32 0, i32 4
  store i8* %459, i8** %463, align 8
  %464 = load i32, i32* @CTS_SATA_VALID_TAGS, align 4
  %465 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %466 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %465, i32 0, i32 0
  %467 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = or i32 %469, %464
  store i32 %470, i32* %468, align 8
  %471 = load %struct.fsl_sata_device*, %struct.fsl_sata_device** %9, align 8
  %472 = getelementptr inbounds %struct.fsl_sata_device, %struct.fsl_sata_device* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %475 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %475, i32 0, i32 0
  %477 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %476, i32 0, i32 3
  store i32 %473, i32* %477, align 4
  %478 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %479 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %8, align 8
  %480 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %479, i32 0, i32 0
  %481 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = or i32 %483, %478
  store i32 %484, i32* %482, align 8
  %485 = load i8*, i8** @CAM_REQ_CMP, align 8
  %486 = load %union.ccb*, %union.ccb** %4, align 8
  %487 = bitcast %union.ccb* %486 to %struct.TYPE_10__*
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 2
  store i8* %485, i8** %488, align 8
  br label %580

489:                                              ; preds = %2, %2
  %490 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %491 = call i32 @fsl_sata_reset(%struct.fsl_sata_channel* %490)
  %492 = load i8*, i8** @CAM_REQ_CMP, align 8
  %493 = load %union.ccb*, %union.ccb** %4, align 8
  %494 = bitcast %union.ccb* %493 to %struct.TYPE_10__*
  %495 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %494, i32 0, i32 2
  store i8* %492, i8** %495, align 8
  br label %580

496:                                              ; preds = %2
  %497 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %498 = load %union.ccb*, %union.ccb** %4, align 8
  %499 = bitcast %union.ccb* %498 to %struct.TYPE_10__*
  %500 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %499, i32 0, i32 2
  store i8* %497, i8** %500, align 8
  br label %580

501:                                              ; preds = %2
  %502 = load %union.ccb*, %union.ccb** %4, align 8
  %503 = bitcast %union.ccb* %502 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %503, %struct.ccb_pathinq** %11, align 8
  %504 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %505 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %504, i32 0, i32 0
  store i32 1, i32* %505, align 8
  %506 = load i32, i32* @PI_SDTR_ABLE, align 4
  %507 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %508 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %507, i32 0, i32 19
  store i32 %506, i32* %508, align 8
  %509 = load i32, i32* @PI_TAG_ABLE, align 4
  %510 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %511 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %510, i32 0, i32 19
  %512 = load i32, i32* %511, align 8
  %513 = or i32 %512, %509
  store i32 %513, i32* %511, align 8
  %514 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %515 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %514, i32 0, i32 18
  store i32 0, i32* %515, align 4
  %516 = load i32, i32* @PIM_SEQSCAN, align 4
  %517 = load i32, i32* @PIM_UNMAPPED, align 4
  %518 = or i32 %516, %517
  %519 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %520 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %519, i32 0, i32 1
  store i32 %518, i32* %520, align 4
  %521 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %522 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %521, i32 0, i32 17
  store i32 0, i32* %522, align 8
  %523 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %524 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %523, i32 0, i32 16
  store i32 0, i32* %524, align 4
  %525 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %526 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %525, i32 0, i32 15
  store i32 0, i32* %526, align 8
  %527 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %528 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %527, i32 0, i32 14
  store i32 0, i32* %528, align 4
  %529 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %530 = call i32 @cam_sim_bus(%struct.cam_sim* %529)
  %531 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %532 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %531, i32 0, i32 13
  store i32 %530, i32* %532, align 8
  %533 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %534 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %533, i32 0, i32 2
  store i32 150000, i32* %534, align 8
  %535 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %536 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %535, i32 0, i32 12
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* @SIM_IDLEN, align 4
  %539 = call i32 @strncpy(i32 %537, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %538)
  %540 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %541 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %540, i32 0, i32 11
  %542 = load i32, i32* %541, align 8
  %543 = load i32, i32* @HBA_IDLEN, align 4
  %544 = call i32 @strncpy(i32 %542, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %543)
  %545 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %546 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %545, i32 0, i32 10
  %547 = load i32, i32* %546, align 4
  %548 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %549 = call i8* @cam_sim_name(%struct.cam_sim* %548)
  %550 = load i32, i32* @DEV_IDLEN, align 4
  %551 = call i32 @strncpy(i32 %547, i8* %549, i32 %550)
  %552 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %553 = call i32 @cam_sim_unit(%struct.cam_sim* %552)
  %554 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %555 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %554, i32 0, i32 9
  store i32 %553, i32* %555, align 8
  %556 = load i8*, i8** @XPORT_SATA, align 8
  %557 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %558 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %557, i32 0, i32 8
  store i8* %556, i8** %558, align 8
  %559 = load i8*, i8** @XPORT_VERSION_UNSPECIFIED, align 8
  %560 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %561 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %560, i32 0, i32 7
  store i8* %559, i8** %561, align 8
  %562 = load i32, i32* @PROTO_ATA, align 4
  %563 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %564 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %563, i32 0, i32 6
  store i32 %562, i32* %564, align 8
  %565 = load i8*, i8** @PROTO_VERSION_UNSPECIFIED, align 8
  %566 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %567 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %566, i32 0, i32 5
  store i8* %565, i8** %567, align 8
  %568 = load i32, i32* @MAXPHYS, align 4
  %569 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %570 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %569, i32 0, i32 4
  store i32 %568, i32* %570, align 8
  %571 = load i8*, i8** @CAM_REQ_CMP, align 8
  %572 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %11, align 8
  %573 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %572, i32 0, i32 3
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 0
  store i8* %571, i8** %574, align 8
  br label %580

575:                                              ; preds = %2
  %576 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %577 = load %union.ccb*, %union.ccb** %4, align 8
  %578 = bitcast %union.ccb* %577 to %struct.TYPE_10__*
  %579 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %578, i32 0, i32 2
  store i8* %576, i8** %579, align 8
  br label %580

580:                                              ; preds = %575, %501, %496, %489, %414, %227, %85, %59
  %581 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %5, align 8
  %582 = load %union.ccb*, %union.ccb** %4, align 8
  %583 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %581, %union.ccb* %582)
  br label %584

584:                                              ; preds = %580, %239, %97, %81, %73, %36
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @fsl_sata_check_ids(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @fsl_sata_check_collision(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @fsl_sata_begin_transaction(%struct.fsl_sata_channel*, %union.ccb*) #1

declare dso_local i8* @min(i32, i8*) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @fsl_sata_reset(%struct.fsl_sata_channel*) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
