; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zfree_arg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_uma_zfree_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i32, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_26__*, i32, i32*, i32, i32 (i8*, i32, i8*)*, i32 (i8*, i32)* }
%struct.TYPE_26__ = type { %struct.TYPE_27__*, %struct.TYPE_27__*, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i64, i32** }

@RANDOM_UMA = common dso_local global i32 0, align 4
@KTR_UMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"uma_zfree_arg thread %x zone %s\00", align 1
@curthread = common dso_local global %struct.TYPE_24__* null, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"uma_zfree_arg: called with spinlock or critical section held\00", align 1
@curcpu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"uma_zfree: Freeing to non free bucket index.\00", align 1
@bucketdisable = common dso_local global i64 0, align 8
@UMA_ZONE_NUMA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"uma_zfree: zone %s(%p) putting bucket %p on free list\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"uma_zfree: Attempting to insert not full bucket onto the full list.\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"uma_zfree: zone %s(%p) allocated bucket %p\00", align 1
@SKIP_DTOR = common dso_local global i32 0, align 4
@UMA_ZONE_MALLOC = common dso_local global i32 0, align 4
@trash_ctor = common dso_local global i64 0, align 8
@vm_ndomains = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uma_zfree_arg(%struct.TYPE_25__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load i32, i32* @RANDOM_UMA, align 4
  %14 = call i32 @random_harvest_fast_uma(%struct.TYPE_25__** %4, i32 8, i32 %13)
  %15 = load i32, i32* @KTR_UMA, align 4
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** @curthread, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @CTR2(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %16, i32 %19)
  %21 = load %struct.TYPE_24__*, %struct.TYPE_24__** @curthread, align 8
  %22 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = call i64 (...) @SCHEDULER_STOPPED()
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %25, %3
  %29 = phi i1 [ true, %3 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %310

35:                                               ; preds = %28
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 12
  %38 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %37, align 8
  %39 = icmp ne i32 (i8*, i32, i8*)* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 12
  %43 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %42, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 11
  %47 = load i32, i32* %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 %43(i8* %44, i32 %47, i8* %48)
  br label %50

50:                                               ; preds = %40, %35
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %304

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %297, %220, %56
  %58 = call i32 (...) @critical_enter()
  %59 = load i32, i32* @curcpu, align 4
  store i32 %59, i32* %10, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i64 %64
  store %struct.TYPE_26__* %65, %struct.TYPE_26__** %7, align 8
  br label %66

66:                                               ; preds = %293, %168, %57
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @PCPU_GET(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_27__*, %struct.TYPE_27__** %70, align 8
  store %struct.TYPE_27__* %71, %struct.TYPE_27__** %8, align 8
  %72 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %73 = icmp eq %struct.TYPE_27__* %72, null
  br i1 %73, label %82, label %74

74:                                               ; preds = %66
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %77, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74, %66
  %83 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %84, align 8
  store %struct.TYPE_27__* %85, %struct.TYPE_27__** %8, align 8
  br label %86

86:                                               ; preds = %82, %74
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %88 = icmp ne %struct.TYPE_27__* %87, null
  br i1 %88, label %89, label %127

89:                                               ; preds = %86
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %89
  %98 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 2
  %100 = load i32**, i32*** %99, align 8
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i32*, i32** %100, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = icmp eq i32* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @KASSERT(i32 %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %109 = load i8*, i8** %5, align 8
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 2
  %113 = load i32**, i32*** %112, align 8
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  store i32* %110, i32** %117, align 8
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %119, align 8
  %122 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 8
  %126 = call i32 (...) @critical_exit()
  br label %310

127:                                              ; preds = %89, %86
  %128 = call i32 (...) @critical_exit()
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = load i64, i64* @bucketdisable, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133, %127
  br label %304

137:                                              ; preds = %133
  store i32 0, i32* %12, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = call i64 @ZONE_TRYLOCK(%struct.TYPE_25__* %138)
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %143 = call i32 @ZONE_LOCK(%struct.TYPE_25__* %142)
  store i32 1, i32* %12, align 4
  br label %144

144:                                              ; preds = %141, %137
  %145 = call i32 (...) @critical_enter()
  %146 = load i32, i32* @curcpu, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @PCPU_GET(i32 %147)
  store i32 %148, i32* %11, align 4
  %149 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i64 %153
  store %struct.TYPE_26__* %154, %struct.TYPE_26__** %7, align 8
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_27__*, %struct.TYPE_27__** %156, align 8
  store %struct.TYPE_27__* %157, %struct.TYPE_27__** %8, align 8
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %159 = icmp ne %struct.TYPE_27__* %158, null
  br i1 %159, label %160, label %171

160:                                              ; preds = %144
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp ult i64 %163, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %160
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %170 = call i32 @ZONE_UNLOCK(%struct.TYPE_25__* %169)
  br label %66

171:                                              ; preds = %160, %144
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %173, align 8
  %174 = call i32 (...) @critical_exit()
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @UMA_ZONE_NUMA, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %171
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 10
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32* %187, i32** %9, align 8
  br label %193

188:                                              ; preds = %171
  store i32 0, i32* %11, align 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %189, i32 0, i32 10
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32* %192, i32** %9, align 8
  br label %193

193:                                              ; preds = %188, %181
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %195 = icmp ne %struct.TYPE_27__* %194, null
  br i1 %195, label %196, label %236

196:                                              ; preds = %193
  %197 = load i32, i32* @KTR_UMA, align 4
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 9
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %203 = call i32 @CTR3(i32 %197, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %200, %struct.TYPE_25__* %201, %struct.TYPE_27__* %202)
  %204 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %205 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %206, %209
  %211 = zext i1 %210 to i32
  %212 = call i32 @KASSERT(i32 %211, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 5
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = icmp sge i64 %215, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %196
  %221 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %222 = call i32 @ZONE_UNLOCK(%struct.TYPE_25__* %221)
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %224 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %225 = call i32 @bucket_drain(%struct.TYPE_25__* %223, %struct.TYPE_27__* %224)
  %226 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %228 = load i8*, i8** %6, align 8
  %229 = call i32 @bucket_free(%struct.TYPE_25__* %226, %struct.TYPE_27__* %227, i8* %228)
  br label %57

230:                                              ; preds = %196
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %232 = load i32*, i32** %9, align 8
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %234 = call i32 @zone_put_bucket(%struct.TYPE_25__* %231, i32* %232, %struct.TYPE_27__* %233, i32 1)
  br label %235

235:                                              ; preds = %230
  br label %236

236:                                              ; preds = %235, %193
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %236
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 7
  %245 = load i64, i64* %244, align 8
  %246 = icmp slt i64 %242, %245
  br i1 %246, label %247, label %252

247:                                              ; preds = %239
  %248 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 1
  store i64 %251, i64* %249, align 8
  br label %252

252:                                              ; preds = %247, %239, %236
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %254 = call i32 @ZONE_UNLOCK(%struct.TYPE_25__* %253)
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %256 = load i8*, i8** %6, align 8
  %257 = load i32, i32* @M_NOWAIT, align 4
  %258 = call %struct.TYPE_27__* @bucket_alloc(%struct.TYPE_25__* %255, i8* %256, i32 %257)
  store %struct.TYPE_27__* %258, %struct.TYPE_27__** %8, align 8
  %259 = load i32, i32* @KTR_UMA, align 4
  %260 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %260, i32 0, i32 9
  %262 = load i32, i32* %261, align 8
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %264 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %265 = call i32 @CTR3(i32 %259, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %262, %struct.TYPE_25__* %263, %struct.TYPE_27__* %264)
  %266 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %267 = icmp ne %struct.TYPE_27__* %266, null
  br i1 %267, label %268, label %303

268:                                              ; preds = %252
  %269 = call i32 (...) @critical_enter()
  %270 = load i32, i32* @curcpu, align 4
  store i32 %270, i32* %10, align 4
  %271 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %271, i32 0, i32 8
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %272, align 8
  %274 = load i32, i32* %10, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i64 %275
  store %struct.TYPE_26__* %276, %struct.TYPE_26__** %7, align 8
  %277 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %278, align 8
  %280 = icmp eq %struct.TYPE_27__* %279, null
  br i1 %280, label %281, label %297

281:                                              ; preds = %268
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @UMA_ZONE_NUMA, align 4
  %286 = and i32 %284, %285
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %281
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %11, align 4
  %291 = call i32 @PCPU_GET(i32 %290)
  %292 = icmp eq i32 %289, %291
  br i1 %292, label %293, label %297

293:                                              ; preds = %288, %281
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 0
  store %struct.TYPE_27__* %294, %struct.TYPE_27__** %296, align 8
  br label %66

297:                                              ; preds = %288, %268
  %298 = call i32 (...) @critical_exit()
  %299 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %300 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %301 = load i8*, i8** %6, align 8
  %302 = call i32 @bucket_free(%struct.TYPE_25__* %299, %struct.TYPE_27__* %300, i8* %301)
  br label %57

303:                                              ; preds = %252
  br label %304

304:                                              ; preds = %303, %136, %55
  %305 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %306 = load i8*, i8** %5, align 8
  %307 = load i8*, i8** %6, align 8
  %308 = load i32, i32* @SKIP_DTOR, align 4
  %309 = call i32 @zone_free_item(%struct.TYPE_25__* %305, i8* %306, i8* %307, i32 %308)
  br label %310

310:                                              ; preds = %304, %97, %34
  ret void
}

declare dso_local i32 @random_harvest_fast_uma(%struct.TYPE_25__**, i32, i32) #1

declare dso_local i32 @CTR2(i32, i8*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @SCHEDULER_STOPPED(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i64 @ZONE_TRYLOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_25__*) #1

declare dso_local i32 @CTR3(i32, i8*, i32, %struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @bucket_drain(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @bucket_free(%struct.TYPE_25__*, %struct.TYPE_27__*, i8*) #1

declare dso_local i32 @zone_put_bucket(%struct.TYPE_25__*, i32*, %struct.TYPE_27__*, i32) #1

declare dso_local %struct.TYPE_27__* @bucket_alloc(%struct.TYPE_25__*, i8*, i32) #1

declare dso_local i32 @zone_free_item(%struct.TYPE_25__*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
