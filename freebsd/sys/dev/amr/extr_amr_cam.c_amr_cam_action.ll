; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr_cam.c_amr_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_10__, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i8* }
%struct.amr_softc = type { i32, i32 }
%struct.ccb_hdr = type { i32, i32, i8* }
%struct.ccb_scsiio = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.ccb_trans_settings = type { i32, i32, i8*, i8*, i8*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32 }

@CAM_REQ_INPROG = common dso_local global i8* null, align 8
@AMR_MAX_EXTCDB_LEN = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@AMR_MAX_CDB_LEN = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DATA_MASK = common dso_local global i32 0, align 4
@CAM_DATA_VADDR = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"XPT_PATH_INQ\00", align 1
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@AMR_MAX_TARGETS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"LSI\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i8* null, align 8
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [14 x i8] c"XPT_RESET_BUS\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"XPT_RESET_DEV\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"XPT_GET_TRAN_SETTINGS\00", align 1
@CTS_TYPE_USER_SETTINGS = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i8* null, align 8
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_32_BIT = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"XPT_SET_TRAN_SETTINGS\00", align 1
@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @amr_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.amr_softc*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca %struct.ccb_pathinq*, align 8
  %9 = alloca %struct.ccb_pathinq*, align 8
  %10 = alloca %struct.ccb_trans_settings*, align 8
  %11 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %12 = alloca %struct.ccb_trans_settings_spi*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %13 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %14 = call %struct.amr_softc* @cam_sim_softc(%struct.cam_sim* %13)
  store %struct.amr_softc* %14, %struct.amr_softc** %5, align 8
  %15 = load %union.ccb*, %union.ccb** %4, align 8
  %16 = bitcast %union.ccb* %15 to %struct.ccb_hdr*
  %17 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %275 [
    i32 129, label %19
    i32 134, label %122
    i32 132, label %126
    i32 131, label %197
    i32 130, label %205
    i32 133, label %211
    i32 128, label %269
  ]

19:                                               ; preds = %2
  %20 = load %union.ccb*, %union.ccb** %4, align 8
  %21 = bitcast %union.ccb* %20 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %21, %struct.ccb_hdr** %6, align 8
  %22 = load %union.ccb*, %union.ccb** %4, align 8
  %23 = bitcast %union.ccb* %22 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %23, %struct.ccb_scsiio** %7, align 8
  %24 = load i8*, i8** @CAM_REQ_INPROG, align 8
  %25 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %26 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AMR_MAX_EXTCDB_LEN, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %34 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %35 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %32, %19
  %37 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %38 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AMR_MAX_CDB_LEN, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %44 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %49 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %42, %36
  %52 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %53 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CAM_CDB_POINTER, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %51
  %59 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %60 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CAM_CDB_PHYS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %67 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %68 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %69

69:                                               ; preds = %65, %58, %51
  %70 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %71 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CAM_DIR_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @CAM_DIR_NONE, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %79 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @CAM_DATA_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @CAM_DATA_VADDR, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %87 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %88 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %85, %77
  br label %90

90:                                               ; preds = %89, %69
  %91 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %92 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i8*, i8** @CAM_DEV_NOT_THERE, align 8
  %98 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %99 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %102 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i8*, i8** @CAM_REQ_INPROG, align 8
  %105 = icmp eq i8* %103, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %108 = call i8* @cam_sim_bus(%struct.cam_sim* %107)
  %109 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %110 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i64 0
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  store i8* %108, i8** %115, align 8
  %116 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = call i32 @amr_enqueue_ccb(%struct.amr_softc* %116, %union.ccb* %117)
  %119 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %120 = call i32 @amr_startio(%struct.amr_softc* %119)
  br label %287

121:                                              ; preds = %100
  br label %280

122:                                              ; preds = %2
  %123 = load %union.ccb*, %union.ccb** %4, align 8
  %124 = bitcast %union.ccb* %123 to i32*
  %125 = call i32 @cam_calc_geometry(i32* %124, i32 1)
  br label %280

