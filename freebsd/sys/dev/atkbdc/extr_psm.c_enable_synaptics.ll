; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_synaptics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_synaptics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_5__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.psmcpnp_softc = type { i32 }

@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"synaptics: BEGIN init\0A\00", align 1
@SYNAPTICS_READ_IDENTITY = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Synaptics Touchpad v%d.%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"  Unsupported (pre-v4) Touchpad detected\0A\00", align 1
@SYNAPTICS_READ_MODEL_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"  Failed to read model information\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"  Model information:\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"   infoRot180: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"   infoPortrait: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"   infoSensor: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"   infoHardware: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"   infoNewAbs: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"   capPen: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"   infoSimplC: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"   infoGeometry: %d\0A\00", align 1
@SYNAPTICS_READ_CAPABILITIES = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"  Failed to read extended capability bits\0A\00", align 1
@PSMCPNP_DRIVER_NAME = common dso_local global i32 0, align 4
@SYNAPTICS_READ_RESOLUTIONS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"  Extended capabilities:\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"   capExtended: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"   capMiddle: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"   nExtendedQueries: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"   capPassthrough: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"   capLowPower: %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"   capMultiFingerReport: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"   capSleep: %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"   capFourButtons: %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"   capBallistics: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"   capMultiFinger: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"   capPalmDetect: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"   infoXupmm: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"   infoYupmm: %d\0A\00", align 1
@SYNAPTICS_READ_EXTENDED = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [22 x i8] c"  Extended model ID:\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"   verticalScroll: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [25 x i8] c"   horizontalScroll: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [22 x i8] c"   verticalWheel: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"   nExtendedButtons: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"   capEWmode: %d\0A\00", align 1
@SYNAPTICS_READ_CAPABILITIES_CONT = common dso_local global i32 0, align 4
@SYNAPTICS_READ_MAX_COORDS = common dso_local global i32 0, align 4
@SYNAPTICS_READ_MIN_COORDS = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [27 x i8] c"  Continued capabilities:\0A\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"   capClickPad: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [22 x i8] c"   capDeluxeLEDs: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"   noAbsoluteFilter: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"   capReportsV: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"   capUniformClickPad: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"   capReportsMin: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"   capInterTouch: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"   capReportsMax: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"   capClearPad: %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [28 x i8] c"   capAdvancedGestures: %d\0A\00", align 1
@.str.45 = private unnamed_addr constant [22 x i8] c"   capCoveredPad: %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"   maximumXCoord: %d\0A\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"   maximumYCoord: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"   minimumXCoord: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"   minimumYCoord: %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [26 x i8] c"  Clickpad capabilities:\0A\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"   forcePad: %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"   topButtonPad: %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"  Additional Buttons: %d\0A\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"  No extended capabilities\0A\00", align 1
@SYNAPTICS_READ_MODES = common dso_local global i32 0, align 4
@.str.55 = private unnamed_addr constant [28 x i8] c"  Failed to read mode byte\0A\00", align 1
@PROBE = common dso_local global i32 0, align 4
@synaptics_support = common dso_local global i32 0, align 4
@MOUSE_MODEL_SYNAPTICS = common dso_local global i32 0, align 4
@trackpoint_support = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [34 x i8] c"synaptics: END init (%d buttons)\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"synaptics\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"Synaptics TouchPad\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_synaptics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_synaptics(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.psmcpnp_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %13 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @LOG_DEBUG, align 4
  %16 = call i32 @VLOG(i32 3, i32 ptrtoint ([23 x i8]* @.str to i32))
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @set_mouse_scaling(i32 %17, i32 1)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @SYNAPTICS_READ_IDENTITY, align 4
  %21 = call i64 @mouse_ext_command(i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %3, align 4
  br label %804

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %28 = call i32 @get_mouse_status(i32 %26, i32* %27, i32 0, i32 3)
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %3, align 4
  br label %804

32:                                               ; preds = %25
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 71
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @FALSE, align 4
  store i32 %37, i32* %3, align 4
  br label %804

38:                                               ; preds = %32
  %39 = call i32 @bzero(%struct.TYPE_6__* %9, i32 180)
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 15
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @verbose, align 4
  %48 = icmp sge i32 %47, 2
  br i1 %48, label %49, label %55

49:                                               ; preds = %38
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %38
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @FALSE, align 4
  store i32 %61, i32* %3, align 4
  br label %804

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @SYNAPTICS_READ_MODEL_ID, align 4
  %65 = call i64 @mouse_ext_command(i32 %63, i32 %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @FALSE, align 4
  store i32 %68, i32* %3, align 4
  br label %804

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %72 = call i32 @get_mouse_status(i32 %70, i32* %71, i32 0, i32 3)
  %73 = icmp ne i32 %72, 3
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @FALSE, align 4
  store i32 %75, i32* %3, align 4
  br label %804

76:                                               ; preds = %69
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 1
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @FALSE, align 4
  store i32 %83, i32* %3, align 4
  br label %804

84:                                               ; preds = %76
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 64
  %94 = icmp ne i32 %93, 0
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  store i32 %95, i32* %96, align 4
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 63
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  store i32 %99, i32* %100, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 254
  %104 = ashr i32 %103, 1
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, 128
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  store i32 %110, i32* %111, align 4
  %112 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 64
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i32
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 7
  store i32 %116, i32* %117, align 4
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, 32
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i32
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 8
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 15
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 9
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* @verbose, align 4
  %129 = icmp sge i32 %128, 2
  br i1 %129, label %130, label %156

130:                                              ; preds = %84
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %133)
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %136)
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %142)
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 9
  %154 = load i32, i32* %153, align 4
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %154)
  br label %156

