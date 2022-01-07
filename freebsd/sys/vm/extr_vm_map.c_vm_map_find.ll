; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }

@MAP_STACK_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"vm_map_find: non-NULL backing object for stack\00", align 1
@MAP_REMAP = common dso_local global i32 0, align 4
@VMFS_NO_SPACE = common dso_local global i32 0, align 4
@VMFS_OPTIMAL_SPACE = common dso_local global i32 0, align 4
@OBJ_COLORED = common dso_local global i32 0, align 4
@VMFS_ANY_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bad VMFS flags\00", align 1
@MAP_ASLR = common dso_local global i32 0, align 4
@MAP_IS_SUB_MAP = common dso_local global i32 0, align 4
@MAP_INHERIT_SHARE = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4
@MAP_ASLR_IGNSTART = common dso_local global i32 0, align 4
@VMFS_SUPER_SPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"unexpected VMFS flag\00", align 1
@aslr_restarts = common dso_local global i32 0, align 4
@MAXPAGESIZES = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i32* null, align 8
@MAP_32BIT_MAX_ADDR = common dso_local global i64 0, align 8
@aslr_pages_rnd_64 = common dso_local global i32* null, align 8
@aslr_pages_rnd_32 = common dso_local global i32* null, align 8
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_ADDRESS = common dso_local global i32 0, align 4
@sgrowsiz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_find(%struct.TYPE_17__* %0, %struct.TYPE_16__* %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %31 = load i32, i32* %20, align 4
  %32 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %33 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %10
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %39 = icmp eq %struct.TYPE_16__* %38, null
  br label %40

40:                                               ; preds = %37, %10
  %41 = phi i1 [ true, %10 ], [ %39, %37 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @KASSERT(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* @MAP_REMAP, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %17, align 4
  %50 = load i32, i32* @VMFS_NO_SPACE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %20, align 4
  %54 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %55 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = icmp eq i32 %57, 0
  br label %59

59:                                               ; preds = %52, %48
  %60 = phi i1 [ false, %48 ], [ %58, %52 ]
  br label %61

61:                                               ; preds = %59, %40
  %62 = phi i1 [ true, %40 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  %64 = call i32 @MPASS(i32 %63)
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @VMFS_OPTIMAL_SPACE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %70 = icmp eq %struct.TYPE_16__* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %68
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @OBJ_COLORED, align 4
  %76 = and i32 %74, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71, %68
  %79 = load i32, i32* @VMFS_ANY_SPACE, align 4
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %78, %71, %61
  %81 = load i32, i32* %17, align 4
  %82 = ashr i32 %81, 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* %17, align 4
  %86 = and i32 %85, 255
  %87 = icmp eq i32 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @KASSERT(i32 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* %17, align 4
  %91 = ashr i32 %90, 8
  %92 = shl i32 1, %91
  store i32 %92, i32* %21, align 4
  br label %94

93:                                               ; preds = %80
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %93, %84
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MAP_ASLR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %29, align 4
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @clustering_anon_allowed(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %136

106:                                              ; preds = %94
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MAP_IS_SUB_MAP, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %136

113:                                              ; preds = %106
  %114 = load i32, i32* %16, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @VMFS_NO_SPACE, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %122 = icmp eq %struct.TYPE_16__* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %120
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* @MAP_INHERIT_SHARE, align 4
  %126 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %124, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %123
  %133 = load i32, i32* %18, align 4
  %134 = load i32, i32* @PROT_NONE, align 4
  %135 = icmp ne i32 %133, %134
  br label %136

136:                                              ; preds = %132, %123, %120, %116, %113, %106, %94
  %137 = phi i1 [ false, %123 ], [ false, %120 ], [ false, %116 ], [ false, %113 ], [ false, %106 ], [ false, %94 ], [ %135, %132 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %28, align 4
  store i32 %138, i32* %30, align 4
  %139 = load i32*, i32** %14, align 8
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %23, align 4
  store i32 %140, i32* %22, align 4
  %141 = load i32, i32* %29, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %136
  %144 = load i32, i32* %23, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load i32, i32* %28, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %163, label %149

149:                                              ; preds = %146
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @VMFS_NO_SPACE, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %149
  %154 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @MAP_ASLR_IGNSTART, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %153
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %162 = call i32 @vm_map_min(%struct.TYPE_17__* %161)
  store i32 %162, i32* %23, align 4
  store i32 %162, i32* %22, align 4
  br label %163

163:                                              ; preds = %160, %153, %149, %146, %143, %136
  store i32 0, i32* %27, align 4
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %165 = call i32 @vm_map_lock(%struct.TYPE_17__* %164)
  %166 = load i32, i32* %28, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %22, align 4
  %172 = load i32, i32* %22, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i32 0, i32* %28, align 4
  br label %175

175:                                              ; preds = %174, %168
  br label %176

176:                                              ; preds = %175, %163
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* @VMFS_NO_SPACE, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %393

180:                                              ; preds = %176
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* @VMFS_ANY_SPACE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %195, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* @VMFS_OPTIMAL_SPACE, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %195, label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* @VMFS_SUPER_SPACE, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %195, label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %21, align 4
  %194 = icmp ne i32 %193, 0
  br label %195

195:                                              ; preds = %192, %188, %184, %180
  %196 = phi i1 [ true, %188 ], [ true, %184 ], [ true, %180 ], [ %194, %192 ]
  %197 = zext i1 %196 to i32
  %198 = call i32 @KASSERT(i32 %197, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %199

199:                                              ; preds = %387, %360, %332, %309, %195
  %200 = load i32, i32* %27, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %27, align 4
  %202 = load i32, i32* %27, align 4
  %203 = icmp sle i32 %202, 2
  %204 = zext i1 %203 to i32
  %205 = call i32 @MPASS(i32 %204)
  %206 = load i32, i32* %27, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %223

208:                                              ; preds = %199
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MAP_ASLR_IGNSTART, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %217 = call i32 @vm_map_min(%struct.TYPE_17__* %216)
  br label %220

218:                                              ; preds = %208
  %219 = load i32, i32* %23, align 4
  br label %220

220:                                              ; preds = %218, %215
  %221 = phi i32 [ %217, %215 ], [ %219, %218 ]
  store i32 %221, i32* %22, align 4
  %222 = call i32 @atomic_add_long(i32* @aslr_restarts, i32 1)
  br label %223

223:                                              ; preds = %220, %199
  %224 = load i32, i32* %27, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %334

226:                                              ; preds = %223
  %227 = load i32, i32* %29, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %334

229:                                              ; preds = %226
  %230 = load i32, i32* %28, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %334, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @MAXPAGESIZES, align 4
  %234 = icmp sgt i32 %233, 1
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load i32*, i32** @pagesizes, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %250

240:                                              ; preds = %235
  %241 = load i32, i32* %17, align 4
  %242 = load i32, i32* @VMFS_SUPER_SPACE, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %248, label %244

244:                                              ; preds = %240
  %245 = load i32, i32* %17, align 4
  %246 = load i32, i32* @VMFS_OPTIMAL_SPACE, align 4
  %247 = icmp eq i32 %245, %246
  br label %248

248:                                              ; preds = %244, %240
  %249 = phi i1 [ true, %240 ], [ %247, %244 ]
  br label %250

250:                                              ; preds = %248, %235, %232
  %251 = phi i1 [ false, %235 ], [ false, %232 ], [ %249, %248 ]
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 1, i32 0
  store i32 %253, i32* %25, align 4
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %255 = call i32 @vm_map_max(%struct.TYPE_17__* %254)
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* @MAP_32BIT_MAX_ADDR, align 8
  %258 = icmp sgt i64 %256, %257
  br i1 %258, label %259, label %273

259:                                              ; preds = %250
  %260 = load i32, i32* %16, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %267, label %262

262:                                              ; preds = %259
  %263 = load i32, i32* %16, align 4
  %264 = sext i32 %263 to i64
  %265 = load i64, i64* @MAP_32BIT_MAX_ADDR, align 8
  %266 = icmp sgt i64 %264, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %262, %259
  %268 = load i32*, i32** @aslr_pages_rnd_64, align 8
  %269 = load i32, i32* %25, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  br label %279

273:                                              ; preds = %262, %250
  %274 = load i32*, i32** @aslr_pages_rnd_32, align 8
  %275 = load i32, i32* %25, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  %278 = load i32, i32* %277, align 4
  br label %279

279:                                              ; preds = %273, %267
  %280 = phi i32 [ %272, %267 ], [ %278, %273 ]
  store i32 %280, i32* %24, align 4
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %282 = load i32, i32* %22, align 4
  %283 = load i32, i32* %15, align 4
  %284 = load i32, i32* %24, align 4
  %285 = load i32*, i32** @pagesizes, align 8
  %286 = load i32, i32* %25, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = mul nsw i32 %284, %289
  %291 = add nsw i32 %283, %290
  %292 = call i32 @vm_map_findspace(%struct.TYPE_17__* %281, i32 %282, i32 %291)
  %293 = load i32*, i32** %14, align 8
  store i32 %292, i32* %293, align 4
  %294 = load i32*, i32** %14, align 8
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %295, %296
  %298 = load i32, i32* %24, align 4
  %299 = load i32*, i32** @pagesizes, align 8
  %300 = load i32, i32* %25, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %298, %303
  %305 = add nsw i32 %297, %304
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %307 = call i32 @vm_map_max(%struct.TYPE_17__* %306)
  %308 = icmp sgt i32 %305, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %279
  br label %199

310:                                              ; preds = %279
  %311 = call i32 (...) @arc4random()
  %312 = load i32, i32* %24, align 4
  %313 = srem i32 %311, %312
  %314 = load i32*, i32** @pagesizes, align 8
  %315 = load i32, i32* %25, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 %313, %318
  %320 = load i32*, i32** %14, align 8
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, %319
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* %16, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %310
  %326 = load i32*, i32** %14, align 8
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %15, align 4
  %329 = add nsw i32 %327, %328
  %330 = load i32, i32* %16, align 4
  %331 = icmp sgt i32 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %325
  br label %199

333:                                              ; preds = %325, %310
  br label %368

334:                                              ; preds = %229, %226, %223
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %15, align 4
  %338 = call i32 @vm_map_findspace(%struct.TYPE_17__* %335, i32 %336, i32 %337)
  %339 = load i32*, i32** %14, align 8
  store i32 %338, i32* %339, align 4
  %340 = load i32*, i32** %14, align 8
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %15, align 4
  %343 = add nsw i32 %341, %342
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %345 = call i32 @vm_map_max(%struct.TYPE_17__* %344)
  %346 = icmp sgt i32 %343, %345
  br i1 %346, label %357, label %347

347:                                              ; preds = %334
  %348 = load i32, i32* %16, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %367

350:                                              ; preds = %347
  %351 = load i32*, i32** %14, align 8
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %15, align 4
  %354 = add nsw i32 %352, %353
  %355 = load i32, i32* %16, align 4
  %356 = icmp sgt i32 %354, %355
  br i1 %356, label %357, label %367

357:                                              ; preds = %350, %334
  %358 = load i32, i32* %28, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %357
  store i32 0, i32* %28, align 4
  %361 = load i32, i32* %27, align 4
  %362 = icmp eq i32 %361, 1
  %363 = zext i1 %362 to i32
  %364 = call i32 @MPASS(i32 %363)
  br label %199

365:                                              ; preds = %357
  %366 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %366, i32* %26, align 4
  br label %477

367:                                              ; preds = %350, %347
  br label %368

368:                                              ; preds = %367, %333
  %369 = load i32, i32* %17, align 4
  %370 = load i32, i32* @VMFS_ANY_SPACE, align 4
  %371 = icmp ne i32 %369, %370
  br i1 %371, label %372, label %392

372:                                              ; preds = %368
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %374 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %375 = load i32, i32* %13, align 4
  %376 = load i32*, i32** %14, align 8
  %377 = load i32, i32* %15, align 4
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %21, align 4
  %380 = call i32 @vm_map_alignspace(%struct.TYPE_17__* %373, %struct.TYPE_16__* %374, i32 %375, i32* %376, i32 %377, i32 %378, i32 %379)
  store i32 %380, i32* %26, align 4
  %381 = load i32, i32* @KERN_SUCCESS, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %383, label %392

383:                                              ; preds = %372
  %384 = load i32, i32* %17, align 4
  %385 = load i32, i32* @VMFS_OPTIMAL_SPACE, align 4
  %386 = icmp eq i32 %384, %385
  br i1 %386, label %387, label %391

387:                                              ; preds = %383
  %388 = load i32, i32* @VMFS_ANY_SPACE, align 4
  store i32 %388, i32* %17, align 4
  %389 = load i32, i32* %23, align 4
  store i32 %389, i32* %22, align 4
  %390 = load i32, i32* %30, align 4
  store i32 %390, i32* %28, align 4
  store i32 0, i32* %27, align 4
  br label %199

391:                                              ; preds = %383
  br label %477

392:                                              ; preds = %372, %368
  br label %431

393:                                              ; preds = %176
  %394 = load i32, i32* %20, align 4
  %395 = load i32, i32* @MAP_REMAP, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %430

398:                                              ; preds = %393
  %399 = load i32*, i32** %14, align 8
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %402 = call i32 @vm_map_min(%struct.TYPE_17__* %401)
  %403 = icmp slt i32 %400, %402
  br i1 %403, label %419, label %404

404:                                              ; preds = %398
  %405 = load i32*, i32** %14, align 8
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* %15, align 4
  %408 = add nsw i32 %406, %407
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %410 = call i32 @vm_map_max(%struct.TYPE_17__* %409)
  %411 = icmp sgt i32 %408, %410
  br i1 %411, label %419, label %412

412:                                              ; preds = %404
  %413 = load i32*, i32** %14, align 8
  %414 = load i32, i32* %413, align 4
  %415 = load i32, i32* %15, align 4
  %416 = add nsw i32 %414, %415
  %417 = load i32, i32* %15, align 4
  %418 = icmp sle i32 %416, %417
  br i1 %418, label %419, label %421

419:                                              ; preds = %412, %404, %398
  %420 = load i32, i32* @KERN_INVALID_ADDRESS, align 4
  store i32 %420, i32* %26, align 4
  br label %477

421:                                              ; preds = %412
  %422 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %423 = load i32*, i32** %14, align 8
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** %14, align 8
  %426 = load i32, i32* %425, align 4
  %427 = load i32, i32* %15, align 4
  %428 = add nsw i32 %426, %427
  %429 = call i32 @vm_map_delete(%struct.TYPE_17__* %422, i32 %424, i32 %428)
  br label %430

430:                                              ; preds = %421, %393
  br label %431

431:                                              ; preds = %430, %392
  %432 = load i32, i32* %20, align 4
  %433 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %434 = load i32, i32* @MAP_STACK_GROWS_UP, align 4
  %435 = or i32 %433, %434
  %436 = and i32 %432, %435
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %448

438:                                              ; preds = %431
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %440 = load i32*, i32** %14, align 8
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* %15, align 4
  %443 = load i32, i32* @sgrowsiz, align 4
  %444 = load i32, i32* %18, align 4
  %445 = load i32, i32* %19, align 4
  %446 = load i32, i32* %20, align 4
  %447 = call i32 @vm_map_stack_locked(%struct.TYPE_17__* %439, i32 %441, i32 %442, i32 %443, i32 %444, i32 %445, i32 %446)
  store i32 %447, i32* %26, align 4
  br label %462

448:                                              ; preds = %431
  %449 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %450 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %451 = load i32, i32* %13, align 4
  %452 = load i32*, i32** %14, align 8
  %453 = load i32, i32* %452, align 4
  %454 = load i32*, i32** %14, align 8
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* %15, align 4
  %457 = add nsw i32 %455, %456
  %458 = load i32, i32* %18, align 4
  %459 = load i32, i32* %19, align 4
  %460 = load i32, i32* %20, align 4
  %461 = call i32 @vm_map_insert(%struct.TYPE_17__* %449, %struct.TYPE_16__* %450, i32 %451, i32 %453, i32 %457, i32 %458, i32 %459, i32 %460)
  store i32 %461, i32* %26, align 4
  br label %462

462:                                              ; preds = %448, %438
  %463 = load i32, i32* %26, align 4
  %464 = load i32, i32* @KERN_SUCCESS, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %476

466:                                              ; preds = %462
  %467 = load i32, i32* %30, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %466
  %470 = load i32*, i32** %14, align 8
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %15, align 4
  %473 = add nsw i32 %471, %472
  %474 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %475 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %474, i32 0, i32 1
  store i32 %473, i32* %475, align 4
  br label %476

476:                                              ; preds = %469, %466, %462
  br label %477

477:                                              ; preds = %476, %419, %391, %365
  %478 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %479 = call i32 @vm_map_unlock(%struct.TYPE_17__* %478)
  %480 = load i32, i32* %26, align 4
  ret i32 %480
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @clustering_anon_allowed(i32) #1

declare dso_local i32 @vm_map_min(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_17__*) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_17__*) #1

declare dso_local i32 @vm_map_findspace(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @arc4random(...) #1

declare dso_local i32 @vm_map_alignspace(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @vm_map_delete(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @vm_map_stack_locked(%struct.TYPE_17__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_insert(%struct.TYPE_17__*, %struct.TYPE_16__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
