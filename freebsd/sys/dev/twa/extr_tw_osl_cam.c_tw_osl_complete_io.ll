; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osl_complete_io.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_cam.c_tw_osl_complete_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_cl_req_handle = type { %struct.tw_osli_req_context* }
%struct.tw_osli_req_context = type { i64, i64, i64, i64, %struct.twa_softc*, i32 }
%struct.twa_softc = type { i32 }
%struct.tw_cl_req_packet = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tw_cl_scsi_req_packet }
%struct.tw_cl_scsi_req_packet = type { i32, i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"entering\00", align 1
@TW_OSLI_REQ_STATE_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"request = %p, status = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Unposted command completed!!\00", align 1
@TW_OSLI_REQ_STATE_COMPLETE = common dso_local global i64 0, align 8
@TW_OSLI_BUSY_Q = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i64 0, align 8
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i8* null, align 8
@TW_CL_ERR_REQ_SUCCESS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@TW_CL_ERR_REQ_INVALID_TARGET = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@TW_CL_ERR_REQ_INVALID_LUN = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@TW_CL_ERR_REQ_SCSI_ERROR = common dso_local global i32 0, align 4
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@TW_CL_ERR_REQ_BUS_RESET = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@TW_CL_ERR_REQ_AUTO_SENSE_VALID = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@TW_OSLI_FREE_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osl_complete_io(%struct.tw_cl_req_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_cl_req_handle*, align 8
  %4 = alloca %struct.tw_osli_req_context*, align 8
  %5 = alloca %struct.tw_cl_req_packet*, align 8
  %6 = alloca %struct.tw_cl_scsi_req_packet*, align 8
  %7 = alloca %struct.twa_softc*, align 8
  %8 = alloca %union.ccb*, align 8
  store %struct.tw_cl_req_handle* %0, %struct.tw_cl_req_handle** %3, align 8
  %9 = load %struct.tw_cl_req_handle*, %struct.tw_cl_req_handle** %3, align 8
  %10 = getelementptr inbounds %struct.tw_cl_req_handle, %struct.tw_cl_req_handle* %9, i32 0, i32 0
  %11 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %10, align 8
  store %struct.tw_osli_req_context* %11, %struct.tw_osli_req_context** %4, align 8
  %12 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %13 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %12, i32 0, i32 5
  %14 = bitcast i32* %13 to %struct.tw_cl_req_packet*
  store %struct.tw_cl_req_packet* %14, %struct.tw_cl_req_packet** %5, align 8
  %15 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %16 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %15, i32 0, i32 4
  %17 = load %struct.twa_softc*, %struct.twa_softc** %16, align 8
  store %struct.twa_softc* %17, %struct.twa_softc** %7, align 8
  %18 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %19 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %union.ccb*
  store %union.ccb* %21, %union.ccb** %8, align 8
  %22 = load %struct.twa_softc*, %struct.twa_softc** %7, align 8
  %23 = call i32 @tw_osli_dbg_dprintf(i32 10, %struct.twa_softc* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %25 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TW_OSLI_REQ_STATE_BUSY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %1
  %30 = load %struct.twa_softc*, %struct.twa_softc** %7, align 8
  %31 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %32 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %33 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %34 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %35 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @tw_osli_printf(%struct.twa_softc* %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32, i32 8458, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), %struct.tw_osli_req_context* %33, i64 %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load i64, i64* @TW_OSLI_REQ_STATE_COMPLETE, align 8
  %40 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %41 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %43 = load i32, i32* @TW_OSLI_BUSY_Q, align 4
  %44 = call i32 @tw_osli_req_q_remove_item(%struct.tw_osli_req_context* %42, i32 %43)
  %45 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %46 = call i32 @tw_osli_unmap_request(%struct.tw_osli_req_context* %45)
  %47 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %48 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %50 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %38
  %54 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %55 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @EBUSY, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %61 = load %union.ccb*, %union.ccb** %8, align 8
  %62 = bitcast %union.ccb* %61 to %struct.TYPE_6__*
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %84

66:                                               ; preds = %53
  %67 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %68 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @EFBIG, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %74 = load %union.ccb*, %union.ccb** %8, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_6__*
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 4
  br label %83

77:                                               ; preds = %66
  %78 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %union.ccb*, %union.ccb** %8, align 8
  %81 = bitcast %union.ccb* %80 to %struct.TYPE_6__*
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %72
  br label %84

84:                                               ; preds = %83, %59
  br label %200

85:                                               ; preds = %38
  %86 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %87 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store %struct.tw_cl_scsi_req_packet* %88, %struct.tw_cl_scsi_req_packet** %6, align 8
  %89 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %90 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @TW_CL_ERR_REQ_SUCCESS, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load i32, i32* @CAM_REQ_CMP, align 4
  %96 = load %union.ccb*, %union.ccb** %8, align 8
  %97 = bitcast %union.ccb* %96 to %struct.TYPE_6__*
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  br label %193

99:                                               ; preds = %85
  %100 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %101 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TW_CL_ERR_REQ_INVALID_TARGET, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %108 = load %union.ccb*, %union.ccb** %8, align 8
  %109 = bitcast %union.ccb* %108 to %struct.TYPE_6__*
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %107
  store i32 %112, i32* %110, align 4
  br label %160

113:                                              ; preds = %99
  %114 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %115 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @TW_CL_ERR_REQ_INVALID_LUN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %122 = load %union.ccb*, %union.ccb** %8, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_6__*
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %121
  store i32 %126, i32* %124, align 4
  br label %159

127:                                              ; preds = %113
  %128 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %129 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TW_CL_ERR_REQ_SCSI_ERROR, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %127
  %135 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  %136 = load %union.ccb*, %union.ccb** %8, align 8
  %137 = bitcast %union.ccb* %136 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %135
  store i32 %140, i32* %138, align 4
  br label %158

141:                                              ; preds = %127
  %142 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %143 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @TW_CL_ERR_REQ_BUS_RESET, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %141
  %149 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %150 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %151 = or i32 %149, %150
  %152 = load %union.ccb*, %union.ccb** %8, align 8
  %153 = bitcast %union.ccb* %152 to %struct.TYPE_6__*
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %151
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %148, %141
  br label %158

158:                                              ; preds = %157, %134
  br label %159

159:                                              ; preds = %158, %120
  br label %160

160:                                              ; preds = %159, %106
  %161 = load %union.ccb*, %union.ccb** %8, align 8
  %162 = bitcast %union.ccb* %161 to %struct.TYPE_6__*
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %160
  %167 = load i8*, i8** @CAM_REQ_CMP_ERR, align 8
  %168 = ptrtoint i8* %167 to i32
  %169 = load %union.ccb*, %union.ccb** %8, align 8
  %170 = bitcast %union.ccb* %169 to %struct.TYPE_6__*
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  store i32 %168, i32* %171, align 4
  br label %172

172:                                              ; preds = %166, %160
  %173 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %5, align 8
  %174 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @TW_CL_ERR_REQ_AUTO_SENSE_VALID, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %192

179:                                              ; preds = %172
  %180 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %6, align 8
  %181 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load %union.ccb*, %union.ccb** %8, align 8
  %184 = bitcast %union.ccb* %183 to %struct.TYPE_5__*
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 4
  %186 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %187 = load %union.ccb*, %union.ccb** %8, align 8
  %188 = bitcast %union.ccb* %187 to %struct.TYPE_6__*
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %186
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %179, %172
  br label %193

193:                                              ; preds = %192, %94
  %194 = load %struct.tw_cl_scsi_req_packet*, %struct.tw_cl_scsi_req_packet** %6, align 8
  %195 = getelementptr inbounds %struct.tw_cl_scsi_req_packet, %struct.tw_cl_scsi_req_packet* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load %union.ccb*, %union.ccb** %8, align 8
  %198 = bitcast %union.ccb* %197 to %struct.TYPE_5__*
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  store i32 %196, i32* %199, align 4
  br label %200

200:                                              ; preds = %193, %84
  %201 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %202 = xor i32 %201, -1
  %203 = load %union.ccb*, %union.ccb** %8, align 8
  %204 = bitcast %union.ccb* %203 to %struct.TYPE_6__*
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, %202
  store i32 %207, i32* %205, align 4
  %208 = load %struct.twa_softc*, %struct.twa_softc** %7, align 8
  %209 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @mtx_lock(i32 %210)
  %212 = load %union.ccb*, %union.ccb** %8, align 8
  %213 = call i32 @xpt_done(%union.ccb* %212)
  %214 = load %struct.twa_softc*, %struct.twa_softc** %7, align 8
  %215 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @mtx_unlock(i32 %216)
  %218 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %219 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %200
  %223 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %4, align 8
  %224 = load i32, i32* @TW_OSLI_FREE_Q, align 4
  %225 = call i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context* %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %200
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, %struct.tw_osli_req_context*, i64) #1

declare dso_local i32 @tw_osli_req_q_remove_item(%struct.tw_osli_req_context*, i32) #1

declare dso_local i32 @tw_osli_unmap_request(%struct.tw_osli_req_context*) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
