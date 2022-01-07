; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3cdrom.c_ps3cdrom_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_pathinq }
%struct.ccb_pathinq = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.ps3cdrom_softc = type { i32, i32, i32 }
%struct.ps3cdrom_xfer = type { %union.ccb*, i32 }
%struct.ccb_trans_settings = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"function code 0x%02x\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@CAM_TID_INVALID = common dso_local global i32 0, align 4
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no free transfers\00", align 1
@x_queue = common dso_local global i32 0, align 4
@ps3cdrom_transfer = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not load DMA map (%d)\0A\00", align 1
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i8* null, align 8
@SCSI_REV_2 = common dso_local global i8* null, align 8
@XPORT_SPI = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@PIM_NOBUSRESET = common dso_local global i32 0, align 4
@PIM_SEQSCAN = common dso_local global i32 0, align 4
@PIM_NO_6_BYTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"FreeBSD\00", align 1
@SIM_IDLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"Sony\00", align 1
@HBA_IDLEN = common dso_local global i32 0, align 4
@DEV_IDLEN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"unsupported function code 0x%02x\0A\00", align 1
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @ps3cdrom_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3cdrom_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ps3cdrom_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ps3cdrom_xfer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ccb_trans_settings*, align 8
  %10 = alloca %struct.ccb_pathinq*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %11 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %12 = call i64 @cam_sim_softc(%struct.cam_sim* %11)
  %13 = inttoptr i64 %12 to %struct.ps3cdrom_softc*
  store %struct.ps3cdrom_softc* %13, %struct.ps3cdrom_softc** %5, align 8
  %14 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %5, align 8
  %18 = call i32 @PS3CDROM_ASSERT_LOCKED(%struct.ps3cdrom_softc* %17)
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to %struct.TYPE_8__*
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @CAM_DEBUG(i32 %22, i32 %23, i8* %29)
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_8__*
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  switch i32 %34, label %231 [
    i32 129, label %35
    i32 128, label %115
    i32 133, label %120
    i32 131, label %145
    i32 130, label %145
    i32 134, label %151
    i32 132, label %155
  ]

35:                                               ; preds = %2
  %36 = load %union.ccb*, %union.ccb** %4, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_8__*
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAM_STATUS_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CAM_REQ_INPROG, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %248

45:                                               ; preds = %35
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = bitcast %union.ccb* %46 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i32, i32* @CAM_TID_INVALID, align 4
  %53 = load %union.ccb*, %union.ccb** %4, align 8
  %54 = bitcast %union.ccb* %53 to %struct.TYPE_8__*
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  br label %248

56:                                               ; preds = %45
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load i32, i32* @CAM_LUN_INVALID, align 4
  %64 = load %union.ccb*, %union.ccb** %4, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 4
  br label %248

