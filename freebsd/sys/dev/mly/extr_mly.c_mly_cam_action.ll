; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mly_softc = type { %struct.TYPE_12__**, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ccb_calc_geometry = type { i32, i32, i32, i32 }
%struct.ccb_trans_settings = type { i32, %struct.TYPE_11__, i8*, i8*, i8*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i8* }
%struct.TYPE_10__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i8*, i32, i32 }
%struct.ccb_scsiio = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"XPT_CALC_GEOMETRY %d:%d:%d\00", align 1
@MLY_BIOSGEOM_8G = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"XPT_PATH_INQ %d:%d:%d\00", align 1
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@MLY_MAX_TARGETS = common dso_local global i32 0, align 4
@MLY_MAX_LUNS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"Mylex\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"XPT_GET_TRAN_SETTINGS %d:%d\00", align 1
@MLY_BTL_LOGICAL = common dso_local global i32 0, align 4
@MLY_BTL_PHYSICAL = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_32_BIT = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_16_BIT = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"unspported func_code = 0x%x\00", align 1
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @mly_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.mly_softc*, align 8
  %6 = alloca %struct.ccb_calc_geometry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ccb_pathinq*, align 8
  %9 = alloca %struct.ccb_trans_settings*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %13 = alloca %struct.ccb_trans_settings_spi*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %14 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %15 = call %struct.mly_softc* @cam_sim_softc(%struct.cam_sim* %14)
  store %struct.mly_softc* %15, %struct.mly_softc** %5, align 8
  %16 = call i32 @debug_called(i32 2)
  %17 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %18 = call i32 @MLY_ASSERT_LOCKED(%struct.mly_softc* %17)
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %332 [
    i32 128, label %23
    i32 131, label %32
    i32 129, label %83
    i32 130, label %164
  ]