156:                                              ; preds = %130, %84
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* @SYNAPTICS_READ_CAPABILITIES, align 4
  %159 = call i64 @mouse_ext_command(i32 %157, i32 %158)
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i32, i32* @FALSE, align 4
  store i32 %162, i32* %3, align 4
  br label %804

163:                                              ; preds = %156
  %164 = load i32, i32* %8, align 4
  %165 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %166 = call i32 @get_mouse_status(i32 %164, i32* %165, i32 0, i32 3)
  %167 = icmp ne i32 %166, 3
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load i32, i32* @FALSE, align 4
  store i32 %169, i32* %3, align 4
  br label %804

170:                                              ; preds = %163
  %171 = call i32 @SYNAPTICS_VERSION_GE(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %9, i32 7, i32 5)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %180, label %173

173:                                              ; preds = %170
  %174 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 71
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0))
  %179 = load i32, i32* @FALSE, align 4
  store i32 %179, i32* %3, align 4
  br label %804

180:                                              ; preds = %173, %170
  %181 = load i32, i32* @PSMCPNP_DRIVER_NAME, align 4
  %182 = call i32 @devclass_find(i32 %181)
  %183 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %184 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32* @devclass_get_device(i32 %182, i32 %185)
  store i32* %186, i32** %6, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %192

189:                                              ; preds = %180
  %190 = load i32*, i32** %6, align 8
  %191 = call %struct.psmcpnp_softc* @device_get_softc(i32* %190)
  br label %193

192:                                              ; preds = %180
  br label %193

193:                                              ; preds = %192, %189
  %194 = phi %struct.psmcpnp_softc* [ %191, %189 ], [ null, %192 ]
  store %struct.psmcpnp_softc* %194, %struct.psmcpnp_softc** %7, align 8
  store i32 0, i32* %11, align 4
  %195 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 128
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 10
  store i32 %199, i32* %200, align 4
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 10
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %716

204:                                              ; preds = %193
  %205 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 112
  %208 = ashr i32 %207, 4
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 11
  store i32 %208, i32* %209, align 4
  %210 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 4
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i32
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 12
  store i32 %214, i32* %215, align 4
  %216 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %217 = load i32, i32* %216, align 4
  %218 = and i32 %217, 128
  %219 = icmp ne i32 %218, 0
  %220 = zext i1 %219 to i32
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 13
  store i32 %220, i32* %221, align 4
  %222 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 64
  %225 = icmp ne i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 14
  store i32 %226, i32* %227, align 4
  %228 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = and i32 %229, 32
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i32
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 15
  store i32 %232, i32* %233, align 4
  %234 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, 16
  %237 = icmp ne i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 16
  store i32 %238, i32* %239, align 4
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %241 = load i32, i32* %240, align 4
  %242 = and i32 %241, 8
  %243 = icmp ne i32 %242, 0
  %244 = zext i1 %243 to i32
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 17
  store i32 %244, i32* %245, align 4
  %246 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %247 = load i32, i32* %246, align 4
  %248 = and i32 %247, 4
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i32
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 18
  store i32 %250, i32* %251, align 4
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 2
  %255 = icmp ne i32 %254, 0
  %256 = zext i1 %255 to i32
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 19
  store i32 %256, i32* %257, align 4
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = and i32 %259, 1
  %261 = icmp ne i32 %260, 0
  %262 = zext i1 %261 to i32
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 20
  store i32 %262, i32* %263, align 4
  %264 = load i32, i32* %8, align 4
  %265 = call i32 @set_mouse_scaling(i32 %264, i32 1)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %204
  %268 = load i32, i32* @FALSE, align 4
  store i32 %268, i32* %3, align 4
  br label %804

