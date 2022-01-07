; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ciss_softc = type { %struct.TYPE_10__*, %struct.ciss_ldrive** }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ciss_ldrive = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.ccb_scsiio = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ccb_calc_geometry = type { i32, i32, i32, i32 }
%struct.ccb_trans_settings = type { i32, %struct.TYPE_14__, i8*, i8*, i8*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i8* }
%struct.TYPE_13__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i8*, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"XPT_CALC_GEOMETRY %d:%d:%d\00", align 1
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"XPT_PATH_INQ %d:%d:%d\00", align 1
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"CISS\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@CISS_MAX_SG_ELEMENTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"XPT_GET_TRAN_SETTINGS %d:%d\00", align 1
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"unspported func_code = 0x%x\00", align 1
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @ciss_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ciss_softc*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccb_calc_geometry*, align 8
  %11 = alloca %struct.ciss_ldrive*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ccb_pathinq*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ccb_trans_settings*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ccb_trans_settings_spi*, align 8
  %19 = alloca %struct.ccb_trans_settings_scsi*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %20 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %21 = call %struct.ciss_softc* @cam_sim_softc(%struct.cam_sim* %20)
  store %struct.ciss_softc* %21, %struct.ciss_softc** %5, align 8
  %22 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %23 = call i8* @cam_sim_bus(%struct.cam_sim* %22)
  %24 = ptrtoint i8* %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %union.ccb*, %union.ccb** %4, align 8
  %26 = bitcast %union.ccb* %25 to i32*
  %27 = bitcast i32* %26 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %27, %struct.ccb_scsiio** %6, align 8
  %28 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %29 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @CISS_IS_PHYSICAL(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %union.ccb*, %union.ccb** %4, align 8
  %35 = bitcast %union.ccb* %34 to %struct.TYPE_11__*
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %282 [
    i32 128, label %38
    i32 131, label %45
    i32 129, label %126
    i32 130, label %236
  ]

38:                                               ; preds = %2
  %39 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %40 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %41 = call i32 @ciss_cam_action_io(%struct.cam_sim* %39, %struct.ccb_scsiio* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %295

44:                                               ; preds = %38
  br label %292

45:                                               ; preds = %2
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = bitcast %union.ccb* %46 to %struct.ccb_calc_geometry*
  store %struct.ccb_calc_geometry* %47, %struct.ccb_calc_geometry** %10, align 8
  %48 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %49 = call i8* @cam_sim_bus(%struct.cam_sim* %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %union.ccb*, %union.ccb** %4, align 8
  %52 = bitcast %union.ccb* %51 to %struct.TYPE_11__*
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %union.ccb*, %union.ccb** %4, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_11__*
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54, i32 %58)
  store %struct.ciss_ldrive* null, %struct.ciss_ldrive** %11, align 8
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %45
  %63 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %64 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %63, i32 0, i32 1
  %65 = load %struct.ciss_ldrive**, %struct.ciss_ldrive*** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ciss_ldrive*, %struct.ciss_ldrive** %65, i64 %67
  %69 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %69, i64 %71
  store %struct.ciss_ldrive* %72, %struct.ciss_ldrive** %11, align 8
  br label %73

73:                                               ; preds = %62, %45
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %73
  %77 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %11, align 8
  %78 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 255
  br i1 %81, label %82, label %101

82:                                               ; preds = %76, %73
  %83 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %84 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %83, i32 0, i32 0
  store i32 255, i32* %84, align 4
  %85 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %86 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %85, i32 0, i32 1
  store i32 32, i32* %86, align 4
  %87 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %88 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %91 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  store i32 %93, i32* %12, align 4
  %94 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %95 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sdiv i32 %96, %97
  %99 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %100 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  br label %121

101:                                              ; preds = %76
  %102 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %11, align 8
  %103 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %107 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %11, align 8
  %109 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %113 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %11, align 8
  %115 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @ntohs(i32 %117)
  %119 = load %struct.ccb_calc_geometry*, %struct.ccb_calc_geometry** %10, align 8
  %120 = getelementptr inbounds %struct.ccb_calc_geometry, %struct.ccb_calc_geometry* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %101, %82
  %122 = load i8*, i8** @CAM_REQ_CMP, align 8
  %123 = load %union.ccb*, %union.ccb** %4, align 8
  %124 = bitcast %union.ccb* %123 to %struct.TYPE_11__*
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  store i8* %122, i8** %125, align 8
  br label %292

126:                                              ; preds = %2
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = bitcast %union.ccb* %127 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %128, %struct.ccb_pathinq** %13, align 8
  %129 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %130 = call i8* @cam_sim_bus(%struct.cam_sim* %129)
  %131 = ptrtoint i8* %130 to i32
  %132 = load %union.ccb*, %union.ccb** %4, align 8
  %133 = bitcast %union.ccb* %132 to %struct.TYPE_11__*
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %union.ccb*, %union.ccb** %4, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_11__*
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %131, i32 %135, i32 %139)
  %141 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %142 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %141, i32 0, i32 0
  store i32 1, i32* %142, align 8
  %143 = load i32, i32* @PI_TAG_ABLE, align 4
  %144 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %145 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %144, i32 0, i32 17
  store i32 %143, i32* %145, align 4
  %146 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %147 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %146, i32 0, i32 16
  store i32 0, i32* %147, align 8
  %148 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %149 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %148, i32 0, i32 15
  store i32 0, i32* %149, align 4
  %150 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %151 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %150, i32 0, i32 0
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %156 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %155, i32 0, i32 14
  store i32 %154, i32* %156, align 8
  %157 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %158 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %157, i32 0, i32 13
  store i32 0, i32* %158, align 4
  %159 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %160 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %159, i32 0, i32 0
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %165 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %164, i32 0, i32 12
  store i32 %163, i32* %165, align 8
  %166 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %167 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SIM_IDLEN, align 4
  %170 = call i32 @strlcpy(i32 %168, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %169)
  %171 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %172 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %171, i32 0, i32 10
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @HBA_IDLEN, align 4
  %175 = call i32 @strlcpy(i32 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  %176 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %177 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %176, i32 0, i32 9
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %180 = call i8* @cam_sim_name(%struct.cam_sim* %179)
  %181 = load i32, i32* @DEV_IDLEN, align 4
  %182 = call i32 @strlcpy(i32 %178, i8* %180, i32 %181)
  %183 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %184 = call i32 @cam_sim_unit(%struct.cam_sim* %183)
  %185 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %186 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %188 = call i8* @cam_sim_bus(%struct.cam_sim* %187)
  %189 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %190 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %189, i32 0, i32 7
  store i8* %188, i8** %190, align 8
  %191 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %192 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %191, i32 0, i32 1
  store i32 135168, i32* %192, align 4
  %193 = load i8*, i8** @XPORT_SPI, align 8
  %194 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %195 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %194, i32 0, i32 6
  store i8* %193, i8** %195, align 8
  %196 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %197 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %196, i32 0, i32 2
  store i32 2, i32* %197, align 8
  %198 = load i8*, i8** @PROTO_SCSI, align 8
  %199 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %200 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %199, i32 0, i32 5
  store i8* %198, i8** %200, align 8
  %201 = load i8*, i8** @SCSI_REV_2, align 8
  %202 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %203 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %202, i32 0, i32 4
  store i8* %201, i8** %203, align 8
  %204 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %205 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %204, i32 0, i32 0
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %126
  store i32 17, i32* %14, align 4
  br label %223

211:                                              ; preds = %126
  %212 = load %struct.ciss_softc*, %struct.ciss_softc** %5, align 8
  %213 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = sub nsw i32 %216, 1
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = call i32 @fls(i32 %218)
  %220 = sub nsw i32 %219, 1
  %221 = shl i32 1, %220
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %211, %210
  %224 = load i32, i32* @CISS_MAX_SG_ELEMENTS, align 4
  %225 = load i32, i32* %14, align 4
  %226 = call i32 @min(i32 %224, i32 %225)
  %227 = sub nsw i32 %226, 1
  %228 = load i32, i32* @PAGE_SIZE, align 4
  %229 = mul nsw i32 %227, %228
  %230 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %13, align 8
  %231 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %230, i32 0, i32 3
  store i32 %229, i32* %231, align 4
  %232 = load i8*, i8** @CAM_REQ_CMP, align 8
  %233 = load %union.ccb*, %union.ccb** %4, align 8
  %234 = bitcast %union.ccb* %233 to %struct.TYPE_11__*
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  store i8* %232, i8** %235, align 8
  br label %292

236:                                              ; preds = %2
  %237 = load %union.ccb*, %union.ccb** %4, align 8
  %238 = bitcast %union.ccb* %237 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %238, %struct.ccb_trans_settings** %15, align 8
  %239 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %240 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %241, %struct.ccb_trans_settings_spi** %18, align 8
  %242 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %243 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %244, %struct.ccb_trans_settings_scsi** %19, align 8
  %245 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %246 = call i8* @cam_sim_bus(%struct.cam_sim* %245)
  %247 = ptrtoint i8* %246 to i32
  store i32 %247, i32* %16, align 4
  %248 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %249 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %17, align 4
  %254 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %252, i32 %253)
  %255 = load i8*, i8** @PROTO_SCSI, align 8
  %256 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %257 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %256, i32 0, i32 4
  store i8* %255, i8** %257, align 8
  %258 = load i8*, i8** @SCSI_REV_2, align 8
  %259 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %260 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %259, i32 0, i32 3
  store i8* %258, i8** %260, align 8
  %261 = load i8*, i8** @XPORT_SPI, align 8
  %262 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %263 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  %264 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %265 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %264, i32 0, i32 0
  store i32 2, i32* %265, align 8
  %266 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %267 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %18, align 8
  %268 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %270 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %18, align 8
  %271 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %270, i32 0, i32 0
  store i32 %269, i32* %271, align 4
  %272 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %273 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %19, align 8
  %274 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %273, i32 0, i32 1
  store i32 %272, i32* %274, align 4
  %275 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %276 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %19, align 8
  %277 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %276, i32 0, i32 0
  store i32 %275, i32* %277, align 4
  %278 = load i8*, i8** @CAM_REQ_CMP, align 8
  %279 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %15, align 8
  %280 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  store i8* %278, i8** %281, align 8
  br label %292

282:                                              ; preds = %2
  %283 = load %union.ccb*, %union.ccb** %4, align 8
  %284 = bitcast %union.ccb* %283 to %struct.TYPE_11__*
  %285 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = call i32 (i32, i8*, i32, ...) @debug(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %286)
  %288 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %289 = load %union.ccb*, %union.ccb** %4, align 8
  %290 = bitcast %union.ccb* %289 to %struct.TYPE_11__*
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 1
  store i8* %288, i8** %291, align 8
  br label %292

292:                                              ; preds = %282, %236, %223, %121, %44
  %293 = load %union.ccb*, %union.ccb** %4, align 8
  %294 = call i32 @xpt_done(%union.ccb* %293)
  br label %295

295:                                              ; preds = %292, %43
  ret void
}

declare dso_local %struct.ciss_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i8* @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @CISS_IS_PHYSICAL(i32) #1

declare dso_local i32 @ciss_cam_action_io(%struct.cam_sim*, %struct.ccb_scsiio*) #1

declare dso_local i32 @debug(i32, i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