23:                                               ; preds = %2
  %24 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %25 = load %union.ccb*, %union.ccb** %4, align 8
  %26 = bitcast %union.ccb* %25 to i32*
  %27 = bitcast i32* %26 to %struct.ccb_scsiio*
  %28 = call i32 @mly_cam_action_io(%struct.cam_sim* %24, %struct.ccb_scsiio* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %345

31:                                               ; preds = %23
  br label %342

32:                                               ; preds = %2
  %33 = load %union.ccb*, %union.ccb** %4, align 8
  %34 = bitcast %union.ccb* %33 to %struct.ccb_calc_geometry*
  store %struct.ccb_calc_geometry* %34, %struct.ccb_calc_geometry** %6, align 8
  %35 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %36 = call i8* @cam_sim_bus(%struct.cam_sim* %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = bitcast %union.ccb* %38 to %struct.TYPE_8__*
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %union.ccb*, %union.ccb** %4, align 8
  %43 = bitcast %union.ccb* %42 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %41, i32 %45)
  %47 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %48 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MLY_BIOSGEOM_8G, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %32
  %55 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %56 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %55, i32 0, i32 0
  store i32 255, i32* %56, align 4
  %57 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %58 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %57, i32 0, i32 1
  store i32 63, i32* %58, align 4
  br label %64

59:                                               ; preds = %32
  %60 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %61 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %60, i32 0, i32 0
  store i32 128, i32* %61, align 4
  %62 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %63 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %62, i32 0, i32 1
  store i32 32, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %66 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %69 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %73 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = sdiv i32 %74, %75
  %77 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %6, align 8
  %78 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load i8*, i8** @CAM_REQ_CMP, align 8
  %80 = load %union.ccb*, %union.ccb** %4, align 8
  %81 = bitcast %union.ccb* %80 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i8* %79, i8** %82, align 8
  br label %342

83:                                               ; preds = %2
  %84 = load %union.ccb*, %union.ccb** %4, align 8
  %85 = bitcast %union.ccb* %84 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %85, %struct.ccb_pathinq** %8, align 8
  %86 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %87 = call i8* @cam_sim_bus(%struct.cam_sim* %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load %union.ccb*, %union.ccb** %4, align 8
  %90 = bitcast %union.ccb* %89 to %struct.TYPE_8__*
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %union.ccb*, %union.ccb** %4, align 8
  %94 = bitcast %union.ccb* %93 to %struct.TYPE_8__*
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %92, i32 %96)
  %98 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %99 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* @PI_TAG_ABLE, align 4
  %101 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %102 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %101, i32 0, i32 16
  store i32 %100, i32* %102, align 4
  %103 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %104 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %103, i32 0, i32 15
  store i32 0, i32* %104, align 8
  %105 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %106 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %105, i32 0, i32 14
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* @MLY_MAX_TARGETS, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %110 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %109, i32 0, i32 13
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* @MLY_MAX_LUNS, align 4
  %112 = sub nsw i32 %111, 1
  %113 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %114 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %113, i32 0, i32 12
  store i32 %112, i32* %114, align 4
  %115 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %116 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %121 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 8
  %122 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %123 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %122, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @SIM_IDLEN, align 4
  %126 = call i32 @strlcpy(i32 %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %128 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @HBA_IDLEN, align 4
  %131 = call i32 @strlcpy(i32 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %130)
  %132 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %133 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %136 = call i8* @cam_sim_name(%struct.cam_sim* %135)
  %137 = load i32, i32* @DEV_IDLEN, align 4
  %138 = call i32 @strlcpy(i32 %134, i8* %136, i32 %137)
  %139 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %140 = call i32 @cam_sim_unit(%struct.cam_sim* %139)
  %141 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %142 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %141, i32 0, i32 7
  store i32 %140, i32* %142, align 8
  %143 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %144 = call i8* @cam_sim_bus(%struct.cam_sim* %143)
  %145 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %146 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %145, i32 0, i32 6
  store i8* %144, i8** %146, align 8
  %147 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %148 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %147, i32 0, i32 1
  store i32 135168, i32* %148, align 4
  %149 = load i8*, i8** @XPORT_SPI, align 8
  %150 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %151 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %150, i32 0, i32 5
  store i8* %149, i8** %151, align 8
  %152 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %153 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %152, i32 0, i32 2
  store i32 2, i32* %153, align 8
  %154 = load i8*, i8** @PROTO_SCSI, align 8
  %155 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %156 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %155, i32 0, i32 4
  store i8* %154, i8** %156, align 8
  %157 = load i8*, i8** @SCSI_REV_2, align 8
  %158 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %159 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %158, i32 0, i32 3
  store i8* %157, i8** %159, align 8
  %160 = load i8*, i8** @CAM_REQ_CMP, align 8
  %161 = load %union.ccb*, %union.ccb** %4, align 8
  %162 = bitcast %union.ccb* %161 to %struct.TYPE_8__*
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i8* %160, i8** %163, align 8
  br label %342

164:                                              ; preds = %2
  %165 = load %union.ccb*, %union.ccb** %4, align 8
  %166 = bitcast %union.ccb* %165 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %166, %struct.ccb_trans_settings** %9, align 8
  %167 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %168 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %167, i32 0, i32 6
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %169, %struct.ccb_trans_settings_scsi** %12, align 8
  %170 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %171 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %172, %struct.ccb_trans_settings_spi** %13, align 8
  %173 = load i8*, i8** @PROTO_SCSI, align 8
  %174 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %175 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %174, i32 0, i32 4
  store i8* %173, i8** %175, align 8
  %176 = load i8*, i8** @SCSI_REV_2, align 8
  %177 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %178 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %177, i32 0, i32 3
  store i8* %176, i8** %178, align 8
  %179 = load i8*, i8** @XPORT_SPI, align 8
  %180 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %181 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %180, i32 0, i32 2
  store i8* %179, i8** %181, align 8
  %182 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %183 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %182, i32 0, i32 0
  store i32 2, i32* %183, align 8
  %184 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %12, align 8
  %185 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %184, i32 0, i32 1
  store i32 0, i32* %185, align 4
  %186 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %12, align 8
  %187 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %186, i32 0, i32 0
  store i32 0, i32* %187, align 4
  %188 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %189 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %188, i32 0, i32 2
  store i32 0, i32* %189, align 4
  %190 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %191 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %190, i32 0, i32 0
  store i32 0, i32* %191, align 4
  %192 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %193 = call i8* @cam_sim_bus(%struct.cam_sim* %192)
  %194 = ptrtoint i8* %193 to i32
  store i32 %194, i32* %10, align 4
  %195 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %196 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %203 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %202, i32 0, i32 0
  %204 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %203, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %204, i64 %206
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %207, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @MLY_BTL_LOGICAL, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %164
  br label %317

218:                                              ; preds = %164
  %219 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %220 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %219, i32 0, i32 0
  %221 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %220, align 8
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %221, i64 %223
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @MLY_BTL_PHYSICAL, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %311

234:                                              ; preds = %218
  %235 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %236 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %12, align 8
  %237 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %241 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %12, align 8
  %242 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = or i32 %243, %240
  store i32 %244, i32* %242, align 4
  %245 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %246 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %245, i32 0, i32 0
  %247 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %247, i64 %249
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %234
  %259 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %260 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %259, i32 0, i32 1
  store i32 200000, i32* %260, align 4
  br label %277

261:                                              ; preds = %234
  %262 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %263 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %262, i32 0, i32 0
  %264 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %263, align 8
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %264, i64 %266
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sdiv i32 1000000, %273
  %275 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %276 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %275, i32 0, i32 1
  store i32 %274, i32* %276, align 4
  br label %277

277:                                              ; preds = %261, %258
  %278 = load %struct.mly_softc*, %struct.mly_softc** %5, align 8
  %279 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %278, i32 0, i32 0
  %280 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %279, align 8
  %281 = load i32, i32* %10, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %280, i64 %282
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = load i32, i32* %11, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  switch i32 %289, label %299 [
    i32 32, label %290
    i32 16, label %294
    i32 8, label %298
  ]

290:                                              ; preds = %277
  %291 = load i32, i32* @MSG_EXT_WDTR_BUS_32_BIT, align 4
  %292 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %293 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %292, i32 0, i32 3
  store i32 %291, i32* %293, align 4
  br label %303

294:                                              ; preds = %277
  %295 = load i32, i32* @MSG_EXT_WDTR_BUS_16_BIT, align 4
  %296 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %297 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %296, i32 0, i32 3
  store i32 %295, i32* %297, align 4
  br label %303

298:                                              ; preds = %277
  br label %299

299:                                              ; preds = %277, %298
  %300 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %301 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %302 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %301, i32 0, i32 3
  store i32 %300, i32* %302, align 4
  br label %303

303:                                              ; preds = %299, %294, %290
  %304 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %305 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %306 = or i32 %304, %305
  %307 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %308 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %316

311:                                              ; preds = %218
  %312 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %313 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %314 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 1
  store i8* %312, i8** %315, align 8
  br label %342

316:                                              ; preds = %303
  br label %317

317:                                              ; preds = %316, %217
  %318 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %319 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %320 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = or i32 %321, %318
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %324 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %13, align 8
  %325 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 4
  %328 = load i8*, i8** @CAM_REQ_CMP, align 8
  %329 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %330 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %329, i32 0, i32 1
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 1
  store i8* %328, i8** %331, align 8
  br label %342

332:                                              ; preds = %2
  %333 = load %union.ccb*, %union.ccb** %4, align 8
  %334 = bitcast %union.ccb* %333 to %struct.TYPE_8__*
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = call i32 (i32, i8*, i32, ...) @debug(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %336)
  %338 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %339 = load %union.ccb*, %union.ccb** %4, align 8
  %340 = bitcast %union.ccb* %339 to %struct.TYPE_8__*
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 1
  store i8* %338, i8** %341, align 8
  br label %342

342:                                              ; preds = %332, %317, %311, %83, %64, %31
  %343 = load %union.ccb*, %union.ccb** %4, align 8
  %344 = call i32 @xpt_done(%union.ccb* %343)
  br label %345

345:                                              ; preds = %342, %30
  ret void
}

declare dso_local %struct.mly_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_ASSERT_LOCKED(%struct.mly_softc*) #1

declare dso_local i32 @mly_cam_action_io(%struct.cam_sim*, %struct.ccb_scsiio*) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i8* @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