269:                                              ; preds = %204
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @SYNAPTICS_READ_RESOLUTIONS, align 4
  %272 = call i64 @mouse_ext_command(i32 %270, i32 %271)
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %274, label %276

274:                                              ; preds = %269
  %275 = load i32, i32* @FALSE, align 4
  store i32 %275, i32* %3, align 4
  br label %804

276:                                              ; preds = %269
  %277 = load i32, i32* %8, align 4
  %278 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %279 = call i32 @get_mouse_status(i32 %277, i32* %278, i32 0, i32 3)
  %280 = icmp ne i32 %279, 3
  br i1 %280, label %281, label %283

281:                                              ; preds = %276
  %282 = load i32, i32* @FALSE, align 4
  store i32 %282, i32* %3, align 4
  br label %804

283:                                              ; preds = %276
  %284 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %303

287:                                              ; preds = %283
  %288 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, 128
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %303

292:                                              ; preds = %287
  %293 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %303

296:                                              ; preds = %292
  %297 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %298 = load i32, i32* %297, align 4
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 21
  store i32 %298, i32* %299, align 4
  %300 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %301 = load i32, i32* %300, align 4
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 22
  store i32 %301, i32* %302, align 4
  br label %303

303:                                              ; preds = %296, %292, %287, %283
  %304 = load i32, i32* @verbose, align 4
  %305 = icmp sge i32 %304, 2
  br i1 %305, label %306, label %347

306:                                              ; preds = %303
  %307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 10
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %309)
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 12
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %312)
  %314 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 11
  %315 = load i32, i32* %314, align 4
  %316 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i32 %315)
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 13
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %318)
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 14
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i32 %321)
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 15
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.20, i64 0, i64 0), i32 %324)
  %326 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 16
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i32 %327)
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 17
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 %330)
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 18
  %333 = load i32, i32* %332, align 4
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %333)
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 19
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i32 %336)
  %338 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 20
  %339 = load i32, i32* %338, align 4
  %340 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0), i32 %339)
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 21
  %342 = load i32, i32* %341, align 4
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0), i32 %342)
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 22
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %306, %303
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 11
  %349 = load i32, i32* %348, align 4
  %350 = icmp sge i32 %349, 1
  br i1 %350, label %351, label %426

351:                                              ; preds = %347
  %352 = load i32, i32* %8, align 4
  %353 = call i32 @set_mouse_scaling(i32 %352, i32 1)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %357, label %355

355:                                              ; preds = %351
  %356 = load i32, i32* @FALSE, align 4
  store i32 %356, i32* %3, align 4
  br label %804

357:                                              ; preds = %351
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* @SYNAPTICS_READ_EXTENDED, align 4
  %360 = call i64 @mouse_ext_command(i32 %358, i32 %359)
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %362, label %364

362:                                              ; preds = %357
  %363 = load i32, i32* @FALSE, align 4
  store i32 %363, i32* %3, align 4
  br label %804

364:                                              ; preds = %357
  %365 = load i32, i32* %8, align 4
  %366 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %367 = call i32 @get_mouse_status(i32 %365, i32* %366, i32 0, i32 3)
  %368 = icmp ne i32 %367, 3
  br i1 %368, label %369, label %371

369:                                              ; preds = %364
  %370 = load i32, i32* @FALSE, align 4
  store i32 %370, i32* %3, align 4
  br label %804

