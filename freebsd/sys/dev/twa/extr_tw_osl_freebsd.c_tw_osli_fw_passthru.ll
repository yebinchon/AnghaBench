; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_fw_passthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_fw_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twa_softc = type { i32, i32 }
%struct.tw_osli_req_context = type { i32, i32, i64, i32, i32*, %struct.TYPE_7__*, i32, %struct.tw_cl_req_packet, i32*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.tw_cl_req_packet = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { %struct.tw_cl_passthru_req_packet }
%struct.tw_cl_passthru_req_packet = type { i32, i32, i32* }
%struct.TYPE_5__ = type { %struct.tw_osli_req_context* }
%struct.tw_osli_ioctl_no_data_buf = type { %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ioctl: passthru\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_PASSTHRU = common dso_local global i32 0, align 4
@tw_osl_complete_passthru = common dso_local global i32 0, align 4
@TW_CL_REQ_RETRY_ON_BUSY = common dso_local global i32 0, align 4
@TW_OSLI_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Could not alloc mem for fw_passthru data_buf\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Could not copyin fw_passthru data_buf\00", align 1
@TW_OSLI_REQ_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@TW_OSLI_REQ_STATE_COMPLETE = common dso_local global i64 0, align 8
@TW_OSLI_REQ_FLAGS_SLEEPING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"twa_passthru\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Passthru request timed out!\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"Could not copyout fw_passthru data_buf\00", align 1
@TW_CL_ERR_REQ_BUS_RESET = common dso_local global i32 0, align 4
@TW_OSLI_FREE_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osli_fw_passthru(%struct.twa_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twa_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tw_osli_req_context*, align 8
  %7 = alloca %struct.tw_osli_ioctl_no_data_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tw_cl_req_packet*, align 8
  %12 = alloca %struct.tw_cl_passthru_req_packet*, align 8
  %13 = alloca i32, align 4
  store %struct.twa_softc* %0, %struct.twa_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.tw_osli_ioctl_no_data_buf*
  store %struct.tw_osli_ioctl_no_data_buf* %15, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  store i32 60, i32* %9, align 4
  %16 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %17 = call i32 @tw_osli_dbg_dprintf(i32 5, %struct.twa_softc* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %19 = call %struct.tw_osli_req_context* @tw_osli_get_request(%struct.twa_softc* %18)
  store %struct.tw_osli_req_context* %19, %struct.tw_osli_req_context** %6, align 8
  %20 = icmp eq %struct.tw_osli_req_context* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  store i32 %22, i32* %3, align 4
  br label %308

23:                                               ; preds = %2
  %24 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %25 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %26 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %25, i32 0, i32 9
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.tw_osli_req_context* %24, %struct.tw_osli_req_context** %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %30 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %29, i32 0, i32 8
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* @TW_OSLI_REQ_FLAGS_PASSTHRU, align 4
  %32 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %33 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %37 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %36, i32 0, i32 7
  store %struct.tw_cl_req_packet* %37, %struct.tw_cl_req_packet** %11, align 8
  %38 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %39 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* @tw_osl_complete_passthru, align 4
  %41 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %42 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @TW_CL_REQ_RETRY_ON_BUSY, align 4
  %44 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %45 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %49 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store %struct.tw_cl_passthru_req_packet* %50, %struct.tw_cl_passthru_req_packet** %12, align 8
  %51 = load %struct.tw_osli_ioctl_no_data_buf*, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  %52 = getelementptr inbounds %struct.tw_osli_ioctl_no_data_buf, %struct.tw_osli_ioctl_no_data_buf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %56 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, 1
  %59 = add nsw i32 %54, %58
  %60 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %61 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = xor i32 %63, -1
  %65 = and i32 %59, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %68 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = icmp ne i32 %66, 0
  br i1 %69, label %70, label %115

70:                                               ; preds = %23
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = call i32* @malloc(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %76 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %75, i32 0, i32 4
  store i32* %74, i32** %76, align 8
  %77 = icmp eq i32* %74, null
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %13, align 4
  %80 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %81 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %82 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %83 = load i32, i32* %13, align 4
  %84 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, ...) @tw_osli_printf(%struct.twa_softc* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 8214, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  br label %280

85:                                               ; preds = %70
  %86 = load %struct.tw_osli_ioctl_no_data_buf*, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  %87 = getelementptr inbounds %struct.tw_osli_ioctl_no_data_buf, %struct.tw_osli_ioctl_no_data_buf* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %91 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.tw_osli_ioctl_no_data_buf*, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  %94 = getelementptr inbounds %struct.tw_osli_ioctl_no_data_buf, %struct.tw_osli_ioctl_no_data_buf* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @copyin(i32* %89, i32* %92, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %85
  %100 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %101 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %102 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, ...) @tw_osli_printf(%struct.twa_softc* %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102, i32 8215, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %103)
  br label %280

105:                                              ; preds = %85
  %106 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %107 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_IN, align 4
  %109 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_OUT, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %112 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %118

115:                                              ; preds = %23
  %116 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %117 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %105
  %119 = load %struct.tw_osli_ioctl_no_data_buf*, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  %120 = getelementptr inbounds %struct.tw_osli_ioctl_no_data_buf, %struct.tw_osli_ioctl_no_data_buf* %119, i32 0, i32 2
  %121 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %122 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %121, i32 0, i32 2
  store i32* %120, i32** %122, align 8
  %123 = load %struct.tw_cl_passthru_req_packet*, %struct.tw_cl_passthru_req_packet** %12, align 8
  %124 = getelementptr inbounds %struct.tw_cl_passthru_req_packet, %struct.tw_cl_passthru_req_packet* %123, i32 0, i32 1
  store i32 4, i32* %124, align 4
  %125 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %126 = call i32 @tw_osli_map_request(%struct.tw_osli_req_context* %125)
  store i32 %126, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %280

129:                                              ; preds = %118
  %130 = call i32 (...) @tw_osl_get_local_time()
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %130, %131
  store i32 %132, i32* %8, align 4
  br label %133

133:                                              ; preds = %247, %243, %129
  %134 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %135 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @TW_OSLI_REQ_STATE_COMPLETE, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %251

139:                                              ; preds = %133
  %140 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %141 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @mtx_lock(i32 %142)
  %144 = load i32, i32* @TW_OSLI_REQ_FLAGS_SLEEPING, align 4
  %145 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %146 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %150 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %151 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @hz, align 4
  %155 = mul nsw i32 %153, %154
  %156 = call i32 @mtx_sleep(%struct.tw_osli_req_context* %149, i32 %152, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %158 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @mtx_unlock(i32 %159)
  %161 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %162 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @TW_OSLI_REQ_FLAGS_SLEEPING, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %139
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %139
  %169 = load i32, i32* @TW_OSLI_REQ_FLAGS_SLEEPING, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %172 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = load i32, i32* %13, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %196, label %177

177:                                              ; preds = %168
  %178 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %179 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %177
  %183 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %184 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @TW_OSLI_REQ_STATE_COMPLETE, align 8
  %187 = icmp ne i64 %185, %186
  %188 = zext i1 %187 to i32
  store i32 %188, i32* %13, align 4
  br i1 %187, label %194, label %189

189:                                              ; preds = %182
  %190 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %191 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189, %182, %177
  br label %280

195:                                              ; preds = %189
  br label %251

196:                                              ; preds = %168
  %197 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %198 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %203 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %13, align 4
  br label %280

205:                                              ; preds = %196
  %206 = load i32, i32* %13, align 4
  %207 = load i32, i32* @EWOULDBLOCK, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %247

209:                                              ; preds = %205
  %210 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %211 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %226, label %214

214:                                              ; preds = %209
  %215 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %216 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @TW_OSLI_REQ_STATE_COMPLETE, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %222 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %220
  store i32 0, i32* %13, align 4
  br label %251

226:                                              ; preds = %220, %214, %209
  %227 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %228 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %227, i32 0, i32 5
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = call i32 @tw_cl_is_reset_needed(i32* %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %226
  %234 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %235 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @device_printf(i32 %236, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %238 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %239 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %238, i32 0, i32 5
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = call i32 @tw_cl_reset_ctlr(i32* %241)
  br label %243

243:                                              ; preds = %233, %226
  store i32 0, i32* %13, align 4
  %244 = call i32 (...) @tw_osl_get_local_time()
  %245 = load i32, i32* %9, align 4
  %246 = add nsw i32 %244, %245
  store i32 %246, i32* %8, align 4
  br label %133

247:                                              ; preds = %205
  %248 = load i32, i32* %8, align 4
  %249 = call i32 (...) @tw_osl_get_local_time()
  %250 = sub nsw i32 %248, %249
  store i32 %250, i32* %9, align 4
  br label %133

251:                                              ; preds = %225, %195, %133
  %252 = load i32, i32* %13, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %279, label %254

254:                                              ; preds = %251
  %255 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %256 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %279

259:                                              ; preds = %254
  %260 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %261 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %260, i32 0, i32 4
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.tw_osli_ioctl_no_data_buf*, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  %264 = getelementptr inbounds %struct.tw_osli_ioctl_no_data_buf, %struct.tw_osli_ioctl_no_data_buf* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.tw_osli_ioctl_no_data_buf*, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  %267 = getelementptr inbounds %struct.tw_osli_ioctl_no_data_buf, %struct.tw_osli_ioctl_no_data_buf* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @copyout(i32* %262, i64 %265, i32 %269)
  store i32 %270, i32* %13, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %259
  %273 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %274 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %275 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %276 = load i32, i32* %13, align 4
  %277 = call i32 (%struct.twa_softc*, i8*, i32, i32, i32, i8*, ...) @tw_osli_printf(%struct.twa_softc* %273, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %274, i32 %275, i32 8217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %276)
  br label %278

278:                                              ; preds = %272, %259
  br label %279

279:                                              ; preds = %278, %254, %251
  br label %280

280:                                              ; preds = %279, %201, %194, %128, %99, %78
  %281 = load %struct.tw_cl_req_packet*, %struct.tw_cl_req_packet** %11, align 8
  %282 = getelementptr inbounds %struct.tw_cl_req_packet, %struct.tw_cl_req_packet* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @TW_CL_ERR_REQ_BUS_RESET, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %280
  %287 = load i32, i32* @EBUSY, align 4
  store i32 %287, i32* %13, align 4
  br label %288

288:                                              ; preds = %286, %280
  %289 = load i32, i32* %13, align 4
  %290 = load %struct.tw_osli_ioctl_no_data_buf*, %struct.tw_osli_ioctl_no_data_buf** %7, align 8
  %291 = getelementptr inbounds %struct.tw_osli_ioctl_no_data_buf, %struct.tw_osli_ioctl_no_data_buf* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 1
  store i32 %289, i32* %292, align 4
  %293 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %294 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %293, i32 0, i32 4
  %295 = load i32*, i32** %294, align 8
  %296 = icmp ne i32* %295, null
  br i1 %296, label %297, label %303

297:                                              ; preds = %288
  %298 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %299 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %298, i32 0, i32 4
  %300 = load i32*, i32** %299, align 8
  %301 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %302 = call i32 @free(i32* %300, i32 %301)
  br label %303

303:                                              ; preds = %297, %288
  %304 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %6, align 8
  %305 = load i32, i32* @TW_OSLI_FREE_Q, align 4
  %306 = call i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context* %304, i32 %305)
  %307 = load i32, i32* %13, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %303, %21
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local %struct.tw_osli_req_context* @tw_osli_get_request(%struct.twa_softc*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, ...) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @tw_osli_map_request(%struct.tw_osli_req_context*) #1

declare dso_local i32 @tw_osl_get_local_time(...) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local i32 @mtx_sleep(%struct.tw_osli_req_context*, i32, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

declare dso_local i32 @tw_cl_is_reset_needed(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tw_cl_reset_ctlr(i32*) #1

declare dso_local i32 @copyout(i32*, i64, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
