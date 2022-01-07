; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_adb_mouse_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_adb_mouse_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adb_mouse_softc = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__, %struct.TYPE_4__, i64, i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.adb_mouse_softc* }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unknown Pointing Device\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ams\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MOUSE_IF_UNKNOWN = common dso_local global i32 0, align 4
@MOUSE_UNKNOWN = common dso_local global i8* null, align 8
@MOUSE_PROTO_SYSMOUSE = common dso_local global i32 0, align 4
@AMS_EXTENDED = common dso_local global i64 0, align 8
@MOUSE_PAD = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"Tablet\00", align 1
@MOUSE_MOUSE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Mouse\00", align 1
@MOUSE_TRACKBALL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"Trackball\00", align 1
@AMS_TOUCHPAD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Touchpad\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%d-button %d-dpi %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"MacAlly 2-Button Mouse\0A\00", align 1
@ams_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"ams%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @adb_mouse_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adb_mouse_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adb_mouse_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [8 x i32], align 16
  store i32 %0, i32* %2, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adb_mouse_softc* @device_get_softc(i32 %7)
  store %struct.adb_mouse_softc* %8, %struct.adb_mouse_softc** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %11 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %10, i32 0, i32 11
  store i32 %9, i32* %11, align 8
  %12 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %13 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %12, i32 0, i32 10
  %14 = load i32, i32* @MTX_DEF, align 4
  %15 = call i32 @mtx_init(i32* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %14)
  %16 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %17 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %16, i32 0, i32 9
  %18 = call i32 @cv_init(i32* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %20 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %22 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 2, i32* %23, align 8
  %24 = load i32, i32* @MOUSE_IF_UNKNOWN, align 4
  %25 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %26 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 4
  store i32 %24, i32* %27, align 8
  %28 = load i8*, i8** @MOUSE_UNKNOWN, align 8
  %29 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %30 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i8* %28, i8** %31, align 8
  %32 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %33 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i32 0, i32* %34, align 8
  %35 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %36 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load i32, i32* @MOUSE_PROTO_SYSMOUSE, align 4
  %39 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %40 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 5
  store i32 %38, i32* %41, align 8
  %42 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %43 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 -1, i32* %44, align 8
  %45 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %46 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 100, i32* %47, align 4
  %48 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %49 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %52 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %55 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 5, i32* %56, align 8
  %57 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %58 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %57, i32 0, i32 8
  store i64 0, i64* %58, align 8
  %59 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %60 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %62 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %61, i32 0, i32 6
  store i64 0, i64* %62, align 8
  %63 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %64 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %66 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @adb_set_device_handler(i32 %67, i32 4)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @adb_get_device_handler(i32 %69)
  switch i32 %70, label %174 [
    i32 1, label %71
    i32 2, label %75
    i32 4, label %79
  ]

71:                                               ; preds = %1
  %72 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %73 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  store i32 100, i32* %74, align 4
  br label %174

75:                                               ; preds = %1
  %76 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %77 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 200, i32* %78, align 4
  br label %174

79:                                               ; preds = %1
  %80 = load i32, i32* %2, align 4
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %82 = call i64 @adb_read_register(i32 %80, i32 1, i32* %81)
  store i64 %82, i64* %5, align 8
  %83 = load i64, i64* %5, align 8
  %84 = icmp ult i64 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %174

86:                                               ; preds = %79
  %87 = load i64, i64* @AMS_EXTENDED, align 8
  %88 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %89 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %93 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 2
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %96 = call i32 @memcpy(i32* %94, i32* %95, i32 4)
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = shl i32 %98, 8
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %99, %101
  %103 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %104 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 6
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %135 [
    i32 0, label %108
    i32 1, label %113
    i32 2, label %118
    i32 3, label %123
  ]

108:                                              ; preds = %86
  %109 = load i8*, i8** @MOUSE_PAD, align 8
  %110 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %111 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  store i8* %109, i8** %112, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %135

113:                                              ; preds = %86
  %114 = load i8*, i8** @MOUSE_MOUSE, align 8
  %115 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %116 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  store i8* %114, i8** %117, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %135

118:                                              ; preds = %86
  %119 = load i8*, i8** @MOUSE_TRACKBALL, align 8
  %120 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %121 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  store i8* %119, i8** %122, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  br label %135

123:                                              ; preds = %86
  %124 = load i64, i64* @AMS_TOUCHPAD, align 8
  %125 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %126 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = or i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load i8*, i8** @MOUSE_PAD, align 8
  %130 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %131 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 3
  store i8* %129, i8** %132, align 8
  %133 = load i32, i32* %2, align 4
  %134 = call i32 @adb_init_trackpad(i32 %133)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  br label %135

135:                                              ; preds = %86, %123, %118, %113, %108
  %136 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 7
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %139 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  store i32 %137, i32* %140, align 8
  %141 = load i32, i32* %2, align 4
  %142 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %143 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %147 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i8*, i8** %4, align 8
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %141, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %145, i32 %149, i8* %150)
  %152 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %153 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 1263487316
  br i1 %156, label %157, label %173

157:                                              ; preds = %135
  %158 = load i32, i32* %2, align 4
  %159 = call i32 @adb_set_device_handler(i32 %158, i32 66)
  %160 = load i32, i32* %2, align 4
  %161 = call i32 @adb_get_device_handler(i32 %160)
  %162 = icmp eq i32 %161, 66
  br i1 %162, label %163, label %172

163:                                              ; preds = %157
  %164 = load i32, i32* %2, align 4
  %165 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %166 = load i64, i64* @AMS_EXTENDED, align 8
  %167 = xor i64 %166, -1
  %168 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %169 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = and i64 %170, %167
  store i64 %171, i64* %169, align 8
  br label %172

172:                                              ; preds = %163, %157
  br label %173

173:                                              ; preds = %172, %135
  br label %174

174:                                              ; preds = %1, %173, %85, %75, %71
  %175 = load i32, i32* %2, align 4
  %176 = call i32 @device_get_unit(i32 %175)
  %177 = load i32, i32* @UID_ROOT, align 4
  %178 = load i32, i32* @GID_OPERATOR, align 4
  %179 = load i32, i32* %2, align 4
  %180 = call i32 @device_get_unit(i32 %179)
  %181 = call %struct.TYPE_6__* @make_dev(i32* @ams_cdevsw, i32 %176, i32 %177, i32 %178, i32 420, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %180)
  %182 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %183 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %182, i32 0, i32 0
  store %struct.TYPE_6__* %181, %struct.TYPE_6__** %183, align 8
  %184 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %185 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %3, align 8
  %186 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %185, i32 0, i32 0
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  store %struct.adb_mouse_softc* %184, %struct.adb_mouse_softc** %188, align 8
  %189 = load i32, i32* %2, align 4
  %190 = call i32 @adb_set_autopoll(i32 %189, i32 1)
  ret i32 0
}

declare dso_local %struct.adb_mouse_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @adb_set_device_handler(i32, i32) #1

declare dso_local i32 @adb_get_device_handler(i32) #1

declare dso_local i64 @adb_read_register(i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @adb_init_trackpad(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.TYPE_6__* @make_dev(i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @adb_set_autopoll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