371:                                              ; preds = %364
  %372 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = and i32 %373, 1
  %375 = icmp ne i32 %374, 0
  %376 = zext i1 %375 to i32
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 23
  store i32 %376, i32* %377, align 4
  %378 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %379 = load i32, i32* %378, align 4
  %380 = and i32 %379, 2
  %381 = icmp ne i32 %380, 0
  %382 = zext i1 %381 to i32
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 24
  store i32 %382, i32* %383, align 4
  %384 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %385 = load i32, i32* %384, align 4
  %386 = and i32 %385, 8
  %387 = icmp ne i32 %386, 0
  %388 = zext i1 %387 to i32
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 25
  store i32 %388, i32* %389, align 4
  %390 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %391 = load i32, i32* %390, align 4
  %392 = and i32 %391, 240
  %393 = ashr i32 %392, 4
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 26
  store i32 %393, i32* %394, align 4
  %395 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %396 = load i32, i32* %395, align 4
  %397 = and i32 %396, 4
  %398 = icmp ne i32 %397, 0
  %399 = zext i1 %398 to i32
  %400 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 27
  store i32 %399, i32* %400, align 4
  %401 = load i32, i32* @verbose, align 4
  %402 = icmp sge i32 %401, 2
  br i1 %402, label %403, label %420

403:                                              ; preds = %371
  %404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.28, i64 0, i64 0))
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 23
  %406 = load i32, i32* %405, align 4
  %407 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 %406)
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 24
  %409 = load i32, i32* %408, align 4
  %410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.30, i64 0, i64 0), i32 %409)
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 25
  %412 = load i32, i32* %411, align 4
  %413 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.31, i64 0, i64 0), i32 %412)
  %414 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 26
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i32 %415)
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 27
  %418 = load i32, i32* %417, align 4
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.33, i64 0, i64 0), i32 %418)
  br label %420

420:                                              ; preds = %403, %371
  %421 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 26
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 12
  %424 = load i32, i32* %423, align 4
  %425 = add nsw i32 %422, %424
  store i32 %425, i32* %11, align 4
  br label %432

426:                                              ; preds = %347
  %427 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 17
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, 0
  %430 = zext i1 %429 to i64
  %431 = select i1 %429, i32 1, i32 0
  store i32 %431, i32* %11, align 4
  br label %432

432:                                              ; preds = %426, %420
  %433 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 11
  %434 = load i32, i32* %433, align 4
  %435 = icmp sge i32 %434, 4
  br i1 %435, label %436, label %715

436:                                              ; preds = %432
  %437 = load i32, i32* %8, align 4
  %438 = call i32 @set_mouse_scaling(i32 %437, i32 1)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %442, label %440

440:                                              ; preds = %436
  %441 = load i32, i32* @FALSE, align 4
  store i32 %441, i32* %3, align 4
  br label %804

442:                                              ; preds = %436
  %443 = load i32, i32* %8, align 4
  %444 = load i32, i32* @SYNAPTICS_READ_CAPABILITIES_CONT, align 4
  %445 = call i64 @mouse_ext_command(i32 %443, i32 %444)
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = load i32, i32* @FALSE, align 4
  store i32 %448, i32* %3, align 4
  br label %804

449:                                              ; preds = %442
  %450 = load i32, i32* %8, align 4
  %451 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %452 = call i32 @get_mouse_status(i32 %450, i32* %451, i32 0, i32 3)
  %453 = icmp ne i32 %452, 3
  br i1 %453, label %454, label %456

454:                                              ; preds = %449
  %455 = load i32, i32* @FALSE, align 4
  store i32 %455, i32* %3, align 4
  br label %804