126:                                              ; preds = %2
  %127 = load %union.ccb*, %union.ccb** %4, align 8
  %128 = bitcast %union.ccb* %127 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %128, %struct.ccb_pathinq** %8, align 8
  %129 = call i32 @debug(i32 3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %131 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %130, i32 0, i32 0
  store i32 1, i32* %131, align 8
  %132 = load i32, i32* @PI_SDTR_ABLE, align 4
  %133 = load i32, i32* @PI_TAG_ABLE, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @PI_WIDE_16, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %138 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %140 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %139, i32 0, i32 18
  store i32 0, i32* %140, align 4
  %141 = load i32, i32* @PIM_NOBUSRESET, align 4
  %142 = load i32, i32* @PIM_SEQSCAN, align 4
  %143 = or i32 %141, %142
  %144 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %145 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %147 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %146, i32 0, i32 17
  store i32 0, i32* %147, align 8
  %148 = load i32, i32* @AMR_MAX_TARGETS, align 4
  %149 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %150 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %149, i32 0, i32 16
  store i32 %148, i32* %150, align 4
  %151 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %152 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %151, i32 0, i32 15
  store i32 0, i32* %152, align 8
  %153 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %154 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %153, i32 0, i32 3
  store i32 7, i32* %154, align 4
  %155 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %156 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %155, i32 0, i32 14
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @SIM_IDLEN, align 4
  %159 = call i32 @strlcpy(i32 %157, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  %160 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %161 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %160, i32 0, i32 13
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @HBA_IDLEN, align 4
  %164 = call i32 @strlcpy(i32 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %166 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %169 = call i8* @cam_sim_name(%struct.cam_sim* %168)
  %170 = load i32, i32* @DEV_IDLEN, align 4
  %171 = call i32 @strlcpy(i32 %167, i8* %169, i32 %170)
  %172 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %173 = call i32 @cam_sim_unit(%struct.cam_sim* %172)
  %174 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %175 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %174, i32 0, i32 11
  store i32 %173, i32* %175, align 8
  %176 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %177 = call i8* @cam_sim_bus(%struct.cam_sim* %176)
  %178 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %179 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %178, i32 0, i32 10
  store i8* %177, i8** %179, align 8
  %180 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %181 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %180, i32 0, i32 4
  store i32 135168, i32* %181, align 8
  %182 = load i8*, i8** @XPORT_SPI, align 8
  %183 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %184 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %183, i32 0, i32 9
  store i8* %182, i8** %184, align 8
  %185 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %186 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %185, i32 0, i32 5
  store i32 2, i32* %186, align 4
  %187 = load i8*, i8** @PROTO_SCSI, align 8
  %188 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %189 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %188, i32 0, i32 8
  store i8* %187, i8** %189, align 8
  %190 = load i8*, i8** @SCSI_REV_2, align 8
  %191 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %192 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %191, i32 0, i32 7
  store i8* %190, i8** %192, align 8
  %193 = load i8*, i8** @CAM_REQ_CMP, align 8
  %194 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %8, align 8
  %195 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %194, i32 0, i32 6
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 0
  store i8* %193, i8** %196, align 8
  br label %280

197:                                              ; preds = %2
  %198 = load %union.ccb*, %union.ccb** %4, align 8
  %199 = bitcast %union.ccb* %198 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %199, %struct.ccb_pathinq** %9, align 8
  %200 = call i32 @debug(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i8*, i8** @CAM_REQ_CMP, align 8
  %202 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %9, align 8
  %203 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %202, i32 0, i32 6
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  store i8* %201, i8** %204, align 8
  br label %280

205:                                              ; preds = %2
  %206 = call i32 @debug(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %207 = load i8*, i8** @CAM_REQ_CMP, align 8
  %208 = load %union.ccb*, %union.ccb** %4, align 8
  %209 = bitcast %union.ccb* %208 to %struct.ccb_hdr*
  %210 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %209, i32 0, i32 2
  store i8* %207, i8** %210, align 8
  br label %280

211:                                              ; preds = %2
  %212 = load %union.ccb*, %union.ccb** %4, align 8
  %213 = bitcast %union.ccb* %212 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %213, %struct.ccb_trans_settings** %10, align 8
  %214 = call i32 @debug(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %215 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %216 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %215, i32 0, i32 6
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %217, %struct.ccb_trans_settings_scsi** %11, align 8
  %218 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %219 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %218, i32 0, i32 5
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %220, %struct.ccb_trans_settings_spi** %12, align 8
  %221 = load i8*, i8** @PROTO_SCSI, align 8
  %222 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %223 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %222, i32 0, i32 4
  store i8* %221, i8** %223, align 8
  %224 = load i8*, i8** @SCSI_REV_2, align 8
  %225 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %226 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %225, i32 0, i32 3
  store i8* %224, i8** %226, align 8
  %227 = load i8*, i8** @XPORT_SPI, align 8
  %228 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %229 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %228, i32 0, i32 2
  store i8* %227, i8** %229, align 8
  %230 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %231 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %230, i32 0, i32 0
  store i32 2, i32* %231, align 8
  %232 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %10, align 8
  %233 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @CTS_TYPE_USER_SETTINGS, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %211
  %238 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %239 = load %union.ccb*, %union.ccb** %4, align 8
  %240 = bitcast %union.ccb* %239 to %struct.ccb_hdr*
  %241 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %240, i32 0, i32 2
  store i8* %238, i8** %241, align 8
  br label %280

242:                                              ; preds = %211
  %243 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %244 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %12, align 8
  %245 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* @MSG_EXT_WDTR_BUS_32_BIT, align 4
  %247 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %12, align 8
  %248 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %12, align 8
  %250 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %249, i32 0, i32 0
  store i32 6, i32* %250, align 4
  %251 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %12, align 8
  %252 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %251, i32 0, i32 1
  store i32 31, i32* %252, align 4
  %253 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %254 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %12, align 8
  %261 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 4
  %262 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %263 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %11, align 8
  %264 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 4
  %265 = load i8*, i8** @CAM_REQ_CMP, align 8
  %266 = load %union.ccb*, %union.ccb** %4, align 8
  %267 = bitcast %union.ccb* %266 to %struct.ccb_hdr*
  %268 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %267, i32 0, i32 2
  store i8* %265, i8** %268, align 8
  br label %280

269:                                              ; preds = %2
  %270 = call i32 @debug(i32 3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %271 = load i8*, i8** @CAM_FUNC_NOTAVAIL, align 8
  %272 = load %union.ccb*, %union.ccb** %4, align 8
  %273 = bitcast %union.ccb* %272 to %struct.ccb_hdr*
  %274 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %273, i32 0, i32 2
  store i8* %271, i8** %274, align 8
  br label %280

275:                                              ; preds = %2
  %276 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %277 = load %union.ccb*, %union.ccb** %4, align 8
  %278 = bitcast %union.ccb* %277 to %struct.ccb_hdr*
  %279 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %278, i32 0, i32 2
  store i8* %276, i8** %279, align 8
  br label %280

280:                                              ; preds = %275, %269, %242, %237, %205, %197, %126, %122, %121
  %281 = load %struct.amr_softc*, %struct.amr_softc** %5, align 8
  %282 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %281, i32 0, i32 0
  %283 = load i32, i32* @MA_OWNED, align 4
  %284 = call i32 @mtx_assert(i32* %282, i32 %283)
  %285 = load %union.ccb*, %union.ccb** %4, align 8
  %286 = call i32 @xpt_done(%union.ccb* %285)
  br label %287

287:                                              ; preds = %280, %106
  ret void
}

declare dso_local %struct.amr_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i8* @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @amr_enqueue_ccb(%struct.amr_softc*, %union.ccb*) #1

declare dso_local i32 @amr_startio(%struct.amr_softc*) #1

declare dso_local i32 @cam_calc_geometry(i32*, i32) #1

declare dso_local i32 @debug(i32, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
