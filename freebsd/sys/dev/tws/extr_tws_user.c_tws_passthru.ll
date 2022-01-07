; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_user.c_tws_passthru.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_user.c_tws_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32, i32, i32 }
%struct.tws_request = type { i32, i32, i32, i64, i32, i32, %struct.TYPE_13__*, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.tws_ioctl_no_data_buf = type { %struct.TYPE_14__, i32, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_15__ }

@TWS_MAX_IO_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TWS_ONLINE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@TWS_REQ_TYPE_PASSTHRU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tws_sleep\00", align 1
@TWS_IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"datal,rid\00", align 1
@TWS_DIR_IN = common dso_local global i32 0, align 4
@TWS_DIR_OUT = common dso_local global i32 0, align 4
@tws_passthru_complete = common dso_local global i32 0, align 4
@TWS_FW_CMD_EXECUTE_SCSI = common dso_local global i64 0, align 8
@TWS_REQ_STATE_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"tws_passthru\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"msleep timeout\00", align 1
@TWS_REQ_RET_RESET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"ioctl reset\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"errored\00", align 1
@TWS_REQ_RET_SUBMIT_SUCCESS = common dso_local global i32 0, align 4
@TWS_REQ_STATE_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tws_softc*, i8*)* @tws_passthru to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tws_passthru(%struct.tws_softc* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tws_request*, align 8
  %7 = alloca %struct.tws_ioctl_no_data_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.tws_ioctl_no_data_buf*
  store %struct.tws_ioctl_no_data_buf* %12, %struct.tws_ioctl_no_data_buf** %7, align 8
  %13 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %14 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @roundup2(i32 %16, i32 512)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @TWS_MAX_IO_SIZE, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %297

23:                                               ; preds = %2
  %24 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %25 = call i64 @tws_get_state(%struct.tws_softc* %24)
  %26 = load i64, i64* @TWS_ONLINE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @EBUSY, align 4
  store i32 %29, i32* %3, align 4
  br label %297

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %58, %30
  %32 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %33 = load i32, i32* @TWS_REQ_TYPE_PASSTHRU, align 4
  %34 = call %struct.tws_request* @tws_get_request(%struct.tws_softc* %32, i32 %33)
  store %struct.tws_request* %34, %struct.tws_request** %6, align 8
  %35 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %36 = icmp ne %struct.tws_request* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %39 = load i32, i32* @TWS_IOCTL_TIMEOUT, align 4
  %40 = load i32, i32* @hz, align 4
  %41 = mul nsw i32 %39, %40
  %42 = call i32 @tsleep(%struct.tws_softc* %38, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @EWOULDBLOCK, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %47, i32* %3, align 4
  br label %297

48:                                               ; preds = %37
  br label %57

49:                                               ; preds = %31
  %50 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %51 = call i64 @tws_get_state(%struct.tws_softc* %50)
  %52 = load i64, i64* @TWS_ONLINE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @EBUSY, align 4
  store i32 %55, i32* %3, align 4
  br label %297

56:                                               ; preds = %49
  br label %59

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  br i1 true, label %31, label %59

59:                                               ; preds = %58, %56
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %63 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %65 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %66 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %69 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %73 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %59
  %77 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %78 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %81 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %83 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %86 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %88 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %91 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %94 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @copyin(i32 %89, i32 %92, i32 %95)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %76, %59
  %98 = load i32, i32* @TWS_DIR_IN, align 4
  %99 = load i32, i32* @TWS_DIR_OUT, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %102 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @tws_passthru_complete, align 4
  %104 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %105 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %107 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %106, i32 0, i32 6
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %111 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = call i32 @memcpy(%struct.TYPE_15__* %109, %struct.TYPE_15__* %112, i32 4)
  %114 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %115 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %114, i32 0, i32 6
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @GET_OPCODE(i32 %120)
  %122 = load i64, i64* @TWS_FW_CMD_EXECUTE_SCSI, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %97
  %125 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %126 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %125, i32 0, i32 6
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = and i32 %131, 61440
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %135 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %133, %136
  %138 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %139 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %138, i32 0, i32 6
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  store i32 %137, i32* %143, align 8
  br label %156

144:                                              ; preds = %97
  %145 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %146 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %150 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %149, i32 0, i32 6
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  store i64 %148, i64* %155, align 8
  br label %156

156:                                              ; preds = %144, %124
  %157 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %158 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %159 = call i32 @tws_map_request(%struct.tws_softc* %157, %struct.tws_request* %158)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %156
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %165 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 8
  br label %251

167:                                              ; preds = %156
  %168 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %169 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %168, i32 0, i32 3
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @TWS_REQ_STATE_COMPLETE, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %175 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %178 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  store i32 %176, i32* %179, align 8
  br label %214

180:                                              ; preds = %167
  %181 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %182 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %181, i32 0, i32 0
  %183 = call i32 @mtx_lock(i32* %182)
  %184 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %185 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %186 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %185, i32 0, i32 0
  %187 = load i32, i32* @TWS_IOCTL_TIMEOUT, align 4
  %188 = load i32, i32* @hz, align 4
  %189 = mul nsw i32 %187, %188
  %190 = call i32 @mtx_sleep(%struct.tws_request* %184, i32* %186, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %189)
  store i32 %190, i32* %8, align 4
  %191 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %192 = getelementptr inbounds %struct.tws_softc, %struct.tws_softc* %191, i32 0, i32 0
  %193 = call i32 @mtx_unlock(i32* %192)
  %194 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %195 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @TWS_REQ_STATE_COMPLETE, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %180
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* @EWOULDBLOCK, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %199
  %204 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %207 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %204, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %205, i32 %208)
  %210 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %211 = bitcast %struct.tws_request* %210 to i8*
  %212 = call i32 @tws_timeout(i8* %211)
  br label %213

213:                                              ; preds = %203, %199, %180
  br label %214

214:                                              ; preds = %213, %173
  %215 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %216 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @TWS_REQ_RET_RESET, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %231

220:                                              ; preds = %214
  %221 = load i32, i32* @EBUSY, align 4
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* @EBUSY, align 4
  %223 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %224 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  %225 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %226 = load i32, i32* %8, align 4
  %227 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %228 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %225, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %226, i32 %229)
  br label %231