456:                                              ; preds = %449
  %457 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %458 = load i32, i32* %457, align 4
  %459 = and i32 %458, 1
  %460 = shl i32 %459, 1
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 28
  store i32 %460, i32* %461, align 4
  %462 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %463 = load i32, i32* %462, align 4
  %464 = and i32 %463, 16
  %465 = icmp ne i32 %464, 0
  %466 = zext i1 %465 to i32
  %467 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 28
  %468 = load i32, i32* %467, align 4
  %469 = or i32 %468, %466
  store i32 %469, i32* %467, align 4
  %470 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %471 = load i32, i32* %470, align 4
  %472 = and i32 %471, 2
  %473 = icmp ne i32 %472, 0
  %474 = zext i1 %473 to i32
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 29
  store i32 %474, i32* %475, align 4
  %476 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %477 = load i32, i32* %476, align 4
  %478 = and i32 %477, 4
  %479 = icmp ne i32 %478, 0
  %480 = zext i1 %479 to i32
  %481 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 30
  store i32 %480, i32* %481, align 4
  %482 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %483 = load i32, i32* %482, align 4
  %484 = and i32 %483, 8
  %485 = icmp ne i32 %484, 0
  %486 = zext i1 %485 to i32
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 31
  store i32 %486, i32* %487, align 4
  %488 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %489 = load i32, i32* %488, align 4
  %490 = and i32 %489, 16
  %491 = icmp ne i32 %490, 0
  %492 = zext i1 %491 to i32
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 32
  store i32 %492, i32* %493, align 4
  %494 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %495 = load i32, i32* %494, align 4
  %496 = and i32 %495, 32
  %497 = icmp ne i32 %496, 0
  %498 = zext i1 %497 to i32
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 33
  store i32 %498, i32* %499, align 4
  %500 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %501 = load i32, i32* %500, align 4
  %502 = and i32 %501, 64
  %503 = icmp ne i32 %502, 0
  %504 = zext i1 %503 to i32
  %505 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 34
  store i32 %504, i32* %505, align 4
  %506 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %507 = load i32, i32* %506, align 4
  %508 = and i32 %507, 2
  %509 = icmp ne i32 %508, 0
  %510 = zext i1 %509 to i32
  %511 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 35
  store i32 %510, i32* %511, align 4
  %512 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %513 = load i32, i32* %512, align 4
  %514 = and i32 %513, 4
  %515 = icmp ne i32 %514, 0
  %516 = zext i1 %515 to i32
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 36
  store i32 %516, i32* %517, align 4
  %518 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %519 = load i32, i32* %518, align 4
  %520 = and i32 %519, 8
  %521 = icmp ne i32 %520, 0
  %522 = zext i1 %521 to i32
  %523 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 37
  store i32 %522, i32* %523, align 4
  %524 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %525, 128
  %527 = icmp ne i32 %526, 0
  %528 = zext i1 %527 to i32
  %529 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 38
  store i32 %528, i32* %529, align 4
  %530 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 35
  %531 = load i32, i32* %530, align 4
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %572

533:                                              ; preds = %456
  %534 = load i32, i32* %8, align 4
  %535 = call i32 @set_mouse_scaling(i32 %534, i32 1)
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %539, label %537

537:                                              ; preds = %533
  %538 = load i32, i32* @FALSE, align 4
  store i32 %538, i32* %3, align 4
  br label %804

539:                                              ; preds = %533
  %540 = load i32, i32* %8, align 4
  %541 = load i32, i32* @SYNAPTICS_READ_MAX_COORDS, align 4
  %542 = call i64 @mouse_ext_command(i32 %540, i32 %541)
  %543 = icmp eq i64 %542, 0
  br i1 %543, label %544, label %546

544:                                              ; preds = %539
  %545 = load i32, i32* @FALSE, align 4
  store i32 %545, i32* %3, align 4
  br label %804

546:                                              ; preds = %539
  %547 = load i32, i32* %8, align 4
  %548 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %549 = call i32 @get_mouse_status(i32 %547, i32* %548, i32 0, i32 3)
  %550 = icmp ne i32 %549, 3
  br i1 %550, label %551, label %553

551:                                              ; preds = %546
  %552 = load i32, i32* @FALSE, align 4
  store i32 %552, i32* %3, align 4
  br label %804

553:                                              ; preds = %546
  %554 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %555 = load i32, i32* %554, align 4
  %556 = shl i32 %555, 5
  %557 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %558 = load i32, i32* %557, align 4
  %559 = and i32 %558, 15
  %560 = shl i32 %559, 1
  %561 = or i32 %556, %560
  %562 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 39
  store i32 %561, i32* %562, align 4
  %563 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %564 = load i32, i32* %563, align 4
  %565 = shl i32 %564, 5
  %566 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %567 = load i32, i32* %566, align 4
  %568 = and i32 %567, 240
  %569 = ashr i32 %568, 3
  %570 = or i32 %565, %569
  %571 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 40
  store i32 %570, i32* %571, align 4
  br label %575

