; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_reserve_resource_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_reserve_resource_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.rman = type { i32, i32, i32 }
%struct.resource_i = type { i32, i32, i32, %struct.resource, i32*, %struct.rman*, i32* }

@.str = private unnamed_addr constant [91 x i8] c"rman_reserve_resource_bound: <%s> request: [%#jx, %#jx], length %#jx, flags %x, device %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@RF_FIRSTSHARE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"invalid flags %#x\00", align 1
@RF_ALLOCATED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"NULL list head\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"rman_reserve_resource_bound: trying %#jx <%#jx,%#jx>\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"rman_reserve_resource_bound: tried %#jx <%#jx,%#jx>\0A\00", align 1
@r_link = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"could not find a region\0A\00", align 1
@RM_MAX_END = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"start (%#jx) + amask (%#jx) would wrap around\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"considering [%#jx, %#jx]\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"s->r_start (%#jx) + count - 1> end (%#jx)\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"s->r_start (%#jx) + amask (%#jx) too large\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"region is allocated\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"adjusted start exceeds end\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"truncated region: [%#jx, %#jx]; size %#jx (requested %#jx)\0A\00", align 1
@.str.14 = private unnamed_addr constant [43 x i8] c"candidate region: [%#jx, %#jx], size %#jx\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"candidate region is entire chunk\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [75 x i8] c"splitting region in three parts: [%#jx, %#jx]; [%#jx, %#jx]; [%#jx, %#jx]\0A\00", align 1
@M_RMAN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"allocating from the beginning\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"allocating at the end\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"no unshared regions found\0A\00", align 1
@RF_SHAREABLE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@r_sharelink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.resource* @rman_reserve_resource_bound(%struct.rman* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.rman*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.resource_i*, align 8
  %17 = alloca %struct.resource_i*, align 8
  %18 = alloca %struct.resource_i*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.rman* %0, %struct.rman** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  store %struct.resource_i* null, %struct.resource_i** %18, align 8
  %23 = load %struct.rman*, %struct.rman** %8, align 8
  %24 = getelementptr inbounds %struct.rman, %struct.rman* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  br label %36

33:                                               ; preds = %7
  %34 = load i32*, i32** %14, align 8
  %35 = call i8* @device_get_nameunit(i32* %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = phi i8* [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %32 ], [ %35, %33 ]
  %38 = call i32 @DPRINTF(i8* %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @RF_FIRSTSHARE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @KASSERT(i32 %43, i8* %46)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* @RF_FIRSTSHARE, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = load i32, i32* @RF_ALLOCATED, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.rman*, %struct.rman** %8, align 8
  %55 = getelementptr inbounds %struct.rman, %struct.rman* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mtx_lock(i32 %56)
  %58 = load %struct.rman*, %struct.rman** %8, align 8
  %59 = getelementptr inbounds %struct.rman, %struct.rman* %58, i32 0, i32 1
  %60 = call %struct.resource_i* @TAILQ_FIRST(i32* %59)
  store %struct.resource_i* %60, %struct.resource_i** %16, align 8
  %61 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %62 = icmp eq %struct.resource_i* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %36
  %64 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %75

65:                                               ; preds = %36
  %66 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %67 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @DPRINTF(i8* %73)
  br label %75

75:                                               ; preds = %65, %63
  %76 = load %struct.rman*, %struct.rman** %8, align 8
  %77 = getelementptr inbounds %struct.rman, %struct.rman* %76, i32 0, i32 1
  %78 = call %struct.resource_i* @TAILQ_FIRST(i32* %77)
  store %struct.resource_i* %78, %struct.resource_i** %16, align 8
  br label %79

79:                                               ; preds = %103, %75
  %80 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %81 = icmp ne %struct.resource_i* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %79
  %83 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %84 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %86, %87
  %89 = sub nsw i32 %88, 1
  %90 = icmp slt i32 %85, %89
  br label %91

91:                                               ; preds = %82, %79
  %92 = phi i1 [ false, %79 ], [ %90, %82 ]
  br i1 %92, label %93, label %107

93:                                               ; preds = %91
  %94 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %95 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @DPRINTF(i8* %101)
  br label %103

103:                                              ; preds = %93
  %104 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %105 = load i32, i32* @r_link, align 4
  %106 = call %struct.resource_i* @TAILQ_NEXT(%struct.resource_i* %104, i32 %105)
  store %struct.resource_i* %106, %struct.resource_i** %16, align 8
  br label %79

107:                                              ; preds = %91
  %108 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %109 = icmp eq %struct.resource_i* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %592

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  %114 = call i64 @RF_ALIGNMENT(i32 %113)
  %115 = shl i64 1, %114
  %116 = sub i64 %115, 1
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @RM_MAX_END, align 4
  %120 = load i32, i32* %21, align 4
  %121 = sub nsw i32 %119, %120
  %122 = icmp sle i32 %118, %121
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @KASSERT(i32 %123, i8* %127)
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 %129, 1
  %131 = xor i32 %130, -1
  store i32 %131, i32* %22, align 4
  %132 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  store %struct.resource_i* %132, %struct.resource_i** %17, align 8
  br label %133

133:                                              ; preds = %445, %112
  %134 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %135 = icmp ne %struct.resource_i* %134, null
  br i1 %135, label %136, label %449

136:                                              ; preds = %133
  %137 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %138 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %141 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @DPRINTF(i8* %144)
  %146 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %147 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sub nsw i32 %149, %151
  %153 = icmp sgt i32 %148, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %136
  %155 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %156 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sext i32 %158 to i64
  %160 = inttoptr i64 %159 to i8*
  %161 = call i32 @DPRINTF(i8* %160)
  br label %449

162:                                              ; preds = %136
  %163 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %164 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @RM_MAX_END, align 4
  %167 = load i32, i32* %21, align 4
  %168 = sub nsw i32 %166, %167
  %169 = icmp sgt i32 %165, %168
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %172 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %21, align 4
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = call i32 @DPRINTF(i8* %176)
  br label %449

178:                                              ; preds = %162
  %179 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %180 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @RF_ALLOCATED, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = call i32 @DPRINTF(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %445

187:                                              ; preds = %178
  %188 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %189 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @ummax(i32 %190, i32 %191)
  store i32 %192, i32* %19, align 4
  br label %193

193:                                              ; preds = %234, %187
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %21, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %21, align 4
  %198 = xor i32 %197, -1
  %199 = and i32 %196, %198
  store i32 %199, i32* %19, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %19, align 4
  %202 = load i32, i32* %11, align 4
  %203 = add nsw i32 %201, %202
  %204 = sub nsw i32 %203, 1
  %205 = xor i32 %200, %204
  %206 = load i32, i32* %22, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %193
  %210 = load i32, i32* %12, align 4
  %211 = load i32, i32* %19, align 4
  %212 = load i32, i32* %22, align 4
  %213 = xor i32 %212, -1
  %214 = and i32 %211, %213
  %215 = sub nsw i32 %210, %214
  %216 = load i32, i32* %19, align 4
  %217 = add nsw i32 %216, %215
  store i32 %217, i32* %19, align 4
  br label %218

218:                                              ; preds = %209, %193
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %21, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %234

224:                                              ; preds = %219
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %224
  %229 = load i32, i32* %19, align 4
  %230 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %231 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp slt i32 %229, %232
  br label %234

234:                                              ; preds = %228, %224, %219
  %235 = phi i1 [ false, %224 ], [ false, %219 ], [ %233, %228 ]
  br i1 %235, label %193, label %236

236:                                              ; preds = %234
  %237 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %238 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %19, align 4
  %241 = load i32, i32* %11, align 4
  %242 = add nsw i32 %240, %241
  %243 = sub nsw i32 %242, 1
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @ummax(i32 %243, i32 %244)
  %246 = call i32 @ummin(i32 %239, i32 %245)
  store i32 %246, i32* %20, align 4
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %20, align 4
  %249 = icmp sgt i32 %247, %248
  br i1 %249, label %250, label %252

250:                                              ; preds = %236
  %251 = call i32 @DPRINTF(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %445

252:                                              ; preds = %236
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %20, align 4
  %255 = load i32, i32* %20, align 4
  %256 = load i32, i32* %19, align 4
  %257 = sub nsw i32 %255, %256
  %258 = add nsw i32 %257, 1
  %259 = load i32, i32* %11, align 4
  %260 = sext i32 %259 to i64
  %261 = inttoptr i64 %260 to i8*
  %262 = call i32 @DPRINTF(i8* %261)
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %19, align 4
  %265 = sub nsw i32 %263, %264
  %266 = add nsw i32 %265, 1
  %267 = load i32, i32* %11, align 4
  %268 = icmp sge i32 %266, %267
  br i1 %268, label %269, label %444

269:                                              ; preds = %252
  %270 = load i32, i32* %19, align 4
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %20, align 4
  %273 = load i32, i32* %19, align 4
  %274 = sub nsw i32 %272, %273
  %275 = add nsw i32 %274, 1
  %276 = sext i32 %275 to i64
  %277 = inttoptr i64 %276 to i8*
  %278 = call i32 @DPRINTF(i8* %277)
  %279 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %280 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %283 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sub nsw i32 %281, %284
  %286 = add nsw i32 %285, 1
  %287 = load i32, i32* %11, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %298

289:                                              ; preds = %269
  %290 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i64 0, i64 0))
  %291 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  store %struct.resource_i* %291, %struct.resource_i** %18, align 8
  %292 = load i32, i32* %15, align 4
  %293 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %294 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %293, i32 0, i32 2
  store i32 %292, i32* %294, align 8
  %295 = load i32*, i32** %14, align 8
  %296 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %297 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %296, i32 0, i32 6
  store i32* %295, i32** %297, align 8
  br label %592

298:                                              ; preds = %269
  %299 = load i32, i32* @M_NOWAIT, align 4
  %300 = call %struct.resource_i* @int_alloc_resource(i32 %299)
  store %struct.resource_i* %300, %struct.resource_i** %18, align 8
  %301 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %302 = icmp eq %struct.resource_i* %301, null
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %592

304:                                              ; preds = %298
  %305 = load i32, i32* %19, align 4
  %306 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %307 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %306, i32 0, i32 1
  store i32 %305, i32* %307, align 4
  %308 = load i32, i32* %19, align 4
  %309 = load i32, i32* %11, align 4
  %310 = add nsw i32 %308, %309
  %311 = sub nsw i32 %310, 1
  %312 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %313 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load i32, i32* %15, align 4
  %315 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %316 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %315, i32 0, i32 2
  store i32 %314, i32* %316, align 8
  %317 = load i32*, i32** %14, align 8
  %318 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %319 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %318, i32 0, i32 6
  store i32* %317, i32** %319, align 8
  %320 = load %struct.rman*, %struct.rman** %8, align 8
  %321 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %322 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %321, i32 0, i32 5
  store %struct.rman* %320, %struct.rman** %322, align 8
  %323 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %324 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %327 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = icmp slt i32 %325, %328
  br i1 %329, label %330, label %408

330:                                              ; preds = %304
  %331 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %332 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %335 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = icmp sgt i32 %333, %336
  br i1 %337, label %338, label %408

338:                                              ; preds = %330
  %339 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %340 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %343 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = sub nsw i32 %344, 1
  %346 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %347 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %350 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %353 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = add nsw i32 %354, 1
  %356 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %357 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sext i32 %358 to i64
  %360 = inttoptr i64 %359 to i8*
  %361 = call i32 @DPRINTF(i8* %360)
  %362 = load i32, i32* @M_NOWAIT, align 4
  %363 = call %struct.resource_i* @int_alloc_resource(i32 %362)
  store %struct.resource_i* %363, %struct.resource_i** %16, align 8
  %364 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %365 = icmp eq %struct.resource_i* %364, null
  br i1 %365, label %366, label %370

366:                                              ; preds = %338
  %367 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %368 = load i32, i32* @M_RMAN, align 4
  %369 = call i32 @free(%struct.resource_i* %367, i32 %368)
  store %struct.resource_i* null, %struct.resource_i** %18, align 8
  br label %592

370:                                              ; preds = %338
  %371 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %372 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = add nsw i32 %373, 1
  %375 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %376 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %375, i32 0, i32 1
  store i32 %374, i32* %376, align 4
  %377 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %378 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %381 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %380, i32 0, i32 0
  store i32 %379, i32* %381, align 8
  %382 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %383 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %382, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %386 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 8
  %387 = load %struct.rman*, %struct.rman** %8, align 8
  %388 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %389 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %388, i32 0, i32 5
  store %struct.rman* %387, %struct.rman** %389, align 8
  %390 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %391 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = sub nsw i32 %392, 1
  %394 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %395 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %394, i32 0, i32 0
  store i32 %393, i32* %395, align 8
  %396 = load %struct.rman*, %struct.rman** %8, align 8
  %397 = getelementptr inbounds %struct.rman, %struct.rman* %396, i32 0, i32 1
  %398 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %399 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %400 = load i32, i32* @r_link, align 4
  %401 = call i32 @TAILQ_INSERT_AFTER(i32* %397, %struct.resource_i* %398, %struct.resource_i* %399, i32 %400)
  %402 = load %struct.rman*, %struct.rman** %8, align 8
  %403 = getelementptr inbounds %struct.rman, %struct.rman* %402, i32 0, i32 1
  %404 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %405 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  %406 = load i32, i32* @r_link, align 4
  %407 = call i32 @TAILQ_INSERT_AFTER(i32* %403, %struct.resource_i* %404, %struct.resource_i* %405, i32 %406)
  br label %443

408:                                              ; preds = %330, %304
  %409 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %410 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %409, i32 0, i32 1
  %411 = load i32, i32* %410, align 4
  %412 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %413 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = icmp eq i32 %411, %414
  br i1 %415, label %416, label %428

416:                                              ; preds = %408
  %417 = call i32 @DPRINTF(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %418 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %419 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = add nsw i32 %420, 1
  %422 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %423 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %422, i32 0, i32 1
  store i32 %421, i32* %423, align 4
  %424 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %425 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %426 = load i32, i32* @r_link, align 4
  %427 = call i32 @TAILQ_INSERT_BEFORE(%struct.resource_i* %424, %struct.resource_i* %425, i32 %426)
  br label %442

428:                                              ; preds = %408
  %429 = call i32 @DPRINTF(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %430 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %431 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %430, i32 0, i32 1
  %432 = load i32, i32* %431, align 4
  %433 = sub nsw i32 %432, 1
  %434 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %435 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %434, i32 0, i32 0
  store i32 %433, i32* %435, align 8
  %436 = load %struct.rman*, %struct.rman** %8, align 8
  %437 = getelementptr inbounds %struct.rman, %struct.rman* %436, i32 0, i32 1
  %438 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %439 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %440 = load i32, i32* @r_link, align 4
  %441 = call i32 @TAILQ_INSERT_AFTER(i32* %437, %struct.resource_i* %438, %struct.resource_i* %439, i32 %440)
  br label %442

442:                                              ; preds = %428, %416
  br label %443

443:                                              ; preds = %442, %370
  br label %592

444:                                              ; preds = %252
  br label %445

445:                                              ; preds = %444, %250, %185
  %446 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %447 = load i32, i32* @r_link, align 4
  %448 = call %struct.resource_i* @TAILQ_NEXT(%struct.resource_i* %446, i32 %447)
  store %struct.resource_i* %448, %struct.resource_i** %17, align 8
  br label %133

449:                                              ; preds = %170, %154, %133
  %450 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %451 = load i32, i32* %13, align 4
  %452 = load i32, i32* @RF_SHAREABLE, align 4
  %453 = and i32 %451, %452
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %456

455:                                              ; preds = %449
  br label %592

456:                                              ; preds = %449
  %457 = load %struct.resource_i*, %struct.resource_i** %16, align 8
  store %struct.resource_i* %457, %struct.resource_i** %17, align 8
  br label %458

458:                                              ; preds = %587, %456
  %459 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %460 = icmp ne %struct.resource_i* %459, null
  br i1 %460, label %461, label %467

461:                                              ; preds = %458
  %462 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %463 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* %10, align 4
  %466 = icmp sle i32 %464, %465
  br label %467

467:                                              ; preds = %461, %458
  %468 = phi i1 [ false, %458 ], [ %466, %461 ]
  br i1 %468, label %469, label %591

469:                                              ; preds = %467
  %470 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %471 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 8
  %473 = call i64 @SHARE_TYPE(i32 %472)
  %474 = load i32, i32* %13, align 4
  %475 = call i64 @SHARE_TYPE(i32 %474)
  %476 = icmp eq i64 %473, %475
  br i1 %476, label %477, label %586

477:                                              ; preds = %469
  %478 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %479 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = load i32, i32* %9, align 4
  %482 = icmp sge i32 %480, %481
  br i1 %482, label %483, label %586

483:                                              ; preds = %477
  %484 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %485 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %488 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = sub nsw i32 %486, %489
  %491 = add nsw i32 %490, 1
  %492 = load i32, i32* %11, align 4
  %493 = icmp eq i32 %491, %492
  br i1 %493, label %494, label %586

494:                                              ; preds = %483
  %495 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %496 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %495, i32 0, i32 1
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* %21, align 4
  %499 = and i32 %497, %498
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %586

501:                                              ; preds = %494
  %502 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %503 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %502, i32 0, i32 1
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %506 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = xor i32 %504, %507
  %509 = load i32, i32* %22, align 4
  %510 = and i32 %508, %509
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %586

512:                                              ; preds = %501
  %513 = load i32, i32* @M_NOWAIT, align 4
  %514 = call %struct.resource_i* @int_alloc_resource(i32 %513)
  store %struct.resource_i* %514, %struct.resource_i** %18, align 8
  %515 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %516 = icmp eq %struct.resource_i* %515, null
  br i1 %516, label %517, label %518

517:                                              ; preds = %512
  br label %592

518:                                              ; preds = %512
  %519 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %520 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %523 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %522, i32 0, i32 1
  store i32 %521, i32* %523, align 4
  %524 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %525 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %524, i32 0, i32 0
  %526 = load i32, i32* %525, align 8
  %527 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %528 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %527, i32 0, i32 0
  store i32 %526, i32* %528, align 8
  %529 = load i32, i32* %15, align 4
  %530 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %531 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %530, i32 0, i32 2
  store i32 %529, i32* %531, align 8
  %532 = load i32*, i32** %14, align 8
  %533 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %534 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %533, i32 0, i32 6
  store i32* %532, i32** %534, align 8
  %535 = load %struct.rman*, %struct.rman** %8, align 8
  %536 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %537 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %536, i32 0, i32 5
  store %struct.rman* %535, %struct.rman** %537, align 8
  %538 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %539 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %538, i32 0, i32 4
  %540 = load i32*, i32** %539, align 8
  %541 = icmp eq i32* %540, null
  br i1 %541, label %542, label %574

542:                                              ; preds = %518
  %543 = load i32, i32* @M_RMAN, align 4
  %544 = load i32, i32* @M_NOWAIT, align 4
  %545 = load i32, i32* @M_ZERO, align 4
  %546 = or i32 %544, %545
  %547 = call i32* @malloc(i32 4, i32 %543, i32 %546)
  %548 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %549 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %548, i32 0, i32 4
  store i32* %547, i32** %549, align 8
  %550 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %551 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %550, i32 0, i32 4
  %552 = load i32*, i32** %551, align 8
  %553 = icmp eq i32* %552, null
  br i1 %553, label %554, label %558

554:                                              ; preds = %542
  %555 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %556 = load i32, i32* @M_RMAN, align 4
  %557 = call i32 @free(%struct.resource_i* %555, i32 %556)
  store %struct.resource_i* null, %struct.resource_i** %18, align 8
  br label %592

558:                                              ; preds = %542
  %559 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %560 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %559, i32 0, i32 4
  %561 = load i32*, i32** %560, align 8
  %562 = call i32 @LIST_INIT(i32* %561)
  %563 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %564 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %563, i32 0, i32 4
  %565 = load i32*, i32** %564, align 8
  %566 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %567 = load i32, i32* @r_sharelink, align 4
  %568 = call i32 @LIST_INSERT_HEAD(i32* %565, %struct.resource_i* %566, i32 %567)
  %569 = load i32, i32* @RF_FIRSTSHARE, align 4
  %570 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %571 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 8
  %573 = or i32 %572, %569
  store i32 %573, i32* %571, align 8
  br label %574

574:                                              ; preds = %558, %518
  %575 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %576 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %575, i32 0, i32 4
  %577 = load i32*, i32** %576, align 8
  %578 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %579 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %578, i32 0, i32 4
  store i32* %577, i32** %579, align 8
  %580 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %581 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %580, i32 0, i32 4
  %582 = load i32*, i32** %581, align 8
  %583 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %584 = load i32, i32* @r_sharelink, align 4
  %585 = call i32 @LIST_INSERT_HEAD(i32* %582, %struct.resource_i* %583, i32 %584)
  br label %592

586:                                              ; preds = %501, %494, %483, %477, %469
  br label %587

587:                                              ; preds = %586
  %588 = load %struct.resource_i*, %struct.resource_i** %17, align 8
  %589 = load i32, i32* @r_link, align 4
  %590 = call %struct.resource_i* @TAILQ_NEXT(%struct.resource_i* %588, i32 %589)
  store %struct.resource_i* %590, %struct.resource_i** %17, align 8
  br label %458

591:                                              ; preds = %467
  br label %592

592:                                              ; preds = %591, %574, %554, %517, %455, %443, %366, %303, %289, %110
  %593 = load %struct.rman*, %struct.rman** %8, align 8
  %594 = getelementptr inbounds %struct.rman, %struct.rman* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 4
  %596 = call i32 @mtx_unlock(i32 %595)
  %597 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %598 = icmp eq %struct.resource_i* %597, null
  br i1 %598, label %599, label %600

599:                                              ; preds = %592
  br label %603

600:                                              ; preds = %592
  %601 = load %struct.resource_i*, %struct.resource_i** %18, align 8
  %602 = getelementptr inbounds %struct.resource_i, %struct.resource_i* %601, i32 0, i32 3
  br label %603

603:                                              ; preds = %600, %599
  %604 = phi %struct.resource* [ null, %599 ], [ %602, %600 ]
  ret %struct.resource* %604
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i8* @device_get_nameunit(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32) #1

declare dso_local %struct.resource_i* @TAILQ_FIRST(i32*) #1

declare dso_local %struct.resource_i* @TAILQ_NEXT(%struct.resource_i*, i32) #1

declare dso_local i64 @RF_ALIGNMENT(i32) #1

declare dso_local i32 @ummax(i32, i32) #1

declare dso_local i32 @ummin(i32, i32) #1

declare dso_local %struct.resource_i* @int_alloc_resource(i32) #1

declare dso_local i32 @free(%struct.resource_i*, i32) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.resource_i*, %struct.resource_i*, i32) #1

declare dso_local i32 @TAILQ_INSERT_BEFORE(%struct.resource_i*, %struct.resource_i*, i32) #1

declare dso_local i64 @SHARE_TYPE(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.resource_i*, i32) #1

declare dso_local i32 @mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
