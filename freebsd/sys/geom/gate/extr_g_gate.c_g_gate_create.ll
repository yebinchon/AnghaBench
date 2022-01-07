; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/gate/extr_g_gate.c_g_gate_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_gate_softc = type { i32, i32, i64, i32, i64, i8*, i64, i32, i32, %struct.g_provider*, %struct.g_consumer*, i64, i32, i32, i32 }
%struct.g_provider = type { i64, i8*, i32, i32 }
%struct.g_consumer = type { i32 }
%struct.g_gate_ctl_create = type { i64, i32, i32, i64, i8*, i64, i32, i8*, i32, i32 }
%struct.g_geom = type { i8*, %struct.g_gate_softc*, i32, i32, i32, i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Invalid media size.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid sector size.\00", align 1
@G_GATE_FLAG_READONLY = common dso_local global i32 0, align 4
@G_GATE_FLAG_WRITEONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"Invalid flags.\00", align 1
@G_GATE_UNIT_AUTO = common dso_local global i64 0, align 8
@G_GATE_NAME_GIVEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid unit number.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"No device name.\00", align 1
@M_GATE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@G_GATE_USERFLAGS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"gg:queue\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@G_GATE_MAX_QUEUE_SIZE = common dso_local global i64 0, align 8
@g_gate_units_lock = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@G_GATE_PROVIDER_NAME = common dso_local global i8* null, align 8
@g_gate_maxunits = common dso_local global i32 0, align 4
@g_gate_units = common dso_local global %struct.g_gate_softc** null, align 8
@EEXIST = common dso_local global i32 0, align 4
@g_gate_nunits = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [27 x i8] c"Provider %s doesn't exist.\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Invalid read offset.\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Invalid read offset or media size.\00", align 1
@g_gate_class = common dso_local global i32 0, align 4
@g_gate_start = common dso_local global i32 0, align 4
@g_gate_access = common dso_local global i32 0, align 4
@g_gate_orphan = common dso_local global i32 0, align 4
@g_gate_dumpconf = common dso_local global i32 0, align 4
@G_CF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_CF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Unable to attach to %s.\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Unable to access %s.\00", align 1
@G_PF_DIRECT_SEND = common dso_local global i32 0, align 4
@G_PF_DIRECT_RECEIVE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"Device %s created.\00", align 1
@hz = common dso_local global i32 0, align 4
@g_gate_guard = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"negative g_gate_nunits?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_gate_ctl_create*)* @g_gate_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_gate_create(%struct.g_gate_ctl_create* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_gate_ctl_create*, align 8
  %4 = alloca %struct.g_gate_softc*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_consumer*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.g_gate_ctl_create* %0, %struct.g_gate_ctl_create** %3, align 8
  %14 = load i32, i32* @NAME_MAX, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %18 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %19 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

25:                                               ; preds = %1
  %26 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %27 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

33:                                               ; preds = %25
  %34 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %35 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @powerof2(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

42:                                               ; preds = %33
  %43 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %44 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %47 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = srem i64 %45, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

55:                                               ; preds = %42
  %56 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %57 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @G_GATE_FLAG_READONLY, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %55
  %63 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %64 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @G_GATE_FLAG_WRITEONLY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

72:                                               ; preds = %62, %55
  %73 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %74 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @G_GATE_UNIT_AUTO, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %72
  %79 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %80 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @G_GATE_NAME_GIVEN, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %86 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %91 = load i32, i32* @EINVAL, align 4
  store i32 %91, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

92:                                               ; preds = %84, %78, %72
  %93 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %94 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @G_GATE_NAME_GIVEN, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %100 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %98
  %107 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

109:                                              ; preds = %98, %92
  %110 = load i32, i32* @M_GATE, align 4
  %111 = load i32, i32* @M_WAITOK, align 4
  %112 = load i32, i32* @M_ZERO, align 4
  %113 = or i32 %111, %112
  %114 = call %struct.g_gate_softc* @malloc(i32 96, i32 %110, i32 %113)
  store %struct.g_gate_softc* %114, %struct.g_gate_softc** %4, align 8
  %115 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %116 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @G_GATE_USERFLAGS, align 4
  %119 = and i32 %117, %118
  %120 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %121 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %123 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %122, i32 0, i32 14
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %126 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @strlcpy(i32 %124, i32 %127, i32 4)
  %129 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %130 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %132 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %131, i32 0, i32 13
  %133 = call i32 @bioq_init(i32* %132)
  %134 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %135 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %134, i32 0, i32 12
  %136 = call i32 @bioq_init(i32* %135)
  %137 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %138 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %137, i32 0, i32 7
  %139 = load i32, i32* @MTX_DEF, align 4
  %140 = call i32 @mtx_init(i32* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* null, i32 %139)
  %141 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %142 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %141, i32 0, i32 11
  store i64 0, i64* %142, align 8
  %143 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %144 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %147 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %146, i32 0, i32 2
  store i64 %145, i64* %147, align 8
  %148 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %149 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @G_GATE_MAX_QUEUE_SIZE, align 8
  %152 = icmp sgt i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %109
  %154 = load i64, i64* @G_GATE_MAX_QUEUE_SIZE, align 8
  %155 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %156 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %109
  %158 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %159 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %162 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %164 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %163, i32 0, i32 8
  %165 = call i32 @callout_init(i32* %164, i32 1)
  %166 = call i32 @mtx_lock(i32* @g_gate_units_lock)
  %167 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %168 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @g_gate_getunit(i64 %169, i32* %11)
  %171 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %172 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %171, i32 0, i32 4
  store i64 %170, i64* %172, align 8
  %173 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %174 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = icmp ult i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %157
  br label %429

178:                                              ; preds = %157
  %179 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %180 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @G_GATE_NAME_GIVEN, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = trunc i64 %15 to i32
  %186 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %187 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %186, i32 0, i32 4
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %188)
  br label %197

190:                                              ; preds = %178
  %191 = trunc i64 %15 to i32
  %192 = load i8*, i8** @G_GATE_PROVIDER_NAME, align 8
  %193 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %194 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %17, i32 %191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %192, i64 %195)
  br label %197