572:                                              ; preds = %456
  %573 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 39
  store i32 5472, i32* %573, align 4
  %574 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 40
  store i32 4448, i32* %574, align 4
  br label %575

575:                                              ; preds = %572, %553
  %576 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 33
  %577 = load i32, i32* %576, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %618

579:                                              ; preds = %575
  %580 = load i32, i32* %8, align 4
  %581 = call i32 @set_mouse_scaling(i32 %580, i32 1)
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %585, label %583

583:                                              ; preds = %579
  %584 = load i32, i32* @FALSE, align 4
  store i32 %584, i32* %3, align 4
  br label %804

585:                                              ; preds = %579
  %586 = load i32, i32* %8, align 4
  %587 = load i32, i32* @SYNAPTICS_READ_MIN_COORDS, align 4
  %588 = call i64 @mouse_ext_command(i32 %586, i32 %587)
  %589 = icmp eq i64 %588, 0
  br i1 %589, label %590, label %592

590:                                              ; preds = %585
  %591 = load i32, i32* @FALSE, align 4
  store i32 %591, i32* %3, align 4
  br label %804

592:                                              ; preds = %585
  %593 = load i32, i32* %8, align 4
  %594 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %595 = call i32 @get_mouse_status(i32 %593, i32* %594, i32 0, i32 3)
  %596 = icmp ne i32 %595, 3
  br i1 %596, label %597, label %599

597:                                              ; preds = %592
  %598 = load i32, i32* @FALSE, align 4
  store i32 %598, i32* %3, align 4
  br label %804

599:                                              ; preds = %592
  %600 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %601 = load i32, i32* %600, align 4
  %602 = shl i32 %601, 5
  %603 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %604 = load i32, i32* %603, align 4
  %605 = and i32 %604, 15
  %606 = shl i32 %605, 1
  %607 = or i32 %602, %606
  %608 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 41
  store i32 %607, i32* %608, align 4
  %609 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 2
  %610 = load i32, i32* %609, align 4
  %611 = shl i32 %610, 5
  %612 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %613 = load i32, i32* %612, align 4
  %614 = and i32 %613, 240
  %615 = ashr i32 %614, 3
  %616 = or i32 %611, %615
  %617 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 42
  store i32 %616, i32* %617, align 4
  br label %621

618:                                              ; preds = %575
  %619 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 41
  store i32 1472, i32* %619, align 4
  %620 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 42
  store i32 1408, i32* %620, align 4
  br label %621

621:                                              ; preds = %618, %599
  %622 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 28
  %623 = load i32, i32* %622, align 4
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %638

625:                                              ; preds = %621
  %626 = load %struct.psmcpnp_softc*, %struct.psmcpnp_softc** %7, align 8
  %627 = icmp ne %struct.psmcpnp_softc* %626, null
  br i1 %627, label %628, label %638

628:                                              ; preds = %625
  %629 = load %struct.psmcpnp_softc*, %struct.psmcpnp_softc** %7, align 8
  %630 = getelementptr inbounds %struct.psmcpnp_softc, %struct.psmcpnp_softc* %629, i32 0, i32 0
  %631 = load i32, i32* %630, align 4
  switch i32 %631, label %636 [
    i32 129, label %632
    i32 128, label %634
  ]

632:                                              ; preds = %628
  %633 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 43
  store i32 1, i32* %633, align 4
  br label %637

634:                                              ; preds = %628
  %635 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 44
  store i32 1, i32* %635, align 4
  br label %637

636:                                              ; preds = %628
  br label %637

637:                                              ; preds = %636, %634, %632
  br label %638

638:                                              ; preds = %637, %625, %621
  %639 = load i32, i32* @verbose, align 4
  %640 = icmp sge i32 %639, 2
  br i1 %640, label %641, label %710

