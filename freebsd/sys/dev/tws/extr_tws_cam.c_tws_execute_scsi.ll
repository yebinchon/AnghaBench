; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_execute_scsi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_execute_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i64, i32, i32, i32, i32 }
%struct.tws_command_packet = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.tws_request = type { i32, i32, %union.ccb*, i32, %union.ccb*, %struct.tws_command_packet*, i32, i32 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@TWS_MAX_NUM_UNITS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"traget id too big\00", align 1
@CAM_TID_INVALID = common dso_local global i32 0, align 4
@TWS_MAX_NUM_LUNS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"target lun 2 big\00", align 1
@CAM_LUN_INVALID = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"cdb phy\00", align 1
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@TWS_REQ_TYPE_SCSI_IO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"no reqs\00", align 1
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@TWS_DIR_IN = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@TWS_DIR_OUT = common dso_local global i32 0, align 4
@TWS_DIR_NONE = common dso_local global i32 0, align 4
@tws_scsi_complete = common dso_local global i32 0, align 4
@TWS_FW_CMD_EXECUTE_SCSI = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@TWS_DATA_CCB = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@tws_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tws_softc*, %union.ccb*)* @tws_execute_scsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_execute_scsi(%struct.tws_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca %struct.tws_command_packet*, align 8
  %7 = alloca %struct.tws_request*, align 8
  %8 = alloca %struct.ccb_hdr*, align 8
  %9 = alloca %struct.ccb_scsiio*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store %union.ccb* %1, %union.ccb** %5, align 8
  %12 = load %union.ccb*, %union.ccb** %5, align 8
  %13 = bitcast %union.ccb* %12 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %13, %struct.ccb_hdr** %8, align 8
  %14 = load %union.ccb*, %union.ccb** %5, align 8
  %15 = bitcast %union.ccb* %14 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %15, %struct.ccb_scsiio** %9, align 8
  %16 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %17 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %16, i32 0, i32 1
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @mtx_assert(i32* %17, i32 %18)
  %20 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %21 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TWS_MAX_NUM_UNITS, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %27 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %31 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %32)
  %34 = load i32, i32* @CAM_TID_INVALID, align 4
  %35 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load %union.ccb*, %union.ccb** %5, align 8
  %40 = call i32 @xpt_done(%union.ccb* %39)
  store i32 0, i32* %3, align 4
  br label %272

41:                                               ; preds = %2
  %42 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %43 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TWS_MAX_NUM_LUNS, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %41
  %48 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %49 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %53 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %51, i32 %54)
  %56 = load i32, i32* @CAM_LUN_INVALID, align 4
  %57 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %58 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %union.ccb*, %union.ccb** %5, align 8
  %62 = call i32 @xpt_done(%union.ccb* %61)
  store i32 0, i32* %3, align 4
  br label %272

63:                                               ; preds = %41
  %64 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %65 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @CAM_CDB_PHYS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %63
  %71 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %72 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %73 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %76 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64 %74, i32 %77)
  %79 = load i32, i32* @CAM_REQ_INVALID, align 4
  %80 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %81 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %union.ccb*, %union.ccb** %5, align 8
  %83 = call i32 @xpt_done(%union.ccb* %82)
  store i32 0, i32* %3, align 4
  br label %272

84:                                               ; preds = %63
  %85 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %86 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %87 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %91 = load i32, i32* @TWS_REQ_TYPE_SCSI_IO, align 4
  %92 = call %struct.tws_request* @tws_get_request(%struct.tws_softc* %90, i32 %91)
  store %struct.tws_request* %92, %struct.tws_request** %7, align 8
  %93 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %94 = icmp ne %struct.tws_request* %93, null
  br i1 %94, label %111, label %95

95:                                               ; preds = %84
  %96 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %97 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %98 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %101 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i64 %99, i32 %102)
  %104 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %105 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %106 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  %109 = load %union.ccb*, %union.ccb** %5, align 8
  %110 = call i32 @xpt_done(%union.ccb* %109)
  store i32 0, i32* %3, align 4
  br label %272

