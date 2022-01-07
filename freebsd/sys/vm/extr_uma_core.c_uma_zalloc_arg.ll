; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zalloc_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zalloc_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i32, i64 (i8*, i32, i32)*, i64 (i8*, i32, i8*, i32)*, i64, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_38__*, i32, %struct.TYPE_37__*, i32, i32, i32 (i8*, i32)* }
%struct.TYPE_38__ = type { %struct.TYPE_39__*, %struct.TYPE_39__*, i32 }
%struct.TYPE_39__ = type { i64, i32** }
%struct.TYPE_37__ = type { i32 }

@RANDOM_UMA = common dso_local global i32 0, align 4
@KTR_UMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"uma_zalloc_arg thread %x zone %s(%p) flags %d\00", align 1
@curthread = common dso_local global %struct.TYPE_36__* null, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@WARN_GIANTOK = common dso_local global i32 0, align 4
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"uma_zalloc_arg: zone \22%s\22\00", align 1
@M_EXEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"uma_zalloc_arg: called with M_EXEC\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"uma_zalloc_arg: called with spinlock or critical section held\00", align 1
@UMA_ZONE_PCPU = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"allocating from a pcpu zone with M_ZERO passed\00", align 1
@curcpu = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"uma_zalloc: Bucket pointer mangled.\00", align 1
@SKIP_DTOR = common dso_local global i32 0, align 4
@SKIP_CNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [50 x i8] c"uma_zalloc: zone %s(%p) swapping empty with alloc\00", align 1
@bucketdisable = common dso_local global i64 0, align 8
@UMA_ZONE_NUMA = common dso_local global i32 0, align 4
@UMA_ANYDOMAIN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"uma_zalloc_arg: Returning an empty bucket.\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"uma_zalloc: zone %s(%p) bucket zone returned %p\00", align 1
@trash_dtor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @uma_zalloc_arg(%struct.TYPE_35__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_37__*, align 8
  %9 = alloca %struct.TYPE_39__*, align 8
  %10 = alloca %struct.TYPE_38__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* @RANDOM_UMA, align 4
  %17 = call i32 @random_harvest_fast_uma(%struct.TYPE_35__** %5, i32 8, i32 %16)
  %18 = load i32, i32* @KTR_UMA, align 4
  %19 = load %struct.TYPE_36__*, %struct.TYPE_36__** @curthread, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @CTR4(i32 %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.TYPE_36__* %19, i32 %22, %struct.TYPE_35__* %23, i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @M_WAITOK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load i32, i32* @WARN_GIANTOK, align 4
  %32 = load i32, i32* @WARN_SLEEPOK, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @WITNESS_WARN(i32 %33, i32* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %30, %3
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @M_EXEC, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.TYPE_36__*, %struct.TYPE_36__** @curthread, align 8
  %46 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = call i64 (...) @SCHEDULER_STOPPED()
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %49, %38
  %53 = phi i1 [ true, %38 ], [ %51, %49 ]
  %54 = zext i1 %53 to i32
  %55 = call i32 @KASSERT(i32 %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UMA_ZONE_PCPU, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @M_ZERO, align 4
  %65 = and i32 %63, %64
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i32 @KASSERT(i32 %67, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %69

69:                                               ; preds = %62, %52
  br label %70

70:                                               ; preds = %447, %69
  %71 = call i32 (...) @critical_enter()
  %72 = load i32, i32* @curcpu, align 4
  store i32 %72, i32* %12, align 4
  %73 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %73, i32 0, i32 11
  %75 = load %struct.TYPE_38__*, %struct.TYPE_38__** %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %75, i64 %77
  store %struct.TYPE_38__* %78, %struct.TYPE_38__** %10, align 8
  br label %79

79:                                               ; preds = %464, %265, %235, %163, %70
  %80 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_39__*, %struct.TYPE_39__** %81, align 8
  store %struct.TYPE_39__* %82, %struct.TYPE_39__** %9, align 8
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %84 = icmp ne %struct.TYPE_39__* %83, null
  br i1 %84, label %85, label %152

85:                                               ; preds = %79
  %86 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ugt i64 %88, 0
  br i1 %89, label %90, label %152

90:                                               ; preds = %85
  %91 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32*, i32** %97, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = bitcast i32* %102 to i8*
  store i8* %103, i8** %11, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = icmp ne i8* %104, null
  %106 = zext i1 %105 to i32
  %107 = call i32 @KASSERT(i32 %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 8
  %112 = call i32 (...) @critical_exit()
  %113 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %113, i32 0, i32 2
  %115 = load i64 (i8*, i32, i8*, i32)*, i64 (i8*, i32, i8*, i32)** %114, align 8
  %116 = icmp ne i64 (i8*, i32, i8*, i32)* %115, null
  br i1 %116, label %117, label %141

117:                                              ; preds = %90
  %118 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %118, i32 0, i32 2
  %120 = load i64 (i8*, i32, i8*, i32)*, i64 (i8*, i32, i8*, i32)** %119, align 8
  %121 = load i8*, i8** %11, align 8
  %122 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %122, i32 0, i32 15
  %124 = load i32, i32* %123, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call i64 %120(i8* %121, i32 %124, i8* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %117
  %130 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %130, i32 0, i32 14
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @counter_u64_add(i32 %132, i32 1)
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* @SKIP_DTOR, align 4
  %138 = load i32, i32* @SKIP_CNT, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @zone_free_item(%struct.TYPE_35__* %134, i8* %135, i8* %136, i32 %139)
  store i8* null, i8** %4, align 8
  br label %505

141:                                              ; preds = %117, %90
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @M_ZERO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i8*, i8** %11, align 8
  %148 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %149 = call i32 @uma_zero_item(i8* %147, %struct.TYPE_35__* %148)
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i8*, i8** %11, align 8
  store i8* %151, i8** %4, align 8
  br label %505

152:                                              ; preds = %85, %79
  %153 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %154 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_39__*, %struct.TYPE_39__** %154, align 8
  store %struct.TYPE_39__* %155, %struct.TYPE_39__** %9, align 8
  %156 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %157 = icmp ne %struct.TYPE_39__* %156, null
  br i1 %157, label %158, label %178

158:                                              ; preds = %152
  %159 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = icmp ugt i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %158
  %164 = load i32, i32* @KTR_UMA, align 4
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 12
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %169 = call i32 @CTR2(i32 %164, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %167, %struct.TYPE_35__* %168)
  %170 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_39__*, %struct.TYPE_39__** %171, align 8
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 1
  store %struct.TYPE_39__* %172, %struct.TYPE_39__** %174, align 8
  %175 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 0
  store %struct.TYPE_39__* %175, %struct.TYPE_39__** %177, align 8
  br label %79

178:                                              ; preds = %158, %152
  %179 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %180, align 8
  store %struct.TYPE_39__* %181, %struct.TYPE_39__** %9, align 8
  %182 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %182, i32 0, i32 0
  store %struct.TYPE_39__* null, %struct.TYPE_39__** %183, align 8
  %184 = call i32 (...) @critical_exit()
  %185 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %186 = icmp ne %struct.TYPE_39__* %185, null
  br i1 %186, label %187, label %192

187:                                              ; preds = %178
  %188 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %189 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %190 = load i8*, i8** %6, align 8
  %191 = call i32 @bucket_free(%struct.TYPE_35__* %188, %struct.TYPE_39__* %189, i8* %190)
  br label %192

192:                                              ; preds = %187, %178
  %193 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %192
  %198 = load i64, i64* @bucketdisable, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %197, %192
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %202 = call i32 @ZONE_LOCK(%struct.TYPE_35__* %201)
  %203 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @UMA_ZONE_NUMA, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %200
  %210 = load i32, i32* %13, align 4
  %211 = call i32 @PCPU_GET(i32 %210)
  store i32 %211, i32* %13, align 4
  br label %214

212:                                              ; preds = %200
  %213 = load i32, i32* @UMA_ANYDOMAIN, align 4
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %212, %209
  br label %498

215:                                              ; preds = %197
  store i32 0, i32* %14, align 4
  %216 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %217 = call i64 @ZONE_TRYLOCK(%struct.TYPE_35__* %216)
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %215
  %220 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %221 = call i32 @ZONE_LOCK(%struct.TYPE_35__* %220)
  store i32 1, i32* %14, align 4
  br label %222

222:                                              ; preds = %219, %215
  %223 = call i32 (...) @critical_enter()
  %224 = load i32, i32* @curcpu, align 4
  store i32 %224, i32* %12, align 4
  %225 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %225, i32 0, i32 11
  %227 = load %struct.TYPE_38__*, %struct.TYPE_38__** %226, align 8
  %228 = load i32, i32* %12, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %227, i64 %229
  store %struct.TYPE_38__* %230, %struct.TYPE_38__** %10, align 8
  %231 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %232 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_39__*, %struct.TYPE_39__** %232, align 8
  %234 = icmp ne %struct.TYPE_39__* %233, null
  br i1 %234, label %235, label %238

235:                                              ; preds = %222
  %236 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %237 = call i32 @ZONE_UNLOCK(%struct.TYPE_35__* %236)
  br label %79

238:                                              ; preds = %222
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @UMA_ZONE_NUMA, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %238
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @PCPU_GET(i32 %246)
  store i32 %247, i32* %13, align 4
  %248 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %248, i32 0, i32 13
  %250 = load %struct.TYPE_37__*, %struct.TYPE_37__** %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %250, i64 %252
  store %struct.TYPE_37__* %253, %struct.TYPE_37__** %8, align 8
  br label %260

254:                                              ; preds = %238
  %255 = load i32, i32* @UMA_ANYDOMAIN, align 4
  store i32 %255, i32* %13, align 4
  %256 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %256, i32 0, i32 13
  %258 = load %struct.TYPE_37__*, %struct.TYPE_37__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %258, i64 0
  store %struct.TYPE_37__* %259, %struct.TYPE_37__** %8, align 8
  br label %260

260:                                              ; preds = %254, %245
  %261 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %262 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %263 = call %struct.TYPE_39__* @zone_fetch_bucket(%struct.TYPE_35__* %261, %struct.TYPE_37__* %262)
  store %struct.TYPE_39__* %263, %struct.TYPE_39__** %9, align 8
  %264 = icmp ne %struct.TYPE_39__* %263, null
  br i1 %264, label %265, label %277

265:                                              ; preds = %260
  %266 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  %270 = zext i1 %269 to i32
  %271 = call i32 @KASSERT(i32 %270, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %272 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %273 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %273, i32 0, i32 0
  store %struct.TYPE_39__* %272, %struct.TYPE_39__** %274, align 8
  %275 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %276 = call i32 @ZONE_UNLOCK(%struct.TYPE_35__* %275)
  br label %79

277:                                              ; preds = %260
  %278 = call i32 (...) @critical_exit()
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %294

281:                                              ; preds = %277
  %282 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %281
  %290 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %290, i32 0, i32 4
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %289, %281, %277
  %295 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %295, i32 0, i32 6
  %297 = load i64, i64* %296, align 8
  %298 = icmp sgt i64 %297, 0
  br i1 %298, label %299, label %326

299:                                              ; preds = %294
  %300 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %300, i32 0, i32 7
  %302 = load i64, i64* %301, align 8
  %303 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 6
  %305 = load i64, i64* %304, align 8
  %306 = icmp sge i64 %302, %305
  br i1 %306, label %307, label %308

307:                                              ; preds = %299
  br label %498

308:                                              ; preds = %299
  %309 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %312, i32 0, i32 6
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %315, i32 0, i32 7
  %317 = load i64, i64* %316, align 8
  %318 = sub nsw i64 %314, %317
  %319 = call i32 @MIN(i32 %311, i64 %318)
  store i32 %319, i32* %15, align 4
  %320 = load i32, i32* %15, align 4
  %321 = sext i32 %320 to i64
  %322 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %322, i32 0, i32 7
  %324 = load i64, i64* %323, align 8
  %325 = add nsw i64 %324, %321
  store i64 %325, i64* %323, align 8
  br label %330

326:                                              ; preds = %294
  %327 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %328 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  store i32 %329, i32* %15, align 4
  br label %330

330:                                              ; preds = %326, %308
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %332 = call i32 @ZONE_UNLOCK(%struct.TYPE_35__* %331)
  %333 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %334 = load i8*, i8** %6, align 8
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* %7, align 4
  %337 = load i32, i32* %15, align 4
  %338 = call %struct.TYPE_39__* @zone_alloc_bucket(%struct.TYPE_35__* %333, i8* %334, i32 %335, i32 %336, i32 %337)
  store %struct.TYPE_39__* %338, %struct.TYPE_39__** %9, align 8
  %339 = load i32, i32* @KTR_UMA, align 4
  %340 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %341 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %340, i32 0, i32 12
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %344 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %345 = call i32 @CTR3(i32 %339, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i32 %342, %struct.TYPE_35__* %343, %struct.TYPE_39__* %344)
  %346 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %347 = call i32 @ZONE_LOCK(%struct.TYPE_35__* %346)
  %348 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %349 = icmp ne %struct.TYPE_39__* %348, null
  br i1 %349, label %350, label %467

350:                                              ; preds = %330
  %351 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %351, i32 0, i32 6
  %353 = load i64, i64* %352, align 8
  %354 = icmp sgt i64 %353, 0
  br i1 %354, label %355, label %401

355:                                              ; preds = %350
  %356 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %357 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = load i32, i32* %15, align 4
  %360 = sext i32 %359 to i64
  %361 = icmp ult i64 %358, %360
  br i1 %361, label %362, label %401

362:                                              ; preds = %355
  %363 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %364 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %363, i32 0, i32 7
  %365 = load i64, i64* %364, align 8
  %366 = load i32, i32* %15, align 4
  %367 = sext i32 %366 to i64
  %368 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %369 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = sub i64 %367, %370
  %372 = icmp uge i64 %365, %371
  %373 = zext i1 %372 to i32
  %374 = call i32 @MPASS(i32 %373)
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %378 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = sub i64 %376, %379
  %381 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %382 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %381, i32 0, i32 7
  %383 = load i64, i64* %382, align 8
  %384 = sub i64 %383, %380
  store i64 %384, i64* %382, align 8
  %385 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %385, i32 0, i32 8
  %387 = load i64, i64* %386, align 8
  %388 = icmp sgt i64 %387, 0
  br i1 %388, label %389, label %400

389:                                              ; preds = %362
  %390 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %390, i32 0, i32 7
  %392 = load i64, i64* %391, align 8
  %393 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %394 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %393, i32 0, i32 6
  %395 = load i64, i64* %394, align 8
  %396 = icmp slt i64 %392, %395
  br i1 %396, label %397, label %400

397:                                              ; preds = %389
  %398 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %399 = call i32 @wakeup_one(%struct.TYPE_35__* %398)
  br label %400

400:                                              ; preds = %397, %389, %362
  br label %401

401:                                              ; preds = %400, %355, %350
  %402 = call i32 (...) @critical_enter()
  %403 = load i32, i32* @curcpu, align 4
  store i32 %403, i32* %12, align 4
  %404 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %404, i32 0, i32 11
  %406 = load %struct.TYPE_38__*, %struct.TYPE_38__** %405, align 8
  %407 = load i32, i32* %12, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %406, i64 %408
  store %struct.TYPE_38__* %409, %struct.TYPE_38__** %10, align 8
  %410 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %411 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %410, i32 0, i32 0
  %412 = load %struct.TYPE_39__*, %struct.TYPE_39__** %411, align 8
  %413 = icmp eq %struct.TYPE_39__* %412, null
  br i1 %413, label %414, label %439

414:                                              ; preds = %401
  %415 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @UMA_ZONE_NUMA, align 4
  %419 = and i32 %417, %418
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %426, label %421

421:                                              ; preds = %414
  %422 = load i32, i32* %13, align 4
  %423 = load i32, i32* %13, align 4
  %424 = call i32 @PCPU_GET(i32 %423)
  %425 = icmp eq i32 %422, %424
  br i1 %425, label %426, label %439

426:                                              ; preds = %421, %414
  %427 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %428 = load %struct.TYPE_38__*, %struct.TYPE_38__** %10, align 8
  %429 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %428, i32 0, i32 0
  store %struct.TYPE_39__* %427, %struct.TYPE_39__** %429, align 8
  %430 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %431 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %430, i32 0, i32 0
  %432 = load i64, i64* %431, align 8
  %433 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %434 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = sext i32 %435 to i64
  %437 = add i64 %436, %432
  %438 = trunc i64 %437 to i32
  store i32 %438, i32* %434, align 4
  br label %464

439:                                              ; preds = %421, %401
  %440 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %440, i32 0, i32 9
  %442 = load i64, i64* %441, align 8
  %443 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %443, i32 0, i32 10
  %445 = load i64, i64* %444, align 8
  %446 = icmp sge i64 %442, %445
  br i1 %446, label %447, label %458

447:                                              ; preds = %439
  %448 = call i32 (...) @critical_exit()
  %449 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %450 = call i32 @ZONE_UNLOCK(%struct.TYPE_35__* %449)
  %451 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %452 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %453 = call i32 @bucket_drain(%struct.TYPE_35__* %451, %struct.TYPE_39__* %452)
  %454 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %455 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %456 = load i8*, i8** %6, align 8
  %457 = call i32 @bucket_free(%struct.TYPE_35__* %454, %struct.TYPE_39__* %455, i8* %456)
  br label %70

458:                                              ; preds = %439
  %459 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %460 = load %struct.TYPE_37__*, %struct.TYPE_37__** %8, align 8
  %461 = load %struct.TYPE_39__*, %struct.TYPE_39__** %9, align 8
  %462 = call i32 @zone_put_bucket(%struct.TYPE_35__* %459, %struct.TYPE_37__* %460, %struct.TYPE_39__* %461, i32 0)
  br label %463

463:                                              ; preds = %458
  br label %464

464:                                              ; preds = %463, %426
  %465 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %466 = call i32 @ZONE_UNLOCK(%struct.TYPE_35__* %465)
  br label %79

467:                                              ; preds = %330
  %468 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %469 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %468, i32 0, i32 6
  %470 = load i64, i64* %469, align 8
  %471 = icmp sgt i64 %470, 0
  br i1 %471, label %472, label %496

472:                                              ; preds = %467
  %473 = load i32, i32* %15, align 4
  %474 = sext i32 %473 to i64
  %475 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %475, i32 0, i32 7
  %477 = load i64, i64* %476, align 8
  %478 = sub nsw i64 %477, %474
  store i64 %478, i64* %476, align 8
  %479 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %480 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %479, i32 0, i32 8
  %481 = load i64, i64* %480, align 8
  %482 = icmp sgt i64 %481, 0
  br i1 %482, label %483, label %495

483:                                              ; preds = %472
  %484 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %484, i32 0, i32 7
  %486 = load i64, i64* %485, align 8
  %487 = add nsw i64 %486, 1
  %488 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %488, i32 0, i32 6
  %490 = load i64, i64* %489, align 8
  %491 = icmp slt i64 %487, %490
  br i1 %491, label %492, label %495

492:                                              ; preds = %483
  %493 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %494 = call i32 @wakeup_one(%struct.TYPE_35__* %493)
  br label %495

495:                                              ; preds = %492, %483, %472
  br label %496

496:                                              ; preds = %495, %467
  br label %497

497:                                              ; preds = %496
  br label %498

498:                                              ; preds = %497, %307, %214
  %499 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %500 = load i8*, i8** %6, align 8
  %501 = load i32, i32* %13, align 4
  %502 = load i32, i32* %7, align 4
  %503 = call i8* @zone_alloc_item_locked(%struct.TYPE_35__* %499, i8* %500, i32 %501, i32 %502)
  store i8* %503, i8** %11, align 8
  %504 = load i8*, i8** %11, align 8
  store i8* %504, i8** %4, align 8
  br label %505

505:                                              ; preds = %498, %150, %129
  %506 = load i8*, i8** %4, align 8
  ret i8* %506
}

declare dso_local i32 @random_harvest_fast_uma(%struct.TYPE_35__**, i32, i32) #1

declare dso_local i32 @CTR4(i32, i8*, %struct.TYPE_36__*, i32, %struct.TYPE_35__*, i32) #1

declare dso_local i32 @WITNESS_WARN(i32, i32*, i8*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @zone_free_item(%struct.TYPE_35__*, i8*, i8*, i32) #1

declare dso_local i32 @uma_zero_item(i8*, %struct.TYPE_35__*) #1

declare dso_local i32 @CTR2(i32, i8*, i32, %struct.TYPE_35__*) #1

declare dso_local i32 @bucket_free(%struct.TYPE_35__*, %struct.TYPE_39__*, i8*) #1

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_35__*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i64 @ZONE_TRYLOCK(%struct.TYPE_35__*) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_39__* @zone_fetch_bucket(%struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local %struct.TYPE_39__* @zone_alloc_bucket(%struct.TYPE_35__*, i8*, i32, i32, i32) #1

declare dso_local i32 @CTR3(i32, i8*, i32, %struct.TYPE_35__*, %struct.TYPE_39__*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @wakeup_one(%struct.TYPE_35__*) #1

declare dso_local i32 @bucket_drain(%struct.TYPE_35__*, %struct.TYPE_39__*) #1

declare dso_local i32 @zone_put_bucket(%struct.TYPE_35__*, %struct.TYPE_37__*, %struct.TYPE_39__*, i32) #1

declare dso_local i8* @zone_alloc_item_locked(%struct.TYPE_35__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