641:                                              ; preds = %638
  %642 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0))
  %643 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 28
  %644 = load i32, i32* %643, align 4
  %645 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i64 0, i64 0), i32 %644)
  %646 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 29
  %647 = load i32, i32* %646, align 4
  %648 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.36, i64 0, i64 0), i32 %647)
  %649 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 30
  %650 = load i32, i32* %649, align 4
  %651 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i64 0, i64 0), i32 %650)
  %652 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 31
  %653 = load i32, i32* %652, align 4
  %654 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.38, i64 0, i64 0), i32 %653)
  %655 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 32
  %656 = load i32, i32* %655, align 4
  %657 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i64 0, i64 0), i32 %656)
  %658 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 33
  %659 = load i32, i32* %658, align 4
  %660 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i64 0, i64 0), i32 %659)
  %661 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 34
  %662 = load i32, i32* %661, align 4
  %663 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0), i32 %662)
  %664 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 35
  %665 = load i32, i32* %664, align 4
  %666 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i64 0, i64 0), i32 %665)
  %667 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 36
  %668 = load i32, i32* %667, align 4
  %669 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), i32 %668)
  %670 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 37
  %671 = load i32, i32* %670, align 4
  %672 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.44, i64 0, i64 0), i32 %671)
  %673 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 38
  %674 = load i32, i32* %673, align 4
  %675 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.45, i64 0, i64 0), i32 %674)
  %676 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 35
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %686

679:                                              ; preds = %641
  %680 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 39
  %681 = load i32, i32* %680, align 4
  %682 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i64 0, i64 0), i32 %681)
  %683 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 40
  %684 = load i32, i32* %683, align 4
  %685 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 %684)
  br label %686

686:                                              ; preds = %679, %641
  %687 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 33
  %688 = load i32, i32* %687, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %697

690:                                              ; preds = %686
  %691 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 41
  %692 = load i32, i32* %691, align 4
  %693 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0), i32 %692)
  %694 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 42
  %695 = load i32, i32* %694, align 4
  %696 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0), i32 %695)
  br label %697

697:                                              ; preds = %690, %686
  %698 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 28
  %699 = load i32, i32* %698, align 4
  %700 = icmp ne i32 %699, 0
  br i1 %700, label %701, label %709

701:                                              ; preds = %697
  %702 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.50, i64 0, i64 0))
  %703 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 43
  %704 = load i32, i32* %703, align 4
  %705 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i64 0, i64 0), i32 %704)
  %706 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 44
  %707 = load i32, i32* %706, align 4
  %708 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i64 0, i64 0), i32 %707)
  br label %709

709:                                              ; preds = %701, %697
  br label %710

710:                                              ; preds = %709, %638
  %711 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 28
  %712 = load i32, i32* %711, align 4
  %713 = load i32, i32* %11, align 4
  %714 = add nsw i32 %713, %712
  store i32 %714, i32* %11, align 4
  br label %715

715:                                              ; preds = %710, %432
  br label %716

716:                                              ; preds = %715, %193
  %717 = load i32, i32* @verbose, align 4
  %718 = icmp sge i32 %717, 2
  br i1 %718, label %719, label %729

719:                                              ; preds = %716
  %720 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 10
  %721 = load i32, i32* %720, align 4
  %722 = icmp ne i32 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %719
  %724 = load i32, i32* %11, align 4
  %725 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i32 %724)
  br label %728

726:                                              ; preds = %719
  %727 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i64 0, i64 0))
  br label %728

728:                                              ; preds = %726, %723
  br label %729

729:                                              ; preds = %728, %716
  %730 = load i32, i32* %11, align 4
  %731 = add nsw i32 %730, 3
  store i32 %731, i32* %11, align 4
  %732 = load i32, i32* %8, align 4
  %733 = load i32, i32* @SYNAPTICS_READ_MODES, align 4
  %734 = call i64 @mouse_ext_command(i32 %732, i32 %733)
  %735 = icmp eq i64 %734, 0
  br i1 %735, label %736, label %738

736:                                              ; preds = %729
  %737 = load i32, i32* @FALSE, align 4
  store i32 %737, i32* %3, align 4
  br label %804

738:                                              ; preds = %729
  %739 = load i32, i32* %8, align 4
  %740 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %741 = call i32 @get_mouse_status(i32 %739, i32* %740, i32 0, i32 3)
  %742 = icmp ne i32 %741, 3
  br i1 %742, label %743, label %745

743:                                              ; preds = %738
  %744 = load i32, i32* @FALSE, align 4
  store i32 %744, i32* %3, align 4
  br label %804