231:                                              ; preds = %220, %214
  %232 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %233 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %234 = call i32 @tws_unmap_request(%struct.tws_softc* %232, %struct.tws_request* %233)
  %235 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %236 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %239 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %238, i32 0, i32 6
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = call i32 @memcpy(%struct.TYPE_15__* %237, %struct.TYPE_15__* %241, i32 4)
  %243 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %244 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  %246 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %247 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %246, i32 0, i32 6
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 0
  %250 = call i32 @memcpy(%struct.TYPE_15__* %245, %struct.TYPE_15__* %249, i32 4)
  br label %251

251:                                              ; preds = %231, %162
  %252 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %253 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %272

256:                                              ; preds = %251
  %257 = load i32, i32* %8, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %256
  %260 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %261 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %264 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %267 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @copyout(i32 %262, i32 %265, i32 %269)
  store i32 %270, i32* %8, align 4
  br label %271

271:                                              ; preds = %259, %256
  br label %272

272:                                              ; preds = %271, %251
  %273 = load i32, i32* %8, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %272
  %276 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %276, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %277, i32 0)
  br label %279

279:                                              ; preds = %275, %272
  %280 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %281 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %280, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @TWS_REQ_RET_SUBMIT_SUCCESS, align 4
  %284 = icmp ne i32 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %279
  %286 = load i32, i32* %8, align 4
  %287 = load %struct.tws_ioctl_no_data_buf*, %struct.tws_ioctl_no_data_buf** %7, align 8
  %288 = getelementptr inbounds %struct.tws_ioctl_no_data_buf, %struct.tws_ioctl_no_data_buf* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  store i32 %286, i32* %289, align 8
  br label %290

290:                                              ; preds = %285, %279
  %291 = load i64, i64* @TWS_REQ_STATE_FREE, align 8
  %292 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %293 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %292, i32 0, i32 3
  store i64 %291, i64* %293, align 8
  %294 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %295 = call i32 @wakeup_one(%struct.tws_softc* %294)
  %296 = load i32, i32* %8, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %290, %54, %46, %28, %21
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i64 @roundup2(i32, i32) #1

declare dso_local i64 @tws_get_state(%struct.tws_softc*) #1

declare dso_local %struct.tws_request* @tws_get_request(%struct.tws_softc*, i32) #1

declare dso_local i32 @tsleep(%struct.tws_softc*, i32, i8*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @copyin(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, %struct.TYPE_15__*, i32) #1

declare dso_local i64 @GET_OPCODE(i32) #1

declare dso_local i32 @tws_map_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_sleep(%struct.tws_request*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @tws_timeout(i8*) #1

declare dso_local i32 @tws_unmap_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

declare dso_local i32 @wakeup_one(%struct.tws_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
