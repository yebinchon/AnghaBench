; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_gusc.c_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, i32, i32*, i32*, i32**, i32, i32*, i32** }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@io_range = common dso_local global i32* null, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@io_offset = common dso_local global i32* null, align 8
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@SYS_RES_DRQ = common dso_local global i32 0, align 4
@DV_F_DUAL_DMA = common dso_local global i32 0, align 4
@DV_F_DRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_resource(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @isa_get_vendorid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @isa_get_logicalid(i32 %17)
  store i32 %18, i32* %6, align 4
  br label %24

19:                                               ; preds = %1
  store i32 130, i32* %6, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_get_flags(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %405 [
    i32 128, label %26
    i32 130, label %26
    i32 129, label %287
    i32 131, label %330
  ]

26:                                               ; preds = %24, %24
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 130
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @isa_get_port(i32 %32)
  store i32 %33, i32* %5, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %29
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %151, %35
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 6
  %40 = load i32**, i32*** %39, align 8
  %41 = call i32 @nitems(i32** %40)
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %154

43:                                               ; preds = %36
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i32**, i32*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = icmp eq i32* %50, null
  br i1 %51, label %52, label %150

52:                                               ; preds = %43
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %87

62:                                               ; preds = %52
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @SYS_RES_IOPORT, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32*, i32** @io_range, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RF_ACTIVE, align 4
  %79 = call i8* @bus_alloc_resource_anywhere(i32 %65, i32 %66, i32* %72, i32 %77, i32 %78)
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 6
  %83 = load i32**, i32*** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32*, i32** %83, i64 %85
  store i32* %80, i32** %86, align 8
  br label %133

87:                                               ; preds = %52
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SYS_RES_IOPORT, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %5, align 4
  %99 = load i32*, i32** @io_offset, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %98, %103
  %105 = load i32, i32* %5, align 4
  %106 = load i32*, i32** @io_offset, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %105, %110
  %112 = load i32*, i32** @io_range, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %111, %116
  %118 = sub nsw i32 %117, 1
  %119 = load i32*, i32** @io_range, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @RF_ACTIVE, align 4
  %125 = call i8* @bus_alloc_resource(i32 %90, i32 %91, i32* %97, i32 %104, i32 %118, i32 %123, i32 %124)
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 6
  %129 = load i32**, i32*** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* %126, i32** %132, align 8
  br label %133

133:                                              ; preds = %87, %62
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = icmp eq i32* %140, null
  br i1 %141, label %142, label %143

142:                                              ; preds = %133
  store i32 1, i32* %2, align 4
  br label %406

143:                                              ; preds = %133
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 5
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %43
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %4, align 4
  br label %36

154:                                              ; preds = %36
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, null
  br i1 %158, label %159, label %183

159:                                              ; preds = %154
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  store i32 0, i32* %161, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @SYS_RES_IRQ, align 4
  %166 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* @RF_ACTIVE, align 4
  %169 = load i32, i32* @RF_SHAREABLE, align 4
  %170 = or i32 %168, %169
  %171 = call i8* @bus_alloc_resource_any(i32 %164, i32 %165, i32* %167, i32 %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 4
  store i32* %172, i32** %174, align 8
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 4
  %177 = load i32*, i32** %176, align 8
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %159
  store i32 1, i32* %2, align 4
  br label %406

180:                                              ; preds = %159
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 3
  store i32 0, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %154
  store i32 0, i32* %4, align 4
  br label %184

184:                                              ; preds = %283, %183
  %185 = load i32, i32* %4, align 4
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 9
  %188 = load i32**, i32*** %187, align 8
  %189 = call i32 @nitems(i32** %188)
  %190 = icmp slt i32 %185, %189
  br i1 %190, label %191, label %286

191:                                              ; preds = %184
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 9
  %194 = load i32**, i32*** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32*, i32** %194, i64 %196
  %198 = load i32*, i32** %197, align 8
  %199 = icmp eq i32* %198, null
  br i1 %199, label %200, label %282

200:                                              ; preds = %191
  %201 = load i32, i32* %4, align 4
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* %4, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %201, i32* %207, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %200
  %211 = load i32, i32* %4, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %233

213:                                              ; preds = %210, %200
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @SYS_RES_DRQ, align 4
  %218 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %4, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* @RF_ACTIVE, align 4
  %225 = call i8* @bus_alloc_resource_any(i32 %216, i32 %217, i32* %223, i32 %224)
  %226 = bitcast i8* %225 to i32*
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 9
  %229 = load i32**, i32*** %228, align 8
  %230 = load i32, i32* %4, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32*, i32** %229, i64 %231
  store i32* %226, i32** %232, align 8
  br label %265

233:                                              ; preds = %210
  %234 = load i32, i32* %7, align 4
  %235 = load i32, i32* @DV_F_DUAL_DMA, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %264

238:                                              ; preds = %233
  %239 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @SYS_RES_DRQ, align 4
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 2
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %4, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* @DV_F_DRQ_MASK, align 4
  %251 = and i32 %249, %250
  %252 = load i32, i32* %7, align 4
  %253 = load i32, i32* @DV_F_DRQ_MASK, align 4
  %254 = and i32 %252, %253
  %255 = load i32, i32* @RF_ACTIVE, align 4
  %256 = call i8* @bus_alloc_resource(i32 %241, i32 %242, i32* %248, i32 %251, i32 %254, i32 1, i32 %255)
  %257 = bitcast i8* %256 to i32*
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 9
  %260 = load i32**, i32*** %259, align 8
  %261 = load i32, i32* %4, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  store i32* %257, i32** %263, align 8
  br label %264

264:                                              ; preds = %238, %233
  br label %265

265:                                              ; preds = %264, %213
  %266 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 9
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %4, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, null
  br i1 %273, label %274, label %275

274:                                              ; preds = %265
  store i32 1, i32* %2, align 4
  br label %406

275:                                              ; preds = %265
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 0, i32 8
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %4, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  store i32 0, i32* %281, align 4
  br label %282

282:                                              ; preds = %275, %191
  br label %283

283:                                              ; preds = %282
  %284 = load i32, i32* %4, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %4, align 4
  br label %184

286:                                              ; preds = %184
  br label %405

287:                                              ; preds = %24
  %288 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 6
  %290 = load i32**, i32*** %289, align 8
  %291 = getelementptr inbounds i32*, i32** %290, i64 0
  %292 = load i32*, i32** %291, align 8
  %293 = icmp eq i32* %292, null
  br i1 %293, label %294, label %329

294:                                              ; preds = %287
  %295 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 0
  store i32 0, i32* %298, align 4
  %299 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 7
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @SYS_RES_IOPORT, align 4
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 0
  %307 = load i32*, i32** @io_range, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @RF_ACTIVE, align 4
  %311 = call i8* @bus_alloc_resource_anywhere(i32 %301, i32 %302, i32* %306, i32 %309, i32 %310)
  %312 = bitcast i8* %311 to i32*
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 6
  %315 = load i32**, i32*** %314, align 8
  %316 = getelementptr inbounds i32*, i32** %315, i64 0
  store i32* %312, i32** %316, align 8
  %317 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %318 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %317, i32 0, i32 6
  %319 = load i32**, i32*** %318, align 8
  %320 = getelementptr inbounds i32*, i32** %319, i64 0
  %321 = load i32*, i32** %320, align 8
  %322 = icmp eq i32* %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %294
  store i32 1, i32* %2, align 4
  br label %406

324:                                              ; preds = %294
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 5
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  store i32 0, i32* %328, align 4
  br label %329

329:                                              ; preds = %324, %287
  br label %405

330:                                              ; preds = %24
  %331 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 6
  %333 = load i32**, i32*** %332, align 8
  %334 = getelementptr inbounds i32*, i32** %333, i64 0
  %335 = load i32*, i32** %334, align 8
  %336 = icmp eq i32* %335, null
  br i1 %336, label %337, label %372

337:                                              ; preds = %330
  %338 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 0
  store i32 0, i32* %341, align 4
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 7
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @SYS_RES_IOPORT, align 4
  %346 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 0
  %350 = load i32*, i32** @io_range, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 0
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @RF_ACTIVE, align 4
  %354 = call i8* @bus_alloc_resource_anywhere(i32 %344, i32 %345, i32* %349, i32 %352, i32 %353)
  %355 = bitcast i8* %354 to i32*
  %356 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 6
  %358 = load i32**, i32*** %357, align 8
  %359 = getelementptr inbounds i32*, i32** %358, i64 0
  store i32* %355, i32** %359, align 8
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 6
  %362 = load i32**, i32*** %361, align 8
  %363 = getelementptr inbounds i32*, i32** %362, i64 0
  %364 = load i32*, i32** %363, align 8
  %365 = icmp eq i32* %364, null
  br i1 %365, label %366, label %367

366:                                              ; preds = %337
  store i32 1, i32* %2, align 4
  br label %406

367:                                              ; preds = %337
  %368 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 5
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 0
  store i32 0, i32* %371, align 4
  br label %372

372:                                              ; preds = %367, %330
  %373 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %373, i32 0, i32 4
  %375 = load i32*, i32** %374, align 8
  %376 = icmp eq i32* %375, null
  br i1 %376, label %377, label %404

377:                                              ; preds = %372
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %379 = call i32* @find_masterdev(%struct.TYPE_4__* %378)
  store i32* %379, i32** %8, align 8
  %380 = load i32*, i32** %8, align 8
  %381 = icmp eq i32* %380, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  store i32 1, i32* %2, align 4
  br label %406

383:                                              ; preds = %377
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 1
  store i32 0, i32* %385, align 8
  %386 = load i32*, i32** %8, align 8
  %387 = load i32, i32* @SYS_RES_IRQ, align 4
  %388 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 1
  %390 = load i32, i32* @RF_ACTIVE, align 4
  %391 = load i32, i32* @RF_SHAREABLE, align 4
  %392 = or i32 %390, %391
  %393 = call i32* @BUS_ALLOC_RESOURCE(i32* %386, i32* null, i32 %387, i32* %389, i32 0, i32 -1, i32 1, i32 %392)
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 4
  store i32* %393, i32** %395, align 8
  %396 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %396, i32 0, i32 4
  %398 = load i32*, i32** %397, align 8
  %399 = icmp eq i32* %398, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %383
  store i32 1, i32* %2, align 4
  br label %406

401:                                              ; preds = %383
  %402 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %403 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %402, i32 0, i32 3
  store i32 0, i32* %403, align 8
  br label %404

404:                                              ; preds = %401, %372
  br label %405

405:                                              ; preds = %24, %404, %329, %286
  store i32 0, i32* %2, align 4
  br label %406

406:                                              ; preds = %405, %400, %382, %366, %323, %274, %179, %142
  %407 = load i32, i32* %2, align 4
  ret i32 %407
}

declare dso_local i64 @isa_get_vendorid(i32) #1

declare dso_local i32 @isa_get_logicalid(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

declare dso_local i32 @isa_get_port(i32) #1

declare dso_local i32 @nitems(i32**) #1

declare dso_local i8* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i8* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32* @find_masterdev(%struct.TYPE_4__*) #1

declare dso_local i32* @BUS_ALLOC_RESOURCE(i32*, i32*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