197:                                              ; preds = %190, %184
  store i32 0, i32* %12, align 4
  br label %198

198:                                              ; preds = %223, %197
  %199 = load i32, i32* %12, align 4
  %200 = load i32, i32* @g_gate_maxunits, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %226

202:                                              ; preds = %198
  %203 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %204 = load i32, i32* %12, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %203, i64 %205
  %207 = load %struct.g_gate_softc*, %struct.g_gate_softc** %206, align 8
  %208 = icmp eq %struct.g_gate_softc* %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %223

210:                                              ; preds = %202
  %211 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %212 = load i32, i32* %12, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %211, i64 %213
  %215 = load %struct.g_gate_softc*, %struct.g_gate_softc** %214, align 8
  %216 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %215, i32 0, i32 5
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @strcmp(i8* %17, i8* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %210
  br label %223

221:                                              ; preds = %210
  %222 = load i32, i32* @EEXIST, align 4
  store i32 %222, i32* %11, align 4
  br label %429

223:                                              ; preds = %220, %209
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %12, align 4
  br label %198

226:                                              ; preds = %198
  %227 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %228 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %227, i32 0, i32 5
  store i8* %17, i8** %228, align 8
  %229 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %230 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %231 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %232 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %231, i32 0, i32 4
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %230, i64 %233
  store %struct.g_gate_softc* %229, %struct.g_gate_softc** %234, align 8
  %235 = load i64, i64* @g_gate_nunits, align 8
  %236 = add nsw i64 %235, 1
  store i64 %236, i64* @g_gate_nunits, align 8
  %237 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  %238 = call i32 (...) @g_topology_lock()
  %239 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %240 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %239, i32 0, i32 7
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 0
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %226
  store %struct.g_provider* null, %struct.g_provider** %7, align 8
  br label %289

247:                                              ; preds = %226
  %248 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %249 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %248, i32 0, i32 7
  %250 = load i8*, i8** %249, align 8
  %251 = call %struct.g_provider* @g_provider_by_name(i8* %250)
  store %struct.g_provider* %251, %struct.g_provider** %7, align 8
  %252 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %253 = icmp eq %struct.g_provider* %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %247
  %255 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %256 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %255, i32 0, i32 7
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i8* %257)
  %259 = load i32, i32* @EINVAL, align 4
  store i32 %259, i32* %11, align 4
  br label %415

260:                                              ; preds = %247
  %261 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %262 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %261, i32 0, i32 8
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %265 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = srem i32 %263, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %260
  %270 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %271 = load i32, i32* @EINVAL, align 4
  store i32 %271, i32* %11, align 4
  br label %415

272:                                              ; preds = %260
  %273 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %274 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %277 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %275, %279
  %281 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %282 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = icmp sgt i64 %280, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %272
  %286 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %287 = load i32, i32* @EINVAL, align 4
  store i32 %287, i32* %11, align 4
  br label %415

