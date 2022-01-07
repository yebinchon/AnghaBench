; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_vm_mmap_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i32, i32 }
%struct.thread = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_16__ }

@RLIMIT_VMEM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RACCT_VMEM = common dso_local global i32 0, align 4
@old_mlock = common dso_local global i32 0, align 4
@MAP_WIREFUTURE = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@RACCT_MEMLOCK = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PREFAULT_READ = common dso_local global i32 0, align 4
@MAP_PREFAULT = common dso_local global i32 0, align 4
@MAP_PREFAULT_PARTIAL = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_COPY_ON_WRITE = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@MAP_DISABLE_SYNCER = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_DISABLE_COREDUMP = common dso_local global i32 0, align 4
@MAP_INHERIT_SHARE = common dso_local global i32 0, align 4
@MAP_WRITECOUNT = common dso_local global i32 0, align 4
@MAP_STACK = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_EXCL = common dso_local global i32 0, align 4
@MAP_CHECK_EXCL = common dso_local global i32 0, align 4
@MAP_GUARD = common dso_local global i32 0, align 4
@MAP_CREATE_GUARD = common dso_local global i32 0, align 4
@MAP_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@MAP_ALIGNED_SUPER = common dso_local global i32 0, align 4
@VMFS_SUPER_SPACE = common dso_local global i32 0, align 4
@MAP_ALIGNMENT_SHIFT = common dso_local global i32 0, align 4
@VMFS_OPTIMAL_SPACE = common dso_local global i32 0, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@VM_MAP_WIRE_HOLESOK = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4
@MAP_32BIT = common dso_local global i32 0, align 4
@MAP_32BIT_MAX_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_mmap_object(%struct.TYPE_16__* %0, i64* %1, i64 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32 %7, i32 %8, %struct.thread* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.thread*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %12, align 8
  store i64* %1, i64** %13, align 8
  store i64 %2, i64* %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store %struct.thread* %9, %struct.thread** %21, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %30 = load %struct.thread*, %struct.thread** %21, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = icmp eq %struct.TYPE_16__* %29, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %22, align 4
  %38 = load i32, i32* %22, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %149

40:                                               ; preds = %10
  %41 = load %struct.thread*, %struct.thread** %21, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = call i32 @RACCT_PROC_LOCK(%struct.TYPE_14__* %43)
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.thread*, %struct.thread** %21, align 8
  %51 = load i32, i32* @RLIMIT_VMEM, align 4
  %52 = call i64 @lim_cur(%struct.thread* %50, i32 %51)
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %40
  %55 = load %struct.thread*, %struct.thread** %21, align 8
  %56 = getelementptr inbounds %struct.thread, %struct.thread* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = call i32 @RACCT_PROC_UNLOCK(%struct.TYPE_14__* %57)
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %11, align 4
  br label %402

60:                                               ; preds = %40
  %61 = load %struct.thread*, %struct.thread** %21, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = load i32, i32* @RACCT_VMEM, align 4
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %14, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @racct_set(%struct.TYPE_14__* %63, i32 %64, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load %struct.thread*, %struct.thread** %21, align 8
  %74 = getelementptr inbounds %struct.thread, %struct.thread* %73, i32 0, i32 0
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = call i32 @RACCT_PROC_UNLOCK(%struct.TYPE_14__* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %11, align 4
  br label %402

78:                                               ; preds = %60
  %79 = load i32, i32* @old_mlock, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %144, label %81

81:                                               ; preds = %78
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MAP_WIREFUTURE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %144

88:                                               ; preds = %81
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pmap_wired_count(i32 %91)
  %93 = call i64 @ptoa(i32 %92)
  %94 = load i64, i64* %14, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.thread*, %struct.thread** %21, align 8
  %97 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %98 = call i64 @lim_cur(%struct.thread* %96, i32 %97)
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %88
  %101 = load %struct.thread*, %struct.thread** %21, align 8
  %102 = getelementptr inbounds %struct.thread, %struct.thread* %101, i32 0, i32 0
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %102, align 8
  %104 = load i32, i32* @RACCT_VMEM, align 4
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @racct_set_force(%struct.TYPE_14__* %103, i32 %104, i64 %107)
  %109 = load %struct.thread*, %struct.thread** %21, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = call i32 @RACCT_PROC_UNLOCK(%struct.TYPE_14__* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  store i32 %113, i32* %11, align 4
  br label %402

114:                                              ; preds = %88
  %115 = load %struct.thread*, %struct.thread** %21, align 8
  %116 = getelementptr inbounds %struct.thread, %struct.thread* %115, i32 0, i32 0
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %116, align 8
  %118 = load i32, i32* @RACCT_MEMLOCK, align 4
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pmap_wired_count(i32 %121)
  %123 = call i64 @ptoa(i32 %122)
  %124 = load i64, i64* %14, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @racct_set(%struct.TYPE_14__* %117, i32 %118, i64 %125)
  store i32 %126, i32* %26, align 4
  %127 = load i32, i32* %26, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %143

129:                                              ; preds = %114
  %130 = load %struct.thread*, %struct.thread** %21, align 8
  %131 = getelementptr inbounds %struct.thread, %struct.thread* %130, i32 0, i32 0
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = load i32, i32* @RACCT_VMEM, align 4
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @racct_set_force(%struct.TYPE_14__* %132, i32 %133, i64 %136)
  %138 = load %struct.thread*, %struct.thread** %21, align 8
  %139 = getelementptr inbounds %struct.thread, %struct.thread* %138, i32 0, i32 0
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = call i32 @RACCT_PROC_UNLOCK(%struct.TYPE_14__* %140)
  %142 = load i32, i32* %26, align 4
  store i32 %142, i32* %11, align 4
  br label %402

143:                                              ; preds = %114
  br label %144

144:                                              ; preds = %143, %81, %78
  %145 = load %struct.thread*, %struct.thread** %21, align 8
  %146 = getelementptr inbounds %struct.thread, %struct.thread* %145, i32 0, i32 0
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %146, align 8
  %148 = call i32 @RACCT_PROC_UNLOCK(%struct.TYPE_14__* %147)
  br label %149

149:                                              ; preds = %144, %10
  %150 = load i32, i32* %19, align 4
  %151 = load i32, i32* @PAGE_MASK, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @EINVAL, align 4
  store i32 %155, i32* %11, align 4
  br label %402

156:                                              ; preds = %149
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @MAP_FIXED, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @TRUE, align 4
  store i32 %162, i32* %23, align 4
  %163 = load i64*, i64** %13, align 8
  %164 = load i64, i64* %163, align 8
  %165 = call i64 @round_page(i64 %164)
  %166 = load i64*, i64** %13, align 8
  store i64 %165, i64* %166, align 8
  br label %178

167:                                              ; preds = %156
  %168 = load i64*, i64** %13, align 8
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %13, align 8
  %171 = load i64, i64* %170, align 8
  %172 = call i64 @trunc_page(i64 %171)
  %173 = icmp ne i64 %169, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @EINVAL, align 4
  store i32 %175, i32* %11, align 4
  br label %402

176:                                              ; preds = %167
  %177 = load i32, i32* @FALSE, align 4
  store i32 %177, i32* %23, align 4
  br label %178

178:                                              ; preds = %176, %161
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* @MAP_ANON, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load i32*, i32** %18, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186, %183
  %190 = load i32, i32* @EINVAL, align 4
  store i32 %190, i32* %11, align 4
  br label %402

191:                                              ; preds = %186
  store i32 0, i32* %25, align 4
  br label %202

192:                                              ; preds = %178
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @MAP_PREFAULT_READ, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = load i32, i32* @MAP_PREFAULT, align 4
  store i32 %198, i32* %25, align 4
  br label %201

199:                                              ; preds = %192
  %200 = load i32, i32* @MAP_PREFAULT_PARTIAL, align 4
  store i32 %200, i32* %25, align 4
  br label %201

201:                                              ; preds = %199, %197
  br label %202

202:                                              ; preds = %201, %191
  %203 = load i32, i32* %17, align 4
  %204 = load i32, i32* @MAP_ANON, align 4
  %205 = load i32, i32* @MAP_SHARED, align 4
  %206 = or i32 %204, %205
  %207 = and i32 %203, %206
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %202
  %210 = load i32, i32* @MAP_COPY_ON_WRITE, align 4
  %211 = load i32, i32* %25, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %25, align 4
  br label %213

213:                                              ; preds = %209, %202
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* @MAP_NOSYNC, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %213
  %219 = load i32, i32* @MAP_DISABLE_SYNCER, align 4
  %220 = load i32, i32* %25, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %25, align 4
  br label %222

222:                                              ; preds = %218, %213
  %223 = load i32, i32* %17, align 4
  %224 = load i32, i32* @MAP_NOCORE, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load i32, i32* @MAP_DISABLE_COREDUMP, align 4
  %229 = load i32, i32* %25, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %25, align 4
  br label %231

231:                                              ; preds = %227, %222
  %232 = load i32, i32* %17, align 4
  %233 = load i32, i32* @MAP_SHARED, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %231
  %237 = load i32, i32* @MAP_INHERIT_SHARE, align 4
  %238 = load i32, i32* %25, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %25, align 4
  br label %240

240:                                              ; preds = %236, %231
  %241 = load i32, i32* %20, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i32, i32* @MAP_WRITECOUNT, align 4
  %245 = load i32, i32* %25, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %25, align 4
  br label %247

247:                                              ; preds = %243, %240
  %248 = load i32, i32* %17, align 4
  %249 = load i32, i32* @MAP_STACK, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %247
  %253 = load i32*, i32** %18, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = load i32, i32* @EINVAL, align 4
  store i32 %256, i32* %11, align 4
  br label %402

257:                                              ; preds = %252
  %258 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %259 = load i32, i32* %25, align 4
  %260 = or i32 %259, %258
  store i32 %260, i32* %25, align 4
  br label %261

261:                                              ; preds = %257, %247
  %262 = load i32, i32* %17, align 4
  %263 = load i32, i32* @MAP_EXCL, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load i32, i32* @MAP_CHECK_EXCL, align 4
  %268 = load i32, i32* %25, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %25, align 4
  br label %270

270:                                              ; preds = %266, %261
  %271 = load i32, i32* %17, align 4
  %272 = load i32, i32* @MAP_GUARD, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %270
  %276 = load i32, i32* @MAP_CREATE_GUARD, align 4
  %277 = load i32, i32* %25, align 4
  %278 = or i32 %277, %276
  store i32 %278, i32* %25, align 4
  br label %279

279:                                              ; preds = %275, %270
  %280 = load i32, i32* %23, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %343

282:                                              ; preds = %279
  %283 = load i32, i32* %17, align 4
  %284 = load i32, i32* @MAP_ALIGNMENT_MASK, align 4
  %285 = and i32 %283, %284
  %286 = load i32, i32* @MAP_ALIGNED_SUPER, align 4
  %287 = icmp eq i32 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %282
  %289 = load i32, i32* @VMFS_SUPER_SPACE, align 4
  store i32 %289, i32* %27, align 4
  br label %303

290:                                              ; preds = %282
  %291 = load i32, i32* %17, align 4
  %292 = load i32, i32* @MAP_ALIGNMENT_MASK, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %300

295:                                              ; preds = %290
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* @MAP_ALIGNMENT_SHIFT, align 4
  %298 = ashr i32 %296, %297
  %299 = call i32 @VMFS_ALIGNED_SPACE(i32 %298)
  store i32 %299, i32* %27, align 4
  br label %302

300:                                              ; preds = %290
  %301 = load i32, i32* @VMFS_OPTIMAL_SPACE, align 4
  store i32 %301, i32* %27, align 4
  br label %302

302:                                              ; preds = %300, %295
  br label %303

303:                                              ; preds = %302, %288
  store i64 0, i64* %24, align 8
  %304 = load i32, i32* %22, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %330

306:                                              ; preds = %303
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %308 = load i32*, i32** %18, align 8
  %309 = load i32, i32* %19, align 4
  %310 = load i64*, i64** %13, align 8
  %311 = load i64, i64* %14, align 8
  %312 = load %struct.thread*, %struct.thread** %21, align 8
  %313 = getelementptr inbounds %struct.thread, %struct.thread* %312, i32 0, i32 0
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load %struct.thread*, %struct.thread** %21, align 8
  %320 = load i32, i32* @RLIMIT_DATA, align 4
  %321 = call i64 @lim_max(%struct.thread* %319, i32 %320)
  %322 = add nsw i64 %318, %321
  %323 = call i64 @round_page(i64 %322)
  %324 = load i64, i64* %24, align 8
  %325 = load i32, i32* %27, align 4
  %326 = load i32, i32* %15, align 4
  %327 = load i32, i32* %16, align 4
  %328 = load i32, i32* %25, align 4
  %329 = call i32 @vm_map_find_min(%struct.TYPE_16__* %307, i32* %308, i32 %309, i64* %310, i64 %311, i64 %323, i64 %324, i32 %325, i32 %326, i32 %327, i32 %328)
  store i32 %329, i32* %28, align 4
  br label %342

330:                                              ; preds = %303
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %332 = load i32*, i32** %18, align 8
  %333 = load i32, i32* %19, align 4
  %334 = load i64*, i64** %13, align 8
  %335 = load i64, i64* %14, align 8
  %336 = load i64, i64* %24, align 8
  %337 = load i32, i32* %27, align 4
  %338 = load i32, i32* %15, align 4
  %339 = load i32, i32* %16, align 4
  %340 = load i32, i32* %25, align 4
  %341 = call i32 @vm_map_find(%struct.TYPE_16__* %331, i32* %332, i32 %333, i64* %334, i64 %335, i64 %336, i32 %337, i32 %338, i32 %339, i32 %340)
  store i32 %341, i32* %28, align 4
  br label %342

342:                                              ; preds = %330, %306
  br label %354

343:                                              ; preds = %279
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %345 = load i32*, i32** %18, align 8
  %346 = load i32, i32* %19, align 4
  %347 = load i64*, i64** %13, align 8
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* %14, align 8
  %350 = load i32, i32* %15, align 4
  %351 = load i32, i32* %16, align 4
  %352 = load i32, i32* %25, align 4
  %353 = call i32 @vm_map_fixed(%struct.TYPE_16__* %344, i32* %345, i32 %346, i64 %348, i64 %349, i32 %350, i32 %351, i32 %352)
  store i32 %353, i32* %28, align 4
  br label %354

354:                                              ; preds = %343, %342
  %355 = load i32, i32* %28, align 4
  %356 = load i32, i32* @KERN_SUCCESS, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %399

358:                                              ; preds = %354
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @MAP_WIREFUTURE, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %398

365:                                              ; preds = %358
  %366 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %367 = call i32 @vm_map_lock(%struct.TYPE_16__* %366)
  %368 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 8
  %371 = load i32, i32* @MAP_WIREFUTURE, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %395

374:                                              ; preds = %365
  %375 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %376 = load i64*, i64** %13, align 8
  %377 = load i64, i64* %376, align 8
  %378 = load i64*, i64** %13, align 8
  %379 = load i64, i64* %378, align 8
  %380 = load i64, i64* %14, align 8
  %381 = add nsw i64 %379, %380
  %382 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %383 = load i32, i32* %17, align 4
  %384 = load i32, i32* @MAP_STACK, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %374
  %388 = load i32, i32* @VM_MAP_WIRE_HOLESOK, align 4
  br label %391

389:                                              ; preds = %374
  %390 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  br label %391

391:                                              ; preds = %389, %387
  %392 = phi i32 [ %388, %387 ], [ %390, %389 ]
  %393 = or i32 %382, %392
  %394 = call i32 @vm_map_wire_locked(%struct.TYPE_16__* %375, i64 %377, i64 %381, i32 %393)
  br label %395

395:                                              ; preds = %391, %365
  %396 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %397 = call i32 @vm_map_unlock(%struct.TYPE_16__* %396)
  br label %398

398:                                              ; preds = %395, %358
  br label %399

399:                                              ; preds = %398, %354
  %400 = load i32, i32* %28, align 4
  %401 = call i32 @vm_mmap_to_errno(i32 %400)
  store i32 %401, i32* %11, align 4
  br label %402

402:                                              ; preds = %399, %255, %189, %174, %154, %129, %100, %72, %54
  %403 = load i32, i32* %11, align 4
  ret i32 %403
}

declare dso_local i32 @RACCT_PROC_LOCK(%struct.TYPE_14__*) #1

declare dso_local i64 @lim_cur(%struct.thread*, i32) #1

declare dso_local i32 @RACCT_PROC_UNLOCK(%struct.TYPE_14__*) #1

declare dso_local i32 @racct_set(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @pmap_wired_count(i32) #1

declare dso_local i32 @racct_set_force(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @VMFS_ALIGNED_SPACE(i32) #1

declare dso_local i32 @vm_map_find_min(%struct.TYPE_16__*, i32*, i32, i64*, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @lim_max(%struct.thread*, i32) #1

declare dso_local i32 @vm_map_find(%struct.TYPE_16__*, i32*, i32, i64*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @vm_map_fixed(%struct.TYPE_16__*, i32*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_map_wire_locked(%struct.TYPE_16__*, i64, i64, i32) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_mmap_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
