; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/bios/extr_apm.c_apm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apm_softc = type { i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_12__, i64, i64, %struct.TYPE_11__, i64, i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { %struct.apm_softc*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@apm_softc = common dso_local global %struct.apm_softc zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c"apm\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"cbb cv\00", align 1
@atrtcclock_disable = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"debug.apm_debug\00", align 1
@apm_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"apm: APM BIOS version %04lx\0A\00", align 1
@apm_version = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"apm: Code16 0x%08x, Data 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"apm: Code entry 0x%08x, Idling CPU %s, Management %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"apm: CS_limit=0x%x, DS_limit=0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"apm: Engaged control %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"found APM BIOS v%ld.%ld, connected at v%d.%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"apm: Slow Idling CPU %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"apm: *Warning* enable function failed! [%x]\0A\00", align 1
@.str.11 = private unnamed_addr constant [47 x i8] c"apm: *Warning* engage function failed err=[%x]\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c" (Docked or using external power?).\0A\00", align 1
@shutdown_final = common dso_local global i32 0, align 4
@apm_power_off = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_LAST = common dso_local global i32 0, align 4
@POWER_PM_TYPE_APM = common dso_local global i32 0, align 4
@apm_pm_func = common dso_local global i32 0, align 4
@apm_cdevsw = common dso_local global i32 0, align 4
@APMDEV_NORMAL = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_OPERATOR = common dso_local global i32 0, align 4
@APMDEV_CTL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [7 x i8] c"apmctl\00", align 1
@apm_rtc_suspend = common dso_local global i32 0, align 4
@APM_HOOK_SUSPEND = common dso_local global i32 0, align 4
@apm_rtc_resume = common dso_local global i32 0, align 4
@APM_HOOK_RESUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @apm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.apm_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.apm_softc* @apm_softc, %struct.apm_softc** %3, align 8
  %5 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %6 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %5, i32 0, i32 15
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_nameunit(i32 %7)
  %9 = load i32, i32* @MTX_DEF, align 4
  %10 = call i32 @mtx_init(i32* %6, i32 %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %12 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %11, i32 0, i32 14
  %13 = call i32 @cv_init(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @device_get_flags(i32 %14)
  %16 = and i32 %15, 32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* @atrtcclock_disable, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %21 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %23 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %22, i32 0, i32 13
  store i64 0, i64* %23, align 8
  %24 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %25 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  %26 = call i32 @getenv_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32* @apm_debug)
  %27 = load i32, i32* @apm_version, align 4
  %28 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %30 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %29, i32 0, i32 9
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %36 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %35, i32 0, i32 9
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %34, i32 %40)
  %42 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %43 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %42, i32 0, i32 9
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %47 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @is_enabled(i32 %48)
  %50 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %51 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %50, i32 0, i32 12
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @is_enabled(i32 %55)
  %57 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %45, i32 %49, i32 %56)
  %58 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %59 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %58, i32 0, i32 9
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %65 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %64, i32 0, i32 9
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %63, i32 %69)
  %71 = load i32, i32* @apm_version, align 4
  %72 = icmp sgt i32 %71, 258
  br i1 %72, label %73, label %74

73:                                               ; preds = %19
  br label %76

74:                                               ; preds = %19
  %75 = load i32, i32* @apm_version, align 4
  br label %76

76:                                               ; preds = %74, %73
  %77 = phi i32 [ 258, %73 ], [ %75, %74 ]
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %87, %76
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 256
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = call i64 @apm_driver_version(i32 %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %90

86:                                               ; preds = %81
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %4, align 4
  br label %78

90:                                               ; preds = %85, %78
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 240
  %93 = ashr i32 %92, 4
  %94 = mul nsw i32 %93, 10
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, 15
  %97 = ashr i32 %96, 0
  %98 = add nsw i32 %94, %97
  %99 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %100 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %4, align 4
  %102 = and i32 %101, 61440
  %103 = ashr i32 %102, 12
  %104 = mul nsw i32 %103, 10
  %105 = load i32, i32* @apm_version, align 4
  %106 = and i32 %105, 3840
  %107 = ashr i32 %106, 8
  %108 = add nsw i32 %104, %107
  %109 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %110 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %112 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %115 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @INTVERSION(i32 %113, i32 %116)
  %118 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %119 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %118, i32 0, i32 11
  store i32 %117, i32* %119, align 8
  %120 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %121 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @INTVERSION(i32 1, i32 1)
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %90
  %126 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %127 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %126, i32 0, i32 10
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = call i32 @is_enabled(i32 %131)
  %133 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %125, %90
  %135 = load i32, i32* %2, align 4
  %136 = load i32, i32* @apm_version, align 4
  %137 = and i32 %136, 61440
  %138 = ashr i32 %137, 12
  %139 = mul nsw i32 %138, 10
  %140 = load i32, i32* @apm_version, align 4
  %141 = and i32 %140, 3840
  %142 = ashr i32 %141, 8
  %143 = add nsw i32 %139, %142
  %144 = load i32, i32* @apm_version, align 4
  %145 = and i32 %144, 240
  %146 = ashr i32 %145, 4
  %147 = mul nsw i32 %146, 10
  %148 = load i32, i32* @apm_version, align 4
  %149 = and i32 %148, 15
  %150 = ashr i32 %149, 0
  %151 = add nsw i32 %147, %150
  %152 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %153 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %156 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @device_printf(i32 %135, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %143, i32 %151, i32 %154, i32 %157)
  %159 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %160 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @is_enabled(i32 %161)
  %163 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %162)
  %164 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %165 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %164, i32 0, i32 12
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %134
  %169 = call i64 @apm_enable_disable_pm(i32 1)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %168
  %172 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %173 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = ashr i32 %176, 8
  %178 = and i32 %177, 255
  %179 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %171, %168
  br label %181