288:                                              ; preds = %272
  br label %289

289:                                              ; preds = %288, %246
  %290 = call %struct.g_geom* @g_new_geomf(i32* @g_gate_class, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  store %struct.g_geom* %290, %struct.g_geom** %5, align 8
  %291 = load i32, i32* @g_gate_start, align 4
  %292 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %293 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %292, i32 0, i32 5
  store i32 %291, i32* %293, align 4
  %294 = load i32, i32* @g_gate_access, align 4
  %295 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %296 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %295, i32 0, i32 4
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* @g_gate_orphan, align 4
  %298 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %299 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %298, i32 0, i32 3
  store i32 %297, i32* %299, align 4
  %300 = load i32, i32* @g_gate_dumpconf, align 4
  %301 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %302 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %301, i32 0, i32 2
  store i32 %300, i32* %302, align 8
  %303 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %304 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %305 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %304, i32 0, i32 1
  store %struct.g_gate_softc* %303, %struct.g_gate_softc** %305, align 8
  %306 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %307 = icmp ne %struct.g_provider* %306, null
  br i1 %307, label %308, label %350

308:                                              ; preds = %289
  %309 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %310 = call %struct.g_consumer* @g_new_consumer(%struct.g_geom* %309)
  store %struct.g_consumer* %310, %struct.g_consumer** %8, align 8
  %311 = load i32, i32* @G_CF_DIRECT_SEND, align 4
  %312 = load i32, i32* @G_CF_DIRECT_RECEIVE, align 4
  %313 = or i32 %311, %312
  %314 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %315 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %319 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %320 = call i32 @g_attach(%struct.g_consumer* %318, %struct.g_provider* %319)
  store i32 %320, i32* %11, align 4
  %321 = load i32, i32* %11, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %308
  %324 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %325 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %324, i32 0, i32 1
  %326 = load i8*, i8** %325, align 8
  %327 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %326)
  br label %410

328:                                              ; preds = %308
  %329 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %330 = call i32 @g_access(%struct.g_consumer* %329, i32 1, i32 0, i32 0)
  store i32 %330, i32* %11, align 4
  %331 = load i32, i32* %11, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %328
  %334 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %335 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %334, i32 0, i32 1
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %336)
  %338 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %339 = call i32 @g_detach(%struct.g_consumer* %338)
  br label %410

340:                                              ; preds = %328
  %341 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %342 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %343 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %342, i32 0, i32 10
  store %struct.g_consumer* %341, %struct.g_consumer** %343, align 8
  %344 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %345 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %344, i32 0, i32 8
  %346 = load i32, i32* %345, align 8
  %347 = sext i32 %346 to i64
  %348 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %349 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %348, i32 0, i32 6
  store i64 %347, i64* %349, align 8
  br label %350

350:                                              ; preds = %340, %289
  %351 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %352 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %351, i32 0, i32 4
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %355 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %354, i32 0, i32 3
  store i64 %353, i64* %355, align 8
  %356 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %357 = call %struct.g_provider* @g_new_providerf(%struct.g_geom* %356, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  store %struct.g_provider* %357, %struct.g_provider** %6, align 8
  %358 = load i32, i32* @G_PF_DIRECT_SEND, align 4
  %359 = load i32, i32* @G_PF_DIRECT_RECEIVE, align 4
  %360 = or i32 %358, %359
  %361 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %362 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %361, i32 0, i32 2
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 8
  %365 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %366 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %369 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %368, i32 0, i32 0
  store i64 %367, i64* %369, align 8
  %370 = load %struct.g_gate_ctl_create*, %struct.g_gate_ctl_create** %3, align 8
  %371 = getelementptr inbounds %struct.g_gate_ctl_create, %struct.g_gate_ctl_create* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %374 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %373, i32 0, i32 3
  store i32 %372, i32* %374, align 4
  %375 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %376 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %377 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %376, i32 0, i32 9
  store %struct.g_provider* %375, %struct.g_provider** %377, align 8
  %378 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %379 = call i32 @g_error_provider(%struct.g_provider* %378, i32 0)
  %380 = call i32 (...) @g_topology_unlock()
  %381 = call i32 @mtx_lock(i32* @g_gate_units_lock)
  %382 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %383 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %382, i32 0, i32 9
  %384 = load %struct.g_provider*, %struct.g_provider** %383, align 8
  %385 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %384, i32 0, i32 1
  %386 = load i8*, i8** %385, align 8
  %387 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %388 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %387, i32 0, i32 5
  store i8* %386, i8** %388, align 8
  %389 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  %390 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %391 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %390, i32 0, i32 0
  %392 = load i8*, i8** %391, align 8
  %393 = call i32 (i32, i8*, ...) @G_GATE_DEBUG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %392)
  %394 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %395 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 8
  %397 = icmp sgt i32 %396, 0
  br i1 %397, label %398, label %409