67:                                               ; preds = %56
  %68 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %5, align 8
  %69 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %68, i32 0, i32 0
  %70 = call %struct.ps3cdrom_xfer* @TAILQ_FIRST(i32* %69)
  store %struct.ps3cdrom_xfer* %70, %struct.ps3cdrom_xfer** %7, align 8
  %71 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %7, align 8
  %72 = icmp ne %struct.ps3cdrom_xfer* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @KASSERT(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %7, align 8
  %77 = getelementptr inbounds %struct.ps3cdrom_xfer, %struct.ps3cdrom_xfer* %76, i32 0, i32 0
  store %union.ccb* %75, %union.ccb** %77, align 8
  %78 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %5, align 8
  %79 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %78, i32 0, i32 0
  %80 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %7, align 8
  %81 = load i32, i32* @x_queue, align 4
  %82 = call i32 @TAILQ_REMOVE(i32* %79, %struct.ps3cdrom_xfer* %80, i32 %81)
  %83 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %5, align 8
  %84 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %7, align 8
  %87 = getelementptr inbounds %struct.ps3cdrom_xfer, %struct.ps3cdrom_xfer* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %union.ccb*, %union.ccb** %4, align 8
  %90 = load i32, i32* @ps3cdrom_transfer, align 4
  %91 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %7, align 8
  %92 = call i32 @bus_dmamap_load_ccb(i32 %85, i32 %88, %union.ccb* %89, i32 %90, %struct.ps3cdrom_xfer* %91, i32 0)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %67
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @EINPROGRESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %7, align 8
  %104 = getelementptr inbounds %struct.ps3cdrom_xfer, %struct.ps3cdrom_xfer* %103, i32 0, i32 0
  store %union.ccb* null, %union.ccb** %104, align 8
  %105 = load %struct.ps3cdrom_softc*, %struct.ps3cdrom_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ps3cdrom_softc, %struct.ps3cdrom_softc* %105, i32 0, i32 0
  %107 = load %struct.ps3cdrom_xfer*, %struct.ps3cdrom_xfer** %7, align 8
  %108 = load i32, i32* @x_queue, align 4
  %109 = call i32 @TAILQ_INSERT_TAIL(i32* %106, %struct.ps3cdrom_xfer* %107, i32 %108)
  %110 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %111 = load %union.ccb*, %union.ccb** %4, align 8
  %112 = bitcast %union.ccb* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  br label %248

114:                                              ; preds = %95, %67
  br label %251

115:                                              ; preds = %2
  %116 = load i32, i32* @CAM_FUNC_NOTAVAIL, align 4
  %117 = load %union.ccb*, %union.ccb** %4, align 8
  %118 = bitcast %union.ccb* %117 to %struct.TYPE_8__*
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %248

120:                                              ; preds = %2
  %121 = load %union.ccb*, %union.ccb** %4, align 8
  %122 = bitcast %union.ccb* %121 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %122, %struct.ccb_trans_settings** %9, align 8
  %123 = load i8*, i8** @PROTO_SCSI, align 8
  %124 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %125 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %124, i32 0, i32 5
  store i8* %123, i8** %125, align 8
  %126 = load i8*, i8** @SCSI_REV_2, align 8
  %127 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %128 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load i8*, i8** @XPORT_SPI, align 8
  %130 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %131 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %133 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %132, i32 0, i32 0
  store i32 2, i32* %133, align 8
  %134 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %135 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %9, align 8
  %138 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 4
  %140 = load i8*, i8** @CAM_REQ_CMP, align 8
  %141 = ptrtoint i8* %140 to i32
  %142 = load %union.ccb*, %union.ccb** %4, align 8
  %143 = bitcast %union.ccb* %142 to %struct.TYPE_8__*
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 1
  store i32 %141, i32* %144, align 4
  br label %248

145:                                              ; preds = %2, %2
  %146 = load i8*, i8** @CAM_REQ_CMP, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %union.ccb*, %union.ccb** %4, align 8
  %149 = bitcast %union.ccb* %148 to %struct.TYPE_8__*
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  br label %248

151:                                              ; preds = %2
  %152 = load %union.ccb*, %union.ccb** %4, align 8
  %153 = bitcast %union.ccb* %152 to i32*
  %154 = call i32 @cam_calc_geometry(i32* %153, i32 1)
  br label %248

155:                                              ; preds = %2
  %156 = load %union.ccb*, %union.ccb** %4, align 8
  %157 = bitcast %union.ccb* %156 to %struct.ccb_pathinq*
  store %struct.ccb_pathinq* %157, %struct.ccb_pathinq** %10, align 8
  %158 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %159 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %161 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %160, i32 0, i32 19
  store i32 0, i32* %161, align 4
  %162 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %163 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %162, i32 0, i32 20
  store i32 0, i32* %163, align 8
  %164 = load i32, i32* @PI_SDTR_ABLE, align 4
  %165 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %166 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %165, i32 0, i32 19
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @PIM_NOBUSRESET, align 4
  %168 = load i32, i32* @PIM_SEQSCAN, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @PIM_NO_6_BYTE, align 4
  %171 = or i32 %169, %170
  %172 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %173 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %175 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %174, i32 0, i32 18
  store i32 0, i32* %175, align 8
  %176 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %177 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %176, i32 0, i32 17
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @bzero(i32 %178, i32 4)
  %180 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %181 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %180, i32 0, i32 16
  store i32 0, i32* %181, align 8
  %182 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %183 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %182, i32 0, i32 15
  store i32 0, i32* %183, align 4
  %184 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %185 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %184, i32 0, i32 2
  store i32 7, i32* %185, align 8
  %186 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %187 = call i32 @cam_sim_bus(%struct.cam_sim* %186)
  %188 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %189 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %188, i32 0, i32 14
  store i32 %187, i32* %189, align 8
  %190 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %191 = call i32 @cam_sim_unit(%struct.cam_sim* %190)
  %192 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %193 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %192, i32 0, i32 13
  store i32 %191, i32* %193, align 4
  %194 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %195 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %194, i32 0, i32 3
  store i32 150000, i32* %195, align 4
  %196 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %197 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %196, i32 0, i32 12
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @SIM_IDLEN, align 4
  %200 = call i32 @strlcpy(i32 %198, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %202 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %201, i32 0, i32 11
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @HBA_IDLEN, align 4
  %205 = call i32 @strlcpy(i32 %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %204)
  %206 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %207 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %206, i32 0, i32 10
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %210 = call i8* @cam_sim_name(%struct.cam_sim* %209)
  %211 = load i32, i32* @DEV_IDLEN, align 4
  %212 = call i32 @strlcpy(i32 %208, i8* %210, i32 %211)
  %213 = load i8*, i8** @XPORT_SPI, align 8
  %214 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %215 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %214, i32 0, i32 9
  store i8* %213, i8** %215, align 8
  %216 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %217 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %216, i32 0, i32 4
  store i32 2, i32* %217, align 8
  %218 = load i8*, i8** @PROTO_SCSI, align 8
  %219 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %220 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %219, i32 0, i32 8
  store i8* %218, i8** %220, align 8
  %221 = load i8*, i8** @SCSI_REV_2, align 8
  %222 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %223 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %222, i32 0, i32 7
  store i8* %221, i8** %223, align 8
  %224 = load i32, i32* @PAGE_SIZE, align 4
  %225 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %226 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %225, i32 0, i32 6
  store i32 %224, i32* %226, align 8
  %227 = load i8*, i8** @CAM_REQ_CMP, align 8
  %228 = load %struct.ccb_pathinq*, %struct.ccb_pathinq** %10, align 8
  %229 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %228, i32 0, i32 5
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  store i8* %227, i8** %230, align 8
  br label %248

231:                                              ; preds = %2
  %232 = load %union.ccb*, %union.ccb** %4, align 8
  %233 = bitcast %union.ccb* %232 to %struct.TYPE_8__*
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %237 = load %union.ccb*, %union.ccb** %4, align 8
  %238 = bitcast %union.ccb* %237 to %struct.TYPE_8__*
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = inttoptr i64 %241 to i8*
  %243 = call i32 @CAM_DEBUG(i32 %235, i32 %236, i8* %242)
  %244 = load i32, i32* @CAM_REQ_INVALID, align 4
  %245 = load %union.ccb*, %union.ccb** %4, align 8
  %246 = bitcast %union.ccb* %245 to %struct.TYPE_8__*
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  store i32 %244, i32* %247, align 4
  br label %248

248:                                              ; preds = %231, %155, %151, %145, %120, %115, %99, %62, %51, %44
  %249 = load %union.ccb*, %union.ccb** %4, align 8
  %250 = call i32 @xpt_done(%union.ccb* %249)
  br label %251

251:                                              ; preds = %248, %114
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @PS3CDROM_ASSERT_LOCKED(%struct.ps3cdrom_softc*) #1

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local %struct.ps3cdrom_xfer* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ps3cdrom_xfer*, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.ps3cdrom_xfer*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ps3cdrom_xfer*, i32) #1

declare dso_local i32 @cam_calc_geometry(i32*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @cam_sim_bus(%struct.cam_sim*) #1

declare dso_local i32 @cam_sim_unit(%struct.cam_sim*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i8* @cam_sim_name(%struct.cam_sim*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