745:                                              ; preds = %738
  %746 = call i32 @SYNAPTICS_VERSION_GE(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %9, i32 7, i32 5)
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %755, label %748

748:                                              ; preds = %745
  %749 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 1
  %750 = load i32, i32* %749, align 4
  %751 = icmp ne i32 %750, 71
  br i1 %751, label %752, label %755

752:                                              ; preds = %748
  %753 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.55, i64 0, i64 0))
  %754 = load i32, i32* @FALSE, align 4
  store i32 %754, i32* %3, align 4
  br label %804

755:                                              ; preds = %748, %745
  %756 = load i32, i32* %5, align 4
  %757 = load i32, i32* @PROBE, align 4
  %758 = icmp eq i32 %756, %757
  br i1 %758, label %759, label %764

759:                                              ; preds = %755
  %760 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %761 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %760, i32 0, i32 1
  %762 = bitcast %struct.TYPE_6__* %761 to i8*
  %763 = bitcast %struct.TYPE_6__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %762, i8* align 4 %763, i64 180, i1 false)
  br label %764

764:                                              ; preds = %759, %755
  %765 = load i32, i32* @synaptics_support, align 4
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %769, label %767

767:                                              ; preds = %764
  %768 = load i32, i32* @FALSE, align 4
  store i32 %768, i32* %3, align 4
  br label %804

769:                                              ; preds = %764
  %770 = load i32, i32* @MOUSE_MODEL_SYNAPTICS, align 4
  %771 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %772 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %771, i32 0, i32 0
  %773 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %772, i32 0, i32 1
  store i32 %770, i32* %773, align 4
  %774 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %775 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %776 = call i32 @synaptics_preferred_mode(%struct.psm_softc* %775)
  %777 = call i32 @synaptics_set_mode(%struct.psm_softc* %774, i32 %776)
  %778 = load i64, i64* @trackpoint_support, align 8
  %779 = icmp ne i64 %778, 0
  br i1 %779, label %780, label %788

780:                                              ; preds = %769
  %781 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 13
  %782 = load i32, i32* %781, align 4
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %788

784:                                              ; preds = %780
  %785 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %786 = load i32, i32* %5, align 4
  %787 = call i32 @enable_trackpoint(%struct.psm_softc* %785, i32 %786)
  br label %788

788:                                              ; preds = %784, %780, %769
  %789 = load i32, i32* @LOG_DEBUG, align 4
  %790 = load i32, i32* %11, align 4
  %791 = call i32 @VLOG(i32 3, i32 %790)
  %792 = load i32, i32* %5, align 4
  %793 = load i32, i32* @PROBE, align 4
  %794 = icmp eq i32 %792, %793
  br i1 %794, label %795, label %802

795:                                              ; preds = %788
  %796 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %797 = call i32 @synaptics_sysctl_create_tree(%struct.psm_softc* %796, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0))
  %798 = load i32, i32* %11, align 4
  %799 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %800 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %799, i32 0, i32 0
  %801 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %800, i32 0, i32 0
  store i32 %798, i32* %801, align 4
  br label %802

802:                                              ; preds = %795, %788
  %803 = load i32, i32* @TRUE, align 4
  store i32 %803, i32* %3, align 4
  br label %804

804:                                              ; preds = %802, %767, %752, %743, %736, %597, %590, %583, %551, %544, %537, %454, %447, %440, %369, %362, %355, %281, %274, %267, %177, %168, %161, %81, %74, %67, %59, %36, %30, %23
  %805 = load i32, i32* %3, align 4
  ret i32 %805
}

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @set_mouse_scaling(i32, i32) #1

declare dso_local i64 @mouse_ext_command(i32, i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SYNAPTICS_VERSION_GE(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8, i32, i32) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32 @devclass_find(i32) #1

declare dso_local %struct.psmcpnp_softc* @device_get_softc(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @synaptics_set_mode(%struct.psm_softc*, i32) #1

declare dso_local i32 @synaptics_preferred_mode(%struct.psm_softc*) #1

declare dso_local i32 @enable_trackpoint(%struct.psm_softc*, i32) #1

declare dso_local i32 @synaptics_sysctl_create_tree(%struct.psm_softc*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
