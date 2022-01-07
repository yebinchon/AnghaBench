; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_res_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/pmu/extr_bhnd_pmu_subr.c_bhnd_pmu_res_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.bhnd_pmu_softc = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 (%struct.bhnd_pmu_softc*)* }

@bcm4315a0_res_updown = common dso_local global i8* null, align 8
@bcm4315a0_res_depend = common dso_local global i8* null, align 8
@bcm4325a0_res_updown = common dso_local global i8* null, align 8
@bcm4325a0_res_depend = common dso_local global i8* null, align 8
@bcm4328a0_res_updown = common dso_local global i8* null, align 8
@bcm4328a0_res_depend = common dso_local global i8* null, align 8
@bcm4329_res_updown = common dso_local global i8* null, align 8
@bcm4329_res_depend = common dso_local global i8* null, align 8
@bcm4319a0_res_updown = common dso_local global i8* null, align 8
@bcm4319a0_res_depend = common dso_local global i8* null, align 8
@bcm4336a0_res_updown = common dso_local global i8* null, align 8
@bcm4336a0_res_depend = common dso_local global i8* null, align 8
@bcm4330a0_res_updown = common dso_local global i8* null, align 8
@bcm4330a0_res_depend = common dso_local global i8* null, align 8
@BHND_PMU_CAP_RC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no updown tables\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Changing rsrc %d res_updn_timer to %#x\0A\00", align 1
@BHND_PMU_RES_TABLE_SEL = common dso_local global i32 0, align 4
@BHND_PMU_RES_UPDN_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"r%dt\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"NVRAM error reading %s: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Applying %s=%d to rsrc %d res_updn_timer\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"no depend tables\00", align 1
@BHND_PMU_RES_DEP_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"Changing rsrc %hhu res_dep_mask to %#x\0A\00", align 1
@table = common dso_local global %struct.TYPE_8__* null, align 8
@.str.7 = private unnamed_addr constant [38 x i8] c"Adding %#x to rsrc %hhu res_dep_mask\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Removing %#x from rsrc %hhu res_dep_mask\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"unknown RES_DEPEND action: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"r%dd\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"Applying %s=%d to rsrc %d res_dep_mask\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Changing max_res_mask to 0x%x\0A\00", align 1
@BHND_PMU_MAX_RES_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [31 x i8] c"Changing min_res_mask to 0x%x\0A\00", align 1
@BHND_PMU_MIN_RES_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bhnd_pmu_res_init(%struct.bhnd_pmu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bhnd_pmu_softc*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [6 x i8], align 1
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_7__*, align 8
  %19 = alloca i32 (%struct.bhnd_pmu_softc*)*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [6 x i8], align 1
  %24 = alloca i64, align 8
  store %struct.bhnd_pmu_softc* %0, %struct.bhnd_pmu_softc** %3, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %5, align 8
  store i64 0, i64* %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  store i64 0, i64* %6, align 8
  %25 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %26 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %92 [
    i32 137, label %29
    i32 135, label %38
    i32 134, label %47
    i32 133, label %56
    i32 136, label %65
    i32 131, label %74
    i32 132, label %83
  ]

29:                                               ; preds = %1
  %30 = load i8*, i8** @bcm4315a0_res_updown, align 8
  %31 = bitcast i8* %30 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %4, align 8
  %32 = load i8*, i8** @bcm4315a0_res_updown, align 8
  %33 = call i64 @nitems(i8* %32)
  store i64 %33, i64* %6, align 8
  %34 = load i8*, i8** @bcm4315a0_res_depend, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %5, align 8
  %36 = load i8*, i8** @bcm4315a0_res_depend, align 8
  %37 = call i64 @nitems(i8* %36)
  store i64 %37, i64* %7, align 8
  br label %93

38:                                               ; preds = %1
  %39 = load i8*, i8** @bcm4325a0_res_updown, align 8
  %40 = bitcast i8* %39 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %4, align 8
  %41 = load i8*, i8** @bcm4325a0_res_updown, align 8
  %42 = call i64 @nitems(i8* %41)
  store i64 %42, i64* %6, align 8
  %43 = load i8*, i8** @bcm4325a0_res_depend, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %5, align 8
  %45 = load i8*, i8** @bcm4325a0_res_depend, align 8
  %46 = call i64 @nitems(i8* %45)
  store i64 %46, i64* %7, align 8
  br label %93

47:                                               ; preds = %1
  %48 = load i8*, i8** @bcm4328a0_res_updown, align 8
  %49 = bitcast i8* %48 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %49, %struct.TYPE_6__** %4, align 8
  %50 = load i8*, i8** @bcm4328a0_res_updown, align 8
  %51 = call i64 @nitems(i8* %50)
  store i64 %51, i64* %6, align 8
  %52 = load i8*, i8** @bcm4328a0_res_depend, align 8
  %53 = bitcast i8* %52 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %5, align 8
  %54 = load i8*, i8** @bcm4328a0_res_depend, align 8
  %55 = call i64 @nitems(i8* %54)
  store i64 %55, i64* %7, align 8
  br label %93

56:                                               ; preds = %1
  %57 = load i8*, i8** @bcm4329_res_updown, align 8
  %58 = bitcast i8* %57 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %4, align 8
  %59 = load i8*, i8** @bcm4329_res_updown, align 8
  %60 = call i64 @nitems(i8* %59)
  store i64 %60, i64* %6, align 8
  %61 = load i8*, i8** @bcm4329_res_depend, align 8
  %62 = bitcast i8* %61 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %62, %struct.TYPE_7__** %5, align 8
  %63 = load i8*, i8** @bcm4329_res_depend, align 8
  %64 = call i64 @nitems(i8* %63)
  store i64 %64, i64* %7, align 8
  br label %93

65:                                               ; preds = %1
  %66 = load i8*, i8** @bcm4319a0_res_updown, align 8
  %67 = bitcast i8* %66 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %4, align 8
  %68 = load i8*, i8** @bcm4319a0_res_updown, align 8
  %69 = call i64 @nitems(i8* %68)
  store i64 %69, i64* %6, align 8
  %70 = load i8*, i8** @bcm4319a0_res_depend, align 8
  %71 = bitcast i8* %70 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %71, %struct.TYPE_7__** %5, align 8
  %72 = load i8*, i8** @bcm4319a0_res_depend, align 8
  %73 = call i64 @nitems(i8* %72)
  store i64 %73, i64* %7, align 8
  br label %93

74:                                               ; preds = %1
  %75 = load i8*, i8** @bcm4336a0_res_updown, align 8
  %76 = bitcast i8* %75 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %4, align 8
  %77 = load i8*, i8** @bcm4336a0_res_updown, align 8
  %78 = call i64 @nitems(i8* %77)
  store i64 %78, i64* %6, align 8
  %79 = load i8*, i8** @bcm4336a0_res_depend, align 8
  %80 = bitcast i8* %79 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %80, %struct.TYPE_7__** %5, align 8
  %81 = load i8*, i8** @bcm4336a0_res_depend, align 8
  %82 = call i64 @nitems(i8* %81)
  store i64 %82, i64* %7, align 8
  br label %93

83:                                               ; preds = %1
  %84 = load i8*, i8** @bcm4330a0_res_updown, align 8
  %85 = bitcast i8* %84 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %4, align 8
  %86 = load i8*, i8** @bcm4330a0_res_updown, align 8
  %87 = call i64 @nitems(i8* %86)
  store i64 %87, i64* %6, align 8
  %88 = load i8*, i8** @bcm4330a0_res_depend, align 8
  %89 = bitcast i8* %88 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %89, %struct.TYPE_7__** %5, align 8
  %90 = load i8*, i8** @bcm4330a0_res_depend, align 8
  %91 = call i64 @nitems(i8* %90)
  store i64 %91, i64* %7, align 8
  br label %93

92:                                               ; preds = %1
  br label %93

93:                                               ; preds = %92, %83, %74, %65, %56, %47, %38, %29
  %94 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %95 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BHND_PMU_CAP_RC, align 4
  %98 = call i64 @BHND_PMU_GET_BITS(i32 %96, i32 %97)
  store i64 %98, i64* %10, align 8
  store i64 0, i64* %12, align 8
  br label %99

99:                                               ; preds = %134, %93
  %100 = load i64, i64* %12, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %137

103:                                              ; preds = %99
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @KASSERT(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* %12, align 8
  %111 = sub i64 %109, %110
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i64 %112
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %13, align 8
  %114 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %114, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %117, i64 %120)
  %122 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %123 = load i32, i32* @BHND_PMU_RES_TABLE_SEL, align 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %122, i32 %123, i64 %126)
  %128 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %129 = load i32, i32* @BHND_PMU_RES_UPDN_TIMER, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %128, i32 %129, i64 %132)
  br label %134