111:                                              ; preds = %84
  %112 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %113 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @CAM_DIR_MASK, align 4
  %116 = and i32 %114, %115
  %117 = load i32, i32* @CAM_DIR_NONE, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %146

119:                                              ; preds = %111
  %120 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %121 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @CAM_DIR_IN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32, i32* @TWS_DIR_IN, align 4
  %128 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %129 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %119
  %133 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %134 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @CAM_DIR_OUT, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load i32, i32* @TWS_DIR_OUT, align 4
  %141 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %142 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %139, %132
  br label %150

146:                                              ; preds = %111
  %147 = load i32, i32* @TWS_DIR_NONE, align 4
  %148 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %149 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %146, %145
  %151 = load i32, i32* @TWS_REQ_TYPE_SCSI_IO, align 4
  %152 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %153 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @tws_scsi_complete, align 4
  %155 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %156 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %155, i32 0, i32 6
  store i32 %154, i32* %156, align 8
  %157 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %158 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %157, i32 0, i32 5
  %159 = load %struct.tws_command_packet*, %struct.tws_command_packet** %158, align 8
  store %struct.tws_command_packet* %159, %struct.tws_command_packet** %6, align 8
  %160 = load i32, i32* @TWS_FW_CMD_EXECUTE_SCSI, align 4
  %161 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %162 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 6
  store i32 %160, i32* %164, align 8
  %165 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %166 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %169 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i64 %167, i64* %171, align 8
  %172 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %173 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 5
  store i64 0, i64* %175, align 8
  %176 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %177 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i32 16, i32* %179, align 8
  %180 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %181 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, 15
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %11, align 4
  %185 = shl i32 %184, 12
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %188 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %186, %189
  %191 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %192 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  store i32 %190, i32* %194, align 4
  %195 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %196 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, 240
  store i32 %198, i32* %11, align 4
  %199 = load i32, i32* %11, align 4
  %200 = shl i32 %199, 8
  store i32 %200, i32* %11, align 4
  %201 = load i32, i32* %11, align 4
  %202 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %203 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 3
  store i32 %201, i32* %205, align 8
  %206 = load %struct.ccb_hdr*, %struct.ccb_hdr** %8, align 8
  %207 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @CAM_CDB_POINTER, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %226

212:                                              ; preds = %150
  %213 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %214 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %218 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %223 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @bcopy(i32 %216, i32 %221, i32 %224)
  br label %240

226:                                              ; preds = %150
  %227 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %228 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.tws_command_packet*, %struct.tws_command_packet** %6, align 8
  %232 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %9, align 8
  %237 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @bcopy(i32 %230, i32 %235, i32 %238)
  br label %240

240:                                              ; preds = %226, %212
  %241 = load %union.ccb*, %union.ccb** %5, align 8
  %242 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %243 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %242, i32 0, i32 4
  store %union.ccb* %241, %union.ccb** %243, align 8
  %244 = load i32, i32* @TWS_DATA_CCB, align 4
  %245 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %246 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load %union.ccb*, %union.ccb** %5, align 8
  %250 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %251 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %250, i32 0, i32 2
  store %union.ccb* %249, %union.ccb** %251, align 8
  %252 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %253 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  %257 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %258 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %257, i32 0, i32 1
  %259 = load i32, i32* @SBT_1MS, align 4
  %260 = load %union.ccb*, %union.ccb** %5, align 8
  %261 = bitcast %union.ccb* %260 to %struct.ccb_hdr*
  %262 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = mul nsw i32 %259, %263
  %265 = load i32, i32* @tws_timeout, align 4
  %266 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %267 = call i32 @callout_reset_sbt(i32* %258, i32 %264, i32 0, i32 %265, %struct.tws_request* %266, i32 0)
  %268 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %269 = load %struct.tws_request*, %struct.tws_request** %7, align 8
  %270 = call i32 @tws_map_request(%struct.tws_softc* %268, %struct.tws_request* %269)
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %10, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %240, %95, %70, %47, %25
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i64, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local %struct.tws_request* @tws_get_request(%struct.tws_softc*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.tws_request*, i32) #1

declare dso_local i32 @tws_map_request(%struct.tws_softc*, %struct.tws_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
