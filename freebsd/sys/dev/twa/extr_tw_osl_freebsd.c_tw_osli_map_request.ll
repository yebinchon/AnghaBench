; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_map_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_map_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_osli_req_context = type { i32, i32, i32, i64, i32, %struct.TYPE_3__, i32, i32*, i32*, i32, i32, %struct.twa_softc* }
%struct.TYPE_3__ = type { i32 (i32*)* }
%struct.twa_softc = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED = common dso_local global i32 0, align 4
@TW_OSLI_MALLOC_CLASS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"error = %d\00", align 1
@TW_CL_SEVERITY_ERROR_STRING = common dso_local global i32 0, align 4
@TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to allocate memory for bounce buffer\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@TW_OSLI_REQ_FLAGS_PASSTHRU = common dso_local global i32 0, align 4
@twa_map_load_data_callback = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_CCB = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i64 0, align 8
@TW_OSLI_REQ_FLAGS_MAPPED = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to map DMA memory for I/O request\00", align 1
@TW_OSLI_REQ_FLAGS_FAILED = common dso_local global i32 0, align 4
@TW_OSLI_REQ_STATE_BUSY = common dso_local global i32 0, align 4
@TW_OSLI_BUSY_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @tw_osli_map_request(%struct.tw_osli_req_context* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.tw_osli_req_context*, align 8
  %4 = alloca %struct.twa_softc*, align 8
  %5 = alloca i64, align 8
  store %struct.tw_osli_req_context* %0, %struct.tw_osli_req_context** %3, align 8
  %6 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %7 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %6, i32 0, i32 11
  %8 = load %struct.twa_softc*, %struct.twa_softc** %7, align 8
  store %struct.twa_softc* %8, %struct.twa_softc** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %10 = call i32 @tw_osli_dbg_dprintf(i32 10, %struct.twa_softc* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %12 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %11, i32 0, i32 8
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %240

15:                                               ; preds = %1
  %16 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %17 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %16, i32 0, i32 8
  %18 = load i32*, i32** %17, align 8
  %19 = ptrtoint i32* %18 to i32
  %20 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %21 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %15
  %26 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %27 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %30 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %96

34:                                               ; preds = %25, %15
  %35 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED, align 4
  %36 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %37 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %41 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %44 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %43, i32 0, i32 7
  store i32* %42, i32** %44, align 8
  %45 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %46 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %49 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %51 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %54 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = add nsw i32 %52, %56
  %58 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %59 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = xor i32 %61, -1
  %63 = and i32 %57, %62
  %64 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %65 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %67 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %70 = load i32, i32* @M_NOWAIT, align 4
  %71 = call i32* @malloc(i32 %68, i32 %69, i32 %70)
  %72 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %73 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %72, i32 0, i32 8
  store i32* %71, i32** %73, align 8
  %74 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %75 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %74, i32 0, i32 8
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %95

78:                                               ; preds = %34
  %79 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %80 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %81 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %82 = load i64, i64* @ENOMEM, align 8
  %83 = call i32 @tw_osli_printf(%struct.twa_softc* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %81, i32 8222, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %85 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %88 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %87, i32 0, i32 8
  store i32* %86, i32** %88, align 8
  %89 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %90 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %93 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load i64, i64* @ENOMEM, align 8
  store i64 %94, i64* %2, align 8
  br label %286

95:                                               ; preds = %34
  br label %96

96:                                               ; preds = %95, %25
  %97 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %98 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @TW_OSLI_REQ_FLAGS_PASSTHRU, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %96
  %104 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %105 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mtx_lock_spin(i32 %106)
  %108 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %109 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %112 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %115 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %114, i32 0, i32 8
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %118 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @twa_map_load_data_callback, align 4
  %121 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %122 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %123 = call i64 @bus_dmamap_load(i32 %110, i32 %113, i32* %116, i32 %119, i32 %120, %struct.tw_osli_req_context* %121, i32 %122)
  store i64 %123, i64* %5, align 8
  %124 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %125 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @mtx_unlock_spin(i32 %126)
  br label %167

128:                                              ; preds = %96
  %129 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %130 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @TW_OSLI_REQ_FLAGS_CCB, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %128
  %136 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %137 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %140 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %139, i32 0, i32 9
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %143 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @twa_map_load_data_callback, align 4
  %146 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %147 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %148 = call i64 @bus_dmamap_load_ccb(i32 %138, i32 %141, i32 %144, i32 %145, %struct.tw_osli_req_context* %146, i32 %147)
  store i64 %148, i64* %5, align 8
  br label %166

149:                                              ; preds = %128
  %150 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %151 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %154 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %157 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %156, i32 0, i32 8
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %160 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @twa_map_load_data_callback, align 4
  %163 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %164 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %165 = call i64 @bus_dmamap_load(i32 %152, i32 %155, i32* %158, i32 %161, i32 %162, %struct.tw_osli_req_context* %163, i32 %164)
  store i64 %165, i64* %5, align 8
  br label %166

166:                                              ; preds = %149, %135
  br label %167

167:                                              ; preds = %166, %103
  %168 = load i64, i64* %5, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %172 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  store i64 %173, i64* %5, align 8
  br label %239

174:                                              ; preds = %167
  %175 = load i64, i64* %5, align 8
  %176 = load i64, i64* @EINPROGRESS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %204

178:                                              ; preds = %174
  %179 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %180 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @mtx_lock_spin(i32 %181)
  %183 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %184 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @TW_OSLI_REQ_FLAGS_MAPPED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %178
  %190 = load i32, i32* @TW_OSLI_REQ_FLAGS_IN_PROGRESS, align 4
  %191 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %192 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 4
  br label %195

195:                                              ; preds = %189, %178
  %196 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %197 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %198 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %197, i32 0, i32 4
  %199 = call i32 @tw_osli_disallow_new_requests(%struct.twa_softc* %196, i32* %198)
  %200 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %201 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @mtx_unlock_spin(i32 %202)
  store i64 0, i64* %5, align 8
  br label %238

204:                                              ; preds = %174
  %205 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %206 = load i32, i32* @TW_CL_SEVERITY_ERROR_STRING, align 4
  %207 = load i32, i32* @TW_CL_MESSAGE_SOURCE_FREEBSD_DRIVER, align 4
  %208 = load i64, i64* %5, align 8
  %209 = call i32 @tw_osli_printf(%struct.twa_softc* %205, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %206, i32 %207, i32 39321, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i64 %208)
  %210 = load i32, i32* @TW_OSLI_REQ_FLAGS_FAILED, align 4
  %211 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %212 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  %215 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %216 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %204
  %222 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %223 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %222, i32 0, i32 8
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %226 = call i32 @free(i32* %224, i32 %225)
  %227 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %228 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %227, i32 0, i32 7
  %229 = load i32*, i32** %228, align 8
  %230 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %231 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %230, i32 0, i32 8
  store i32* %229, i32** %231, align 8
  %232 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %233 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %236 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %221, %204
  br label %238

238:                                              ; preds = %237, %195
  br label %239

239:                                              ; preds = %238, %170
  br label %284

240:                                              ; preds = %1
  %241 = load i32, i32* @TW_OSLI_REQ_STATE_BUSY, align 4
  %242 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %243 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  %244 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %245 = load i32, i32* @TW_OSLI_BUSY_Q, align 4
  %246 = call i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context* %244, i32 %245)
  %247 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %248 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @TW_OSLI_REQ_FLAGS_PASSTHRU, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %240
  %254 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %255 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %254, i32 0, i32 1
  %256 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %257 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %256, i32 0, i32 5
  %258 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %259 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %258, i32 0, i32 4
  %260 = call i64 @tw_cl_fw_passthru(i32* %255, %struct.TYPE_3__* %257, i32* %259)
  store i64 %260, i64* %5, align 8
  br label %269

261:                                              ; preds = %240
  %262 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %263 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %262, i32 0, i32 1
  %264 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %265 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %264, i32 0, i32 5
  %266 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %267 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %266, i32 0, i32 4
  %268 = call i64 @tw_cl_start_io(i32* %263, %struct.TYPE_3__* %265, i32* %267)
  store i64 %268, i64* %5, align 8
  br label %269

269:                                              ; preds = %261, %253
  %270 = load i64, i64* %5, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %283

272:                                              ; preds = %269
  %273 = load i64, i64* %5, align 8
  %274 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %275 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %274, i32 0, i32 3
  store i64 %273, i64* %275, align 8
  %276 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %277 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %276, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 0
  %279 = load i32 (i32*)*, i32 (i32*)** %278, align 8
  %280 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %281 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %280, i32 0, i32 4
  %282 = call i32 %279(i32* %281)
  br label %283

283:                                              ; preds = %272, %269
  br label %284

284:                                              ; preds = %283, %239
  %285 = load i64, i64* %5, align 8
  store i64 %285, i64* %2, align 8
  br label %286

286:                                              ; preds = %284, %78
  %287 = load i64, i64* %2, align 8
  ret i64 %287
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @tw_osli_printf(%struct.twa_softc*, i8*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @mtx_lock_spin(i32) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.tw_osli_req_context*, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32) #1

declare dso_local i64 @bus_dmamap_load_ccb(i32, i32, i32, i32, %struct.tw_osli_req_context*, i32) #1

declare dso_local i32 @tw_osli_disallow_new_requests(%struct.twa_softc*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @tw_osli_req_q_insert_tail(%struct.tw_osli_req_context*, i32) #1

declare dso_local i64 @tw_cl_fw_passthru(i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i64 @tw_cl_start_io(i32*, %struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