134:                                              ; preds = %103
  %135 = load i64, i64* %12, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %12, align 8
  br label %99

137:                                              ; preds = %99
  store i64 0, i64* %14, align 8
  br label %138

138:                                              ; preds = %180, %137
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %10, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %183

142:                                              ; preds = %138
  %143 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %144 = load i64, i64* %14, align 8
  %145 = call i32 @snprintf(i8* %143, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %144)
  %146 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %147 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %150 = call i32 @bhnd_nvram_getvar_uint32(i32 %148, i8* %149, i64* %16)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @ENOENT, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  br label %180

155:                                              ; preds = %142
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %160 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %160, i32 %161)
  %163 = load i32, i32* %11, align 4
  store i32 %163, i32* %2, align 4
  br label %361

164:                                              ; preds = %155
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %167 = getelementptr inbounds [6 x i8], [6 x i8]* %15, i64 0, i64 0
  %168 = ptrtoint i8* %167 to i64
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* %14, align 8
  %171 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i64 %168, i64 %169, i64 %170)
  %172 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %173 = load i32, i32* @BHND_PMU_RES_TABLE_SEL, align 4
  %174 = load i64, i64* %14, align 8
  %175 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %172, i32 %173, i64 %174)
  %176 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %177 = load i32, i32* @BHND_PMU_RES_UPDN_TIMER, align 4
  %178 = load i64, i64* %16, align 8
  %179 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %176, i32 %177, i64 %178)
  br label %180