181:                                              ; preds = %180, %134
  %182 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %183 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %182, i32 0, i32 11
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @INTVERSION(i32 1, i32 1)
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %181
  %188 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %189 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %188, i32 0, i32 10
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %187
  %193 = call i64 @apm_engage_disengage_pm(i32 1)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %197 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %196, i32 0, i32 9
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = ashr i32 %200, 8
  %202 = and i32 %201, 255
  %203 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.11, i64 0, i64 0), i32 %202)
  %204 = call i32 (i8*, ...) @APM_DPRINT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %205

205:                                              ; preds = %195, %192
  br label %206

206:                                              ; preds = %205, %187, %181
  %207 = load i32, i32* @shutdown_final, align 4
  %208 = load i32, i32* @apm_power_off, align 4
  %209 = load i32, i32* @SHUTDOWN_PRI_LAST, align 4
  %210 = call i32 @EVENTHANDLER_REGISTER(i32 %207, i32 %208, i32* null, i32 %209)
  %211 = load i32, i32* @POWER_PM_TYPE_APM, align 4
  %212 = load i32, i32* @apm_pm_func, align 4
  %213 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %214 = call i32 @power_pm_register(i32 %211, i32 %212, %struct.apm_softc* %213)
  %215 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %216 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %215, i32 0, i32 0
  store i32 1, i32* %216, align 8
  %217 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %218 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %217, i32 0, i32 8
  store i64 0, i64* %218, align 8
  %219 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %220 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %219, i32 0, i32 7
  store i64 0, i64* %220, align 8
  %221 = load i32, i32* @APMDEV_NORMAL, align 4
  %222 = load i32, i32* @UID_ROOT, align 4
  %223 = load i32, i32* @GID_OPERATOR, align 4
  %224 = call i32 @make_dev(i32* @apm_cdevsw, i32 %221, i32 %222, i32 %223, i32 436, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %225 = load i32, i32* @APMDEV_CTL, align 4
  %226 = load i32, i32* @UID_ROOT, align 4
  %227 = load i32, i32* @GID_OPERATOR, align 4
  %228 = call i32 @make_dev(i32* @apm_cdevsw, i32 %225, i32 %226, i32 %227, i32 432, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  %229 = load i32, i32* @apm_rtc_suspend, align 4
  %230 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %231 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  store i32 %229, i32* %232, align 8
  %233 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %234 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %235 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %234, i32 0, i32 6
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  store %struct.apm_softc* %233, %struct.apm_softc** %236, align 8
  %237 = load i32, i32* @APM_HOOK_SUSPEND, align 4
  %238 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %239 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %238, i32 0, i32 6
  %240 = call i32 @apm_hook_establish(i32 %237, %struct.TYPE_12__* %239)
  %241 = load i32, i32* @apm_rtc_resume, align 4
  %242 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %243 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 8
  %245 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %246 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %247 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  store %struct.apm_softc* %245, %struct.apm_softc** %248, align 8
  %249 = load i32, i32* @APM_HOOK_RESUME, align 4
  %250 = load %struct.apm_softc*, %struct.apm_softc** %3, align 8
  %251 = getelementptr inbounds %struct.apm_softc, %struct.apm_softc* %250, i32 0, i32 5
  %252 = call i32 @apm_hook_establish(i32 %249, %struct.TYPE_12__* %251)
  ret i32 0
}

declare dso_local i32 @mtx_init(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @cv_init(i32*, i8*) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @getenv_int(i8*, i32*) #1

declare dso_local i32 @APM_DPRINT(i8*, ...) #1

declare dso_local i32 @is_enabled(i32) #1

declare dso_local i64 @apm_driver_version(i32) #1

declare dso_local i32 @INTVERSION(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @apm_enable_disable_pm(i32) #1

declare dso_local i64 @apm_engage_disengage_pm(i32) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @power_pm_register(i32, i32, %struct.apm_softc*) #1

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @apm_hook_establish(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