398:                                              ; preds = %350
  %399 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %400 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %399, i32 0, i32 8
  %401 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %402 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %401, i32 0, i32 3
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @hz, align 4
  %405 = mul nsw i32 %403, %404
  %406 = load i32, i32* @g_gate_guard, align 4
  %407 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %408 = call i32 @callout_reset(i32* %400, i32 %405, i32 %406, %struct.g_gate_softc* %407)
  br label %409

409:                                              ; preds = %398, %350
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

410:                                              ; preds = %333, %323
  %411 = load %struct.g_consumer*, %struct.g_consumer** %8, align 8
  %412 = call i32 @g_destroy_consumer(%struct.g_consumer* %411)
  %413 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %414 = call i32 @g_destroy_geom(%struct.g_geom* %413)
  br label %415

415:                                              ; preds = %410, %285, %269, %254
  %416 = call i32 (...) @g_topology_unlock()
  %417 = call i32 @mtx_lock(i32* @g_gate_units_lock)
  %418 = load %struct.g_gate_softc**, %struct.g_gate_softc*** @g_gate_units, align 8
  %419 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %420 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %419, i32 0, i32 4
  %421 = load i64, i64* %420, align 8
  %422 = getelementptr inbounds %struct.g_gate_softc*, %struct.g_gate_softc** %418, i64 %421
  store %struct.g_gate_softc* null, %struct.g_gate_softc** %422, align 8
  %423 = load i64, i64* @g_gate_nunits, align 8
  %424 = icmp sgt i64 %423, 0
  %425 = zext i1 %424 to i32
  %426 = call i32 @KASSERT(i32 %425, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %427 = load i64, i64* @g_gate_nunits, align 8
  %428 = add nsw i64 %427, -1
  store i64 %428, i64* @g_gate_nunits, align 8
  br label %429

429:                                              ; preds = %415, %221, %177
  %430 = call i32 @mtx_unlock(i32* @g_gate_units_lock)
  %431 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %432 = getelementptr inbounds %struct.g_gate_softc, %struct.g_gate_softc* %431, i32 0, i32 7
  %433 = call i32 @mtx_destroy(i32* %432)
  %434 = load %struct.g_gate_softc*, %struct.g_gate_softc** %4, align 8
  %435 = load i32, i32* @M_GATE, align 4
  %436 = call i32 @free(%struct.g_gate_softc* %434, i32 %435)
  %437 = load i32, i32* %11, align 4
  store i32 %437, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %438

438:                                              ; preds = %429, %409, %106, %89, %69, %52, %39, %30, %22
  %439 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %439)
  %440 = load i32, i32* %2, align 4
  ret i32 %440
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @G_GATE_DEBUG(i32, i8*, ...) #2

declare dso_local i32 @powerof2(i32) #2

declare dso_local %struct.g_gate_softc* @malloc(i32, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i32, i32) #2

declare dso_local i32 @bioq_init(i32*) #2

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #2

declare dso_local i32 @callout_init(i32*, i32) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i64 @g_gate_getunit(i64, i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @g_topology_lock(...) #2

declare dso_local %struct.g_provider* @g_provider_by_name(i8*) #2

declare dso_local %struct.g_geom* @g_new_geomf(i32*, i8*, i8*) #2

declare dso_local %struct.g_consumer* @g_new_consumer(%struct.g_geom*) #2

declare dso_local i32 @g_attach(%struct.g_consumer*, %struct.g_provider*) #2

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #2

declare dso_local i32 @g_detach(%struct.g_consumer*) #2

declare dso_local %struct.g_provider* @g_new_providerf(%struct.g_geom*, i8*, i8*) #2

declare dso_local i32 @g_error_provider(%struct.g_provider*, i32) #2

declare dso_local i32 @g_topology_unlock(...) #2

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.g_gate_softc*) #2

declare dso_local i32 @g_destroy_consumer(%struct.g_consumer*) #2

declare dso_local i32 @g_destroy_geom(%struct.g_geom*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @mtx_destroy(i32*) #2

declare dso_local i32 @free(%struct.g_gate_softc*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