180:                                              ; preds = %165, %154
  %181 = load i64, i64* %14, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %14, align 8
  br label %138

183:                                              ; preds = %138
  store i64 0, i64* %17, align 8
  br label %184

184:                                              ; preds = %282, %183
  %185 = load i64, i64* %17, align 8
  %186 = load i64, i64* %7, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %285

188:                                              ; preds = %184
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %190 = icmp ne %struct.TYPE_7__* %189, null
  %191 = zext i1 %190 to i32
  %192 = call i32 @KASSERT(i32 %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %193 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %194 = load i64, i64* %7, align 8
  %195 = load i64, i64* %17, align 8
  %196 = sub i64 %194, %195
  %197 = sub i64 %196, 1
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i64 %197
  store %struct.TYPE_7__* %198, %struct.TYPE_7__** %18, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32 (%struct.bhnd_pmu_softc*)*, i32 (%struct.bhnd_pmu_softc*)** %200, align 8
  store i32 (%struct.bhnd_pmu_softc*)* %201, i32 (%struct.bhnd_pmu_softc*)** %19, align 8
  %202 = load i32 (%struct.bhnd_pmu_softc*)*, i32 (%struct.bhnd_pmu_softc*)** %19, align 8
  %203 = icmp ne i32 (%struct.bhnd_pmu_softc*)* %202, null
  br i1 %203, label %204, label %210

204:                                              ; preds = %188
  %205 = load i32 (%struct.bhnd_pmu_softc*)*, i32 (%struct.bhnd_pmu_softc*)** %19, align 8
  %206 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %207 = call i32 %205(%struct.bhnd_pmu_softc* %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %204
  br label %282

210:                                              ; preds = %204, %188
  store i64 0, i64* %21, align 8
  br label %211

211:                                              ; preds = %278, %210
  %212 = load i64, i64* %21, align 8
  %213 = load i64, i64* %10, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %281

215:                                              ; preds = %211
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i64, i64* %21, align 8
  %220 = call i32 @BHND_PMURES_BIT(i64 %219)
  %221 = and i32 %218, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  br label %278

224:                                              ; preds = %215
  %225 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %226 = load i32, i32* @BHND_PMU_RES_TABLE_SEL, align 4
  %227 = load i64, i64* %21, align 8
  %228 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %225, i32 %226, i64 %227)
  %229 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %230 = load i32, i32* @BHND_PMU_RES_DEP_MASK, align 4
  %231 = call i64 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc* %229, i32 %230)
  store i64 %231, i64* %20, align 8
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  switch i32 %234, label %272 [
    i32 128, label %235
    i32 130, label %245
    i32 129, label %258
  ]

235:                                              ; preds = %224
  %236 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %237 = load i64, i64* %21, align 8
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** @table, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %236, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i64 %237, i32 %240)
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  store i64 %244, i64* %20, align 8
  br label %277

245:                                              ; preds = %224
  %246 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** @table, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = load i64, i64* %21, align 8
  %252 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %246, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i64 %250, i64 %251)
  %253 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* %20, align 8
  %257 = or i64 %256, %255
  store i64 %257, i64* %20, align 8
  br label %277

258:                                              ; preds = %224
  %259 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** @table, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = load i64, i64* %21, align 8
  %265 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %259, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i64 %263, i64 %264)
  %266 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 2
  %268 = load i64, i64* %267, align 8
  %269 = xor i64 %268, -1
  %270 = load i64, i64* %20, align 8
  %271 = and i64 %270, %269
  store i64 %271, i64* %20, align 8
  br label %277

272:                                              ; preds = %224
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i32 %275)
  br label %277

277:                                              ; preds = %272, %258, %245, %235
  br label %278

278:                                              ; preds = %277, %223
  %279 = load i64, i64* %21, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %21, align 8
  br label %211

281:                                              ; preds = %211
  br label %282

282:                                              ; preds = %281, %209
  %283 = load i64, i64* %17, align 8
  %284 = add i64 %283, 1
  store i64 %284, i64* %17, align 8
  br label %184

