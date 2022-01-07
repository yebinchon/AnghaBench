; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i64, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, %struct.ncr53c9x_ecb*, %struct.TYPE_6__, i64, i64, %struct.cam_path*, %struct.cam_sim*, i32 }
%struct.ncr53c9x_ecb = type { i32, i32, %struct.ncr53c9x_softc* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.cam_path = type { i32 }
%struct.cam_sim = type { i32 }
%struct.cam_devq = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"mutex not initialized\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NCR_VARIANT_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"unknown variant %d, devices not attached\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"%s, %d MHz, SCSI ID %d\0A\00", align 1
@ncr53c9x_variant_names = common dso_local global i32* null, align 8
@NCR_VARIANT_FAS366 = common dso_local global i64 0, align 8
@NCR_MAX_MSG_LEN = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"cannot allocate MSGOUT buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot allocate MSGIN buffer\0A\00", align 1
@M_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"cannot allocate target info buffer\0A\00", align 1
@NCR_VARIANT_NCR53C90_86C01 = common dso_local global i64 0, align 8
@NCR_VARIANT_ESP100 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"cannot allocate device queue\0A\00", align 1
@ncr53c9x_action = common dso_local global i32 0, align 4
@ncr53c9x_poll = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"esp\00", align 1
@NCR_TAG_DEPTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"cannot allocate SIM entry\0A\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"cannot register bus\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [20 x i8] c"cannot create path\0A\00", align 1
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@ncr53c9x_async = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"cannot register async handler\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"cannot allocate ECB array\0A\00", align 1
@free_links = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ncr53c9x_watch = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncr53c9x_attach(%struct.ncr53c9x_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca %struct.ncr53c9x_ecb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %3, align 8
  %10 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %11 = call i64 @NCR_LOCK_INITIALIZED(%struct.ncr53c9x_softc* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %14, i32 0, i32 14
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %2, align 4
  br label %407

20:                                               ; preds = %1
  %21 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %21, i32 0, i32 10
  %23 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %23, i32 0, i32 12
  %25 = call i32 @callout_init_mtx(i32* %22, i32* %24, i32 0)
  %26 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NCR_VARIANT_MAX, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %20
  %32 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %32, i32 0, i32 14
  %34 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %2, align 4
  br label %407

41:                                               ; preds = %20
  %42 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %42, i32 0, i32 14
  %44 = load i32*, i32** @ncr53c9x_variant_names, align 8
  %45 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %51 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %53, i32 0, i32 19
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52, i32 %55)
  %59 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NCR_VARIANT_FAS366, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 16, i32 8
  %66 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %68, i32 0, i32 7
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %94

72:                                               ; preds = %41
  %73 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %73, i32 0, i32 3
  store i32 1, i32* %74, align 8
  %75 = load i32, i32* @NCR_MAX_MSG_LEN, align 4
  %76 = load i32, i32* @M_DEVBUF, align 4
  %77 = load i32, i32* @M_NOWAIT, align 4
  %78 = call i8* @malloc(i32 %75, i32 %76, i32 %77)
  %79 = bitcast i8* %78 to i32*
  %80 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %80, i32 0, i32 7
  store i32* %79, i32** %81, align 8
  %82 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %82, i32 0, i32 7
  %84 = load i32*, i32** %83, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %87, i32 0, i32 14
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  store i32 %92, i32* %2, align 4
  br label %407

93:                                               ; preds = %72
  br label %97

94:                                               ; preds = %41
  %95 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %96 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %95, i32 0, i32 3
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %94, %93
  %98 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %99 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %98, i32 0, i32 8
  %100 = load i32*, i32** %99, align 8
  %101 = icmp eq i32* %100, null
  br i1 %101, label %102, label %125

102:                                              ; preds = %97
  %103 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %103, i32 0, i32 4
  store i32 1, i32* %104, align 4
  %105 = load i32, i32* @NCR_MAX_MSG_LEN, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @M_DEVBUF, align 4
  %108 = load i32, i32* @M_NOWAIT, align 4
  %109 = call i8* @malloc(i32 %106, i32 %107, i32 %108)
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %112 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %111, i32 0, i32 8
  store i32* %110, i32** %112, align 8
  %113 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %114 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %113, i32 0, i32 8
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %102
  %118 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %118, i32 0, i32 14
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %121, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %123 = load i32, i32* @ENOMEM, align 4
  store i32 %123, i32* %8, align 4
  br label %394

124:                                              ; preds = %102
  br label %128

125:                                              ; preds = %97
  %126 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %127 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %126, i32 0, i32 4
  store i32 0, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %124
  %129 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %130 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @M_DEVBUF, align 4
  %136 = load i32, i32* @M_NOWAIT, align 4
  %137 = load i32, i32* @M_ZERO, align 4
  %138 = or i32 %136, %137
  %139 = call i8* @malloc(i32 %134, i32 %135, i32 %138)
  %140 = bitcast i8* %139 to i32*
  %141 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %142 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %141, i32 0, i32 9
  store i32* %140, i32** %142, align 8
  %143 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %144 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %143, i32 0, i32 9
  %145 = load i32*, i32** %144, align 8
  %146 = icmp eq i32* %145, null
  br i1 %146, label %147, label %154

147:                                              ; preds = %128
  %148 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %149 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %148, i32 0, i32 14
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32, i32* @ENOMEM, align 4
  store i32 %153, i32* %8, align 4
  br label %382

154:                                              ; preds = %128
  %155 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %156 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @NCR_VARIANT_NCR53C90_86C01, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %154
  %161 = load i64, i64* @NCR_VARIANT_ESP100, align 8
  %162 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %163 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  br label %164

164:                                              ; preds = %160, %154
  %165 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %166 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @FREQTOCCF(i32 %167)
  %169 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %170 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %169, i32 0, i32 5
  store i32 %168, i32* %170, align 8
  %171 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %172 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 8
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %164
  %176 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %177 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %176, i32 0, i32 5
  store i32 2, i32* %177, align 8
  br label %178

178:                                              ; preds = %175, %164
  %179 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %180 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = mul nsw i32 250000, %181
  %183 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %184 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = mul nsw i32 8192, %185
  %187 = sdiv i32 %182, %186
  %188 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %189 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 4
  %190 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %191 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = and i32 %192, 7
  store i32 %193, i32* %191, align 8
  %194 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %195 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call %struct.cam_devq* @cam_simq_alloc(i32 %196)
  store %struct.cam_devq* %197, %struct.cam_devq** %4, align 8
  %198 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %199 = icmp eq %struct.cam_devq* %198, null
  br i1 %199, label %200, label %207

200:                                              ; preds = %178
  %201 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %202 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %201, i32 0, i32 14
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %204, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %206 = load i32, i32* @ENOMEM, align 4
  store i32 %206, i32* %8, align 4
  br label %376

207:                                              ; preds = %178
  %208 = load i32, i32* @ncr53c9x_action, align 4
  %209 = load i32, i32* @ncr53c9x_poll, align 4
  %210 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %211 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %212 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %211, i32 0, i32 14
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = call i32 @device_get_unit(%struct.TYPE_5__* %214)
  %216 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %217 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %216, i32 0, i32 12
  %218 = load i32, i32* @NCR_TAG_DEPTH, align 4
  %219 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %220 = call %struct.cam_sim* @cam_sim_alloc(i32 %208, i32 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), %struct.ncr53c9x_softc* %210, i32 %215, i32* %217, i32 1, i32 %218, %struct.cam_devq* %219)
  store %struct.cam_sim* %220, %struct.cam_sim** %5, align 8
  %221 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %222 = icmp eq %struct.cam_sim* %221, null
  br i1 %222, label %223, label %230

223:                                              ; preds = %207
  %224 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %225 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %224, i32 0, i32 14
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %229 = load i32, i32* @ENOMEM, align 4
  store i32 %229, i32* %8, align 4
  br label %373

230:                                              ; preds = %207
  %231 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %232 = call i32 @NCR_LOCK(%struct.ncr53c9x_softc* %231)
  %233 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %234 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %235 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %234, i32 0, i32 14
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %236, align 8
  %238 = call i64 @xpt_bus_register(%struct.cam_sim* %233, %struct.TYPE_5__* %237, i32 0)
  %239 = load i64, i64* @CAM_SUCCESS, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %230
  %242 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %243 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %242, i32 0, i32 14
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %244, align 8
  %246 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %245, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %247 = load i32, i32* @EIO, align 4
  store i32 %247, i32* %8, align 4
  br label %367

248:                                              ; preds = %230
  %249 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %250 = call i32 @cam_sim_path(%struct.cam_sim* %249)
  %251 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %252 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %253 = call i64 @xpt_create_path(%struct.cam_path** %6, i32* null, i32 %250, i32 %251, i32 %252)
  %254 = load i64, i64* @CAM_REQ_CMP, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %248
  %257 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %258 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %257, i32 0, i32 14
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %259, align 8
  %261 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %260, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %262 = load i32, i32* @EIO, align 4
  store i32 %262, i32* %8, align 4
  br label %363

263:                                              ; preds = %248
  %264 = load i32, i32* @AC_LOST_DEVICE, align 4
  %265 = load i32, i32* @ncr53c9x_async, align 4
  %266 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %267 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %268 = call i64 @xpt_register_async(i32 %264, i32 %265, %struct.cam_sim* %266, %struct.cam_path* %267)
  %269 = load i64, i64* @CAM_REQ_CMP, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %278

271:                                              ; preds = %263
  %272 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %273 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %272, i32 0, i32 14
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %274, align 8
  %276 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %275, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %277 = load i32, i32* @EIO, align 4
  store i32 %277, i32* %8, align 4
  br label %360

278:                                              ; preds = %263
  %279 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %280 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %281 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %280, i32 0, i32 18
  store %struct.cam_sim* %279, %struct.cam_sim** %281, align 8
  %282 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %283 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %284 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %283, i32 0, i32 17
  store %struct.cam_path* %282, %struct.cam_path** %284, align 8
  %285 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %286 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %285, i32 0, i32 16
  store i64 0, i64* %286, align 8
  %287 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %288 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %287, i32 0, i32 15
  store i64 0, i64* %288, align 8
  %289 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %290 = call i32 @ncr53c9x_init(%struct.ncr53c9x_softc* %289, i32 1)
  %291 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %292 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %291, i32 0, i32 11
  %293 = call i32 @TAILQ_INIT(i32* %292)
  %294 = load i32, i32* @NCR_TAG_DEPTH, align 4
  %295 = sext i32 %294 to i64
  %296 = mul i64 16, %295
  %297 = trunc i64 %296 to i32
  %298 = load i32, i32* @M_DEVBUF, align 4
  %299 = load i32, i32* @M_NOWAIT, align 4
  %300 = load i32, i32* @M_ZERO, align 4
  %301 = or i32 %299, %300
  %302 = call i8* @malloc(i32 %297, i32 %298, i32 %301)
  %303 = bitcast i8* %302 to %struct.ncr53c9x_ecb*
  %304 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %305 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %304, i32 0, i32 13
  store %struct.ncr53c9x_ecb* %303, %struct.ncr53c9x_ecb** %305, align 8
  %306 = icmp eq %struct.ncr53c9x_ecb* %303, null
  br i1 %306, label %307, label %314

307:                                              ; preds = %278
  %308 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %309 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %308, i32 0, i32 14
  %310 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %310, align 8
  %312 = call i32 (%struct.TYPE_5__*, i8*, ...) @device_printf(%struct.TYPE_5__* %311, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %313 = load i32, i32* @ENOMEM, align 4
  store i32 %313, i32* %8, align 4
  br label %355

314:                                              ; preds = %278
  store i32 0, i32* %9, align 4
  br label %315

315:                                              ; preds = %342, %314
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* @NCR_TAG_DEPTH, align 4
  %318 = icmp slt i32 %316, %317
  br i1 %318, label %319, label %345

319:                                              ; preds = %315
  %320 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %321 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %320, i32 0, i32 13
  %322 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %321, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %322, i64 %324
  store %struct.ncr53c9x_ecb* %325, %struct.ncr53c9x_ecb** %7, align 8
  %326 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %327 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %7, align 8
  %328 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %327, i32 0, i32 2
  store %struct.ncr53c9x_softc* %326, %struct.ncr53c9x_softc** %328, align 8
  %329 = load i32, i32* %9, align 4
  %330 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %7, align 8
  %331 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %330, i32 0, i32 0
  store i32 %329, i32* %331, align 8
  %332 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %7, align 8
  %333 = getelementptr inbounds %struct.ncr53c9x_ecb, %struct.ncr53c9x_ecb* %332, i32 0, i32 1
  %334 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %335 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %334, i32 0, i32 12
  %336 = call i32 @callout_init_mtx(i32* %333, i32* %335, i32 0)
  %337 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %338 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %337, i32 0, i32 11
  %339 = load %struct.ncr53c9x_ecb*, %struct.ncr53c9x_ecb** %7, align 8
  %340 = load i32, i32* @free_links, align 4
  %341 = call i32 @TAILQ_INSERT_HEAD(i32* %338, %struct.ncr53c9x_ecb* %339, i32 %340)
  br label %342

342:                                              ; preds = %319
  %343 = load i32, i32* %9, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %9, align 4
  br label %315

345:                                              ; preds = %315
  %346 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %347 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %346, i32 0, i32 10
  %348 = load i32, i32* @hz, align 4
  %349 = mul nsw i32 60, %348
  %350 = load i32, i32* @ncr53c9x_watch, align 4
  %351 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %352 = call i32 @callout_reset(i32* %347, i32 %349, i32 %350, %struct.ncr53c9x_softc* %351)
  %353 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %354 = call i32 @NCR_UNLOCK(%struct.ncr53c9x_softc* %353)
  store i32 0, i32* %2, align 4
  br label %407

355:                                              ; preds = %307
  %356 = load i32, i32* @ncr53c9x_async, align 4
  %357 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %358 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %359 = call i64 @xpt_register_async(i32 0, i32 %356, %struct.cam_sim* %357, %struct.cam_path* %358)
  br label %360

360:                                              ; preds = %355, %271
  %361 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %362 = call i32 @xpt_free_path(%struct.cam_path* %361)
  br label %363

363:                                              ; preds = %360, %256
  %364 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %365 = call i32 @cam_sim_path(%struct.cam_sim* %364)
  %366 = call i32 @xpt_bus_deregister(i32 %365)
  br label %367

367:                                              ; preds = %363, %241
  %368 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %369 = call i32 @NCR_UNLOCK(%struct.ncr53c9x_softc* %368)
  %370 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %371 = load i32, i32* @TRUE, align 4
  %372 = call i32 @cam_sim_free(%struct.cam_sim* %370, i32 %371)
  br label %373

373:                                              ; preds = %367, %223
  %374 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %375 = call i32 @cam_simq_free(%struct.cam_devq* %374)
  br label %376

376:                                              ; preds = %373, %200
  %377 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %378 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %377, i32 0, i32 9
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* @M_DEVBUF, align 4
  %381 = call i32 @free(i32* %379, i32 %380)
  br label %382

382:                                              ; preds = %376, %147
  %383 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %384 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %383, i32 0, i32 4
  %385 = load i32, i32* %384, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %393

387:                                              ; preds = %382
  %388 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %389 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %388, i32 0, i32 8
  %390 = load i32*, i32** %389, align 8
  %391 = load i32, i32* @M_DEVBUF, align 4
  %392 = call i32 @free(i32* %390, i32 %391)
  br label %393

393:                                              ; preds = %387, %382
  br label %394

394:                                              ; preds = %393, %117
  %395 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %396 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %395, i32 0, i32 3
  %397 = load i32, i32* %396, align 8
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %394
  %400 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %401 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %400, i32 0, i32 7
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* @M_DEVBUF, align 4
  %404 = call i32 @free(i32* %402, i32 %403)
  br label %405

405:                                              ; preds = %399, %394
  %406 = load i32, i32* %8, align 4
  store i32 %406, i32* %2, align 4
  br label %407

407:                                              ; preds = %405, %345, %86, %31, %13
  %408 = load i32, i32* %2, align 4
  ret i32 %408
}

declare dso_local i64 @NCR_LOCK_INITIALIZED(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @device_printf(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @FREQTOCCF(i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, %struct.ncr53c9x_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(%struct.TYPE_5__*) #1

declare dso_local i32 @NCR_LOCK(%struct.ncr53c9x_softc*) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, %struct.TYPE_5__*, i32) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i64 @xpt_register_async(i32, i32, %struct.cam_sim*, %struct.cam_path*) #1

declare dso_local i32 @ncr53c9x_init(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.ncr53c9x_ecb*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ncr53c9x_softc*) #1

declare dso_local i32 @NCR_UNLOCK(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @xpt_free_path(%struct.cam_path*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