285:                                              ; preds = %184
  store i64 0, i64* %22, align 8
  br label %286

286:                                              ; preds = %328, %285
  %287 = load i64, i64* %22, align 8
  %288 = load i64, i64* %10, align 8
  %289 = icmp slt i64 %287, %288
  br i1 %289, label %290, label %331

290:                                              ; preds = %286
  %291 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 0
  %292 = load i64, i64* %22, align 8
  %293 = call i32 @snprintf(i8* %291, i32 6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %292)
  %294 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %295 = getelementptr inbounds %struct.bhnd_pmu_softc, %struct.bhnd_pmu_softc* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 0
  %298 = call i32 @bhnd_nvram_getvar_uint32(i32 %296, i8* %297, i64* %24)
  store i32 %298, i32* %11, align 4
  %299 = load i32, i32* %11, align 4
  %300 = load i32, i32* @ENOENT, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %290
  br label %328

303:                                              ; preds = %290
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %312

306:                                              ; preds = %303
  %307 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %308 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 0
  %309 = load i32, i32* %11, align 4
  %310 = call i32 @PMU_LOG(%struct.bhnd_pmu_softc* %307, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %308, i32 %309)
  %311 = load i32, i32* %11, align 4
  store i32 %311, i32* %2, align 4
  br label %361

312:                                              ; preds = %303
  br label %313

313:                                              ; preds = %312
  %314 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %315 = getelementptr inbounds [6 x i8], [6 x i8]* %23, i64 0, i64 0
  %316 = ptrtoint i8* %315 to i64
  %317 = load i64, i64* %24, align 8
  %318 = load i64, i64* %22, align 8
  %319 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %314, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0), i64 %316, i64 %317, i64 %318)
  %320 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %321 = load i32, i32* @BHND_PMU_RES_TABLE_SEL, align 4
  %322 = load i64, i64* %22, align 8
  %323 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %320, i32 %321, i64 %322)
  %324 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %325 = load i32, i32* @BHND_PMU_RES_DEP_MASK, align 4
  %326 = load i64, i64* %24, align 8
  %327 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %324, i32 %325, i64 %326)
  br label %328

328:                                              ; preds = %313, %302
  %329 = load i64, i64* %22, align 8
  %330 = add nsw i64 %329, 1
  store i64 %330, i64* %22, align 8
  br label %286

331:                                              ; preds = %286
  %332 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %333 = call i32 @bhnd_pmu_res_masks(%struct.bhnd_pmu_softc* %332, i64* %9, i64* %8)
  store i32 %333, i32* %11, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = load i32, i32* %11, align 4
  store i32 %336, i32* %2, align 4
  br label %361

337:                                              ; preds = %331
  %338 = load i64, i64* %8, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %348

340:                                              ; preds = %337
  %341 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %342 = load i64, i64* %8, align 8
  %343 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %341, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %342)
  %344 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %345 = load i32, i32* @BHND_PMU_MAX_RES_MASK, align 4
  %346 = load i64, i64* %8, align 8
  %347 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %344, i32 %345, i64 %346)
  br label %348

348:                                              ; preds = %340, %337
  %349 = load i64, i64* %9, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %348
  %352 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %353 = load i64, i64* %9, align 8
  %354 = call i32 (%struct.bhnd_pmu_softc*, i8*, i64, ...) @PMU_DEBUG(%struct.bhnd_pmu_softc* %352, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i64 %353)
  %355 = load %struct.bhnd_pmu_softc*, %struct.bhnd_pmu_softc** %3, align 8
  %356 = load i32, i32* @BHND_PMU_MIN_RES_MASK, align 4
  %357 = load i64, i64* %9, align 8
  %358 = call i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc* %355, i32 %356, i64 %357)
  br label %359

359:                                              ; preds = %351, %348
  %360 = call i32 @DELAY(i32 2000)
  store i32 0, i32* %2, align 4
  br label %361

361:                                              ; preds = %359, %335, %306, %158
  %362 = load i32, i32* %2, align 4
  ret i32 %362
}

declare dso_local i64 @nitems(i8*) #1

declare dso_local i64 @BHND_PMU_GET_BITS(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMU_DEBUG(%struct.bhnd_pmu_softc*, i8*, i64, ...) #1

declare dso_local i32 @BHND_PMU_WRITE_4(%struct.bhnd_pmu_softc*, i32, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @bhnd_nvram_getvar_uint32(i32, i8*, i64*) #1

declare dso_local i32 @PMU_LOG(%struct.bhnd_pmu_softc*, i8*, i8*, i32) #1

declare dso_local i32 @BHND_PMURES_BIT(i64) #1

declare dso_local i64 @BHND_PMU_READ_4(%struct.bhnd_pmu_softc*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @bhnd_pmu_res_masks(%struct.bhnd_pmu_softc*, i64*, i64*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
