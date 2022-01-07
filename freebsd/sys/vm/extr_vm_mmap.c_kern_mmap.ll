; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_mmap.c_kern_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.proc* }
%struct.proc = type { i64, %struct.vmspace* }
%struct.vmspace = type { i32, i64, i64 }
%struct.file = type { i32 }

@_PROT_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MAP_RESERVED0020 = common dso_local global i32 0, align 4
@MAP_RESERVED0040 = common dso_local global i32 0, align 4
@SV_AOUT = common dso_local global i32 0, align 4
@P_OSREL_MAP_ANON = common dso_local global i64 0, align 8
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_STACK = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i32 0, align 4
@MAP_HASSEMAPHORE = common dso_local global i32 0, align 4
@MAP_NOSYNC = common dso_local global i32 0, align 4
@MAP_EXCL = common dso_local global i32 0, align 4
@MAP_NOCORE = common dso_local global i32 0, align 4
@MAP_PREFAULT_READ = common dso_local global i32 0, align 4
@MAP_GUARD = common dso_local global i32 0, align 4
@MAP_ALIGNMENT_MASK = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4
@PROT_EXEC = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MAP_ALIGNED_SUPER = common dso_local global i32 0, align 4
@MAP_ALIGNMENT_SHIFT = common dso_local global i32 0, align 4
@NBBY = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@RLIMIT_DATA = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@CAP_MMAP = common dso_local global i32 0, align 4
@CAP_MMAP_R = common dso_local global i32 0, align 4
@CAP_MMAP_W = common dso_local global i32 0, align 4
@CAP_MMAP_X = common dso_local global i32 0, align 4
@P_OSREL_MAP_FSTRICT = common dso_local global i64 0, align 8
@MAP_32BIT = common dso_local global i32 0, align 4
@MAP_32BIT_MAX_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_mmap(%struct.thread* %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.vmspace*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca %struct.proc*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @_PROT_ALL, align 4
  %29 = load i32, i32* @_PROT_ALL, align 4
  %30 = call i32 @PROT_MAX(i32 %29)
  %31 = or i32 %28, %30
  %32 = xor i32 %31, -1
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %8, align 4
  br label %472

37:                                               ; preds = %7
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @PROT_MAX_EXTRACT(i32 %38)
  store i32 %39, i32* %25, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @PROT_EXTRACT(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %25, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i32, i32* %25, align 4
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %8, align 4
  br label %472

52:                                               ; preds = %44, %37
  %53 = load %struct.thread*, %struct.thread** %9, align 8
  %54 = getelementptr inbounds %struct.thread, %struct.thread* %53, i32 0, i32 1
  %55 = load %struct.proc*, %struct.proc** %54, align 8
  store %struct.proc* %55, %struct.proc** %18, align 8
  %56 = load i32, i32* %25, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.proc*, %struct.proc** %18, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @kern_mmap_maxprot(%struct.proc* %59, i32 %60)
  store i32 %61, i32* %25, align 4
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.proc*, %struct.proc** %18, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 1
  %65 = load %struct.vmspace*, %struct.vmspace** %64, align 8
  store %struct.vmspace* %65, %struct.vmspace** %16, align 8
  store %struct.file* null, %struct.file** %17, align 8
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @AUDIT_ARG_FD(i32 %66)
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %19, align 8
  %69 = load i32, i32* @MAP_RESERVED0020, align 4
  %70 = load i32, i32* @MAP_RESERVED0040, align 4
  %71 = or i32 %69, %70
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %13, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* @SV_AOUT, align 4
  %76 = call i32 @SV_CURPROC_FLAG(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %101, label %78

78:                                               ; preds = %62
  %79 = load i64, i64* %11, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.proc*, %struct.proc** %18, align 8
  %83 = getelementptr inbounds %struct.proc, %struct.proc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @P_OSREL_MAP_ANON, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %98, label %87

87:                                               ; preds = %81, %78
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* @MAP_ANON, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %98, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %15, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95, %92, %81
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %8, align 4
  br label %472

100:                                              ; preds = %95, %87
  br label %108

101:                                              ; preds = %62
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* @MAP_ANON, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  store i64 0, i64* %15, align 8
  br label %107

107:                                              ; preds = %106, %101
  br label %108

108:                                              ; preds = %107, %100
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @MAP_STACK, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %108
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, -1
  br i1 %115, label %126, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @PROT_READ, align 4
  %119 = load i32, i32* @PROT_WRITE, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = load i32, i32* @PROT_READ, align 4
  %123 = load i32, i32* @PROT_WRITE, align 4
  %124 = or i32 %122, %123
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %116, %113
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %8, align 4
  br label %472

128:                                              ; preds = %116
  %129 = load i32, i32* @MAP_ANON, align 4
  %130 = load i32, i32* %13, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %13, align 4
  store i64 0, i64* %15, align 8
  br label %132

132:                                              ; preds = %128, %108
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @MAP_SHARED, align 4
  %135 = load i32, i32* @MAP_PRIVATE, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @MAP_FIXED, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @MAP_HASSEMAPHORE, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @MAP_STACK, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @MAP_NOSYNC, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @MAP_ANON, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @MAP_EXCL, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @MAP_NOCORE, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* @MAP_PREFAULT_READ, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @MAP_GUARD, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @MAP_ALIGNMENT_MASK, align 4
  %156 = or i32 %154, %155
  %157 = xor i32 %156, -1
  %158 = and i32 %133, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %132
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %8, align 4
  br label %472

162:                                              ; preds = %132
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @MAP_EXCL, align 4
  %165 = load i32, i32* @MAP_FIXED, align 4
  %166 = or i32 %164, %165
  %167 = and i32 %163, %166
  %168 = load i32, i32* @MAP_EXCL, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @EINVAL, align 4
  store i32 %171, i32* %8, align 4
  br label %472

172:                                              ; preds = %162
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* @MAP_SHARED, align 4
  %175 = load i32, i32* @MAP_PRIVATE, align 4
  %176 = or i32 %174, %175
  %177 = and i32 %173, %176
  %178 = load i32, i32* @MAP_SHARED, align 4
  %179 = load i32, i32* @MAP_PRIVATE, align 4
  %180 = or i32 %178, %179
  %181 = icmp eq i32 %177, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = load i32, i32* @EINVAL, align 4
  store i32 %183, i32* %8, align 4
  br label %472

184:                                              ; preds = %172
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @PROT_NONE, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* @PROT_READ, align 4
  %191 = load i32, i32* @PROT_WRITE, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @PROT_EXEC, align 4
  %194 = or i32 %192, %193
  %195 = xor i32 %194, -1
  %196 = and i32 %189, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %188
  %199 = load i32, i32* @EINVAL, align 4
  store i32 %199, i32* %8, align 4
  br label %472

200:                                              ; preds = %188, %184
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @MAP_GUARD, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %229

205:                                              ; preds = %200
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @PROT_NONE, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %227, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, -1
  br i1 %211, label %227, label %212

212:                                              ; preds = %209
  %213 = load i64, i64* %15, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %227, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* @MAP_FIXED, align 4
  %218 = load i32, i32* @MAP_GUARD, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @MAP_EXCL, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @MAP_ALIGNMENT_MASK, align 4
  %223 = or i32 %221, %222
  %224 = xor i32 %223, -1
  %225 = and i32 %216, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %215, %212, %209, %205
  %228 = load i32, i32* @EINVAL, align 4
  store i32 %228, i32* %8, align 4
  br label %472

229:                                              ; preds = %215, %200
  %230 = load i64, i64* %15, align 8
  %231 = load i64, i64* @PAGE_MASK, align 8
  %232 = and i64 %230, %231
  store i64 %232, i64* %20, align 8
  %233 = load i64, i64* %20, align 8
  %234 = load i64, i64* %15, align 8
  %235 = sub i64 %234, %233
  store i64 %235, i64* %15, align 8
  %236 = load i64, i64* %11, align 8
  %237 = load i64, i64* %20, align 8
  %238 = add i64 %236, %237
  store i64 %238, i64* %21, align 8
  %239 = load i64, i64* %21, align 8
  %240 = call i64 @round_page(i64 %239)
  store i64 %240, i64* %21, align 8
  %241 = load i64, i64* %11, align 8
  %242 = load i64, i64* %21, align 8
  %243 = icmp ugt i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %229
  %245 = load i32, i32* @ENOMEM, align 4
  store i32 %245, i32* %8, align 4
  br label %472

246:                                              ; preds = %229
  %247 = load i32, i32* %13, align 4
  %248 = load i32, i32* @MAP_ALIGNMENT_MASK, align 4
  %249 = and i32 %247, %248
  store i32 %249, i32* %23, align 4
  %250 = load i32, i32* %23, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %273

252:                                              ; preds = %246
  %253 = load i32, i32* %23, align 4
  %254 = load i32, i32* @MAP_ALIGNED_SUPER, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %252
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* @MAP_ALIGNMENT_SHIFT, align 4
  %259 = ashr i32 %257, %258
  %260 = sext i32 %259 to i64
  %261 = load i32, i32* @NBBY, align 4
  %262 = sext i32 %261 to i64
  %263 = mul i64 8, %262
  %264 = icmp uge i64 %260, %263
  br i1 %264, label %271, label %265

265:                                              ; preds = %256
  %266 = load i32, i32* %23, align 4
  %267 = load i32, i32* @MAP_ALIGNMENT_SHIFT, align 4
  %268 = ashr i32 %266, %267
  %269 = load i32, i32* @PAGE_SHIFT, align 4
  %270 = icmp slt i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %265, %256
  %272 = load i32, i32* @EINVAL, align 4
  store i32 %272, i32* %8, align 4
  br label %472

273:                                              ; preds = %265, %252, %246
  %274 = load i32, i32* %13, align 4
  %275 = load i32, i32* @MAP_FIXED, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %313

278:                                              ; preds = %273
  %279 = load i64, i64* %20, align 8
  %280 = load i64, i64* %19, align 8
  %281 = sub i64 %280, %279
  store i64 %281, i64* %19, align 8
  %282 = load i64, i64* %19, align 8
  %283 = load i64, i64* @PAGE_MASK, align 8
  %284 = and i64 %282, %283
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %278
  %287 = load i32, i32* @EINVAL, align 4
  store i32 %287, i32* %8, align 4
  br label %472

288:                                              ; preds = %278
  %289 = load i64, i64* %19, align 8
  %290 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %291 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %290, i32 0, i32 0
  %292 = call i64 @vm_map_min(i32* %291)
  %293 = icmp ult i64 %289, %292
  br i1 %293, label %302, label %294

294:                                              ; preds = %288
  %295 = load i64, i64* %19, align 8
  %296 = load i64, i64* %21, align 8
  %297 = add i64 %295, %296
  %298 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %299 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %298, i32 0, i32 0
  %300 = call i64 @vm_map_max(i32* %299)
  %301 = icmp ugt i64 %297, %300
  br i1 %301, label %302, label %304

302:                                              ; preds = %294, %288
  %303 = load i32, i32* @EINVAL, align 4
  store i32 %303, i32* %8, align 4
  br label %472

304:                                              ; preds = %294
  %305 = load i64, i64* %19, align 8
  %306 = load i64, i64* %21, align 8
  %307 = add i64 %305, %306
  %308 = load i64, i64* %19, align 8
  %309 = icmp ult i64 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %304
  %311 = load i32, i32* @EINVAL, align 4
  store i32 %311, i32* %8, align 4
  br label %472

312:                                              ; preds = %304
  br label %346

313:                                              ; preds = %273
  %314 = load i64, i64* %19, align 8
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %335, label %316

316:                                              ; preds = %313
  %317 = load i64, i64* %19, align 8
  %318 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %319 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = call i64 @round_page(i64 %320)
  %322 = icmp uge i64 %317, %321
  br i1 %322, label %323, label %345

323:                                              ; preds = %316
  %324 = load i64, i64* %19, align 8
  %325 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %326 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.thread*, %struct.thread** %9, align 8
  %329 = load i32, i32* @RLIMIT_DATA, align 4
  %330 = call i32 @lim_max(%struct.thread* %328, i32 %329)
  %331 = sext i32 %330 to i64
  %332 = add i64 %327, %331
  %333 = call i64 @round_page(i64 %332)
  %334 = icmp ult i64 %324, %333
  br i1 %334, label %335, label %345

335:                                              ; preds = %323, %313
  %336 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %337 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %336, i32 0, i32 1
  %338 = load i64, i64* %337, align 8
  %339 = load %struct.thread*, %struct.thread** %9, align 8
  %340 = load i32, i32* @RLIMIT_DATA, align 4
  %341 = call i32 @lim_max(%struct.thread* %339, i32 %340)
  %342 = sext i32 %341 to i64
  %343 = add i64 %338, %342
  %344 = call i64 @round_page(i64 %343)
  store i64 %344, i64* %19, align 8
  br label %345

345:                                              ; preds = %335, %323, %316
  br label %346

346:                                              ; preds = %345, %312
  %347 = load i64, i64* %11, align 8
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 0, i32* %24, align 4
  br label %451

350:                                              ; preds = %346
  %351 = load i32, i32* %13, align 4
  %352 = load i32, i32* @MAP_GUARD, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %366

355:                                              ; preds = %350
  %356 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %357 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %356, i32 0, i32 0
  %358 = load i64, i64* %21, align 8
  %359 = load i32, i32* @VM_PROT_NONE, align 4
  %360 = load i32, i32* @VM_PROT_NONE, align 4
  %361 = load i32, i32* %13, align 4
  %362 = load i64, i64* %15, align 8
  %363 = load i32, i32* @FALSE, align 4
  %364 = load %struct.thread*, %struct.thread** %9, align 8
  %365 = call i32 @vm_mmap_object(i32* %357, i64* %19, i64 %358, i32 %359, i32 %360, i32 %361, i32* null, i64 %362, i32 %363, %struct.thread* %364)
  store i32 %365, i32* %24, align 4
  br label %450

366:                                              ; preds = %350
  %367 = load i32, i32* %13, align 4
  %368 = load i32, i32* @MAP_ANON, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %382

371:                                              ; preds = %366
  %372 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %373 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %372, i32 0, i32 0
  %374 = load i64, i64* %21, align 8
  %375 = load i32, i32* %12, align 4
  %376 = load i32, i32* %25, align 4
  %377 = load i32, i32* %13, align 4
  %378 = load i64, i64* %15, align 8
  %379 = load i32, i32* @FALSE, align 4
  %380 = load %struct.thread*, %struct.thread** %9, align 8
  %381 = call i32 @vm_mmap_object(i32* %373, i64* %19, i64 %374, i32 %375, i32 %376, i32 %377, i32* null, i64 %378, i32 %379, %struct.thread* %380)
  store i32 %381, i32* %24, align 4
  br label %449

382:                                              ; preds = %366
  %383 = load i32, i32* @CAP_MMAP, align 4
  %384 = call i32 @cap_rights_init(i32* %26, i32 %383)
  %385 = load i32, i32* %12, align 4
  %386 = load i32, i32* @PROT_READ, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %382
  %390 = load i32, i32* @CAP_MMAP_R, align 4
  %391 = call i32 @cap_rights_set(i32* %26, i32 %390)
  br label %392

392:                                              ; preds = %389, %382
  %393 = load i32, i32* %13, align 4
  %394 = load i32, i32* @MAP_SHARED, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %406

397:                                              ; preds = %392
  %398 = load i32, i32* %12, align 4
  %399 = load i32, i32* @PROT_WRITE, align 4
  %400 = and i32 %398, %399
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %397
  %403 = load i32, i32* @CAP_MMAP_W, align 4
  %404 = call i32 @cap_rights_set(i32* %26, i32 %403)
  br label %405

405:                                              ; preds = %402, %397
  br label %406

406:                                              ; preds = %405, %392
  %407 = load i32, i32* %12, align 4
  %408 = load i32, i32* @PROT_EXEC, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %414

411:                                              ; preds = %406
  %412 = load i32, i32* @CAP_MMAP_X, align 4
  %413 = call i32 @cap_rights_set(i32* %26, i32 %412)
  br label %414

414:                                              ; preds = %411, %406
  %415 = load %struct.thread*, %struct.thread** %9, align 8
  %416 = load i32, i32* %14, align 4
  %417 = call i32 @fget_mmap(%struct.thread* %415, i32 %416, i32* %26, i32* %22, %struct.file** %17)
  store i32 %417, i32* %24, align 4
  %418 = load i32, i32* %24, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %414
  br label %463

421:                                              ; preds = %414
  %422 = load i32, i32* %13, align 4
  %423 = load i32, i32* @MAP_SHARED, align 4
  %424 = load i32, i32* @MAP_PRIVATE, align 4
  %425 = or i32 %423, %424
  %426 = and i32 %422, %425
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %436

428:                                              ; preds = %421
  %429 = load %struct.proc*, %struct.proc** %18, align 8
  %430 = getelementptr inbounds %struct.proc, %struct.proc* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* @P_OSREL_MAP_FSTRICT, align 8
  %433 = icmp sge i64 %431, %432
  br i1 %433, label %434, label %436

434:                                              ; preds = %428
  %435 = load i32, i32* @EINVAL, align 4
  store i32 %435, i32* %24, align 4
  br label %463

436:                                              ; preds = %428, %421
  %437 = load %struct.file*, %struct.file** %17, align 8
  %438 = load %struct.vmspace*, %struct.vmspace** %16, align 8
  %439 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %438, i32 0, i32 0
  %440 = load i64, i64* %21, align 8
  %441 = load i32, i32* %12, align 4
  %442 = load i32, i32* %25, align 4
  %443 = load i32, i32* %22, align 4
  %444 = and i32 %442, %443
  %445 = load i32, i32* %13, align 4
  %446 = load i64, i64* %15, align 8
  %447 = load %struct.thread*, %struct.thread** %9, align 8
  %448 = call i32 @fo_mmap(%struct.file* %437, i32* %439, i64* %19, i64 %440, i32 %441, i32 %444, i32 %445, i64 %446, %struct.thread* %447)
  store i32 %448, i32* %24, align 4
  br label %449

449:                                              ; preds = %436, %371
  br label %450

450:                                              ; preds = %449, %355
  br label %451

451:                                              ; preds = %450, %349
  %452 = load i32, i32* %24, align 4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %462

454:                                              ; preds = %451
  %455 = load i64, i64* %19, align 8
  %456 = load i64, i64* %20, align 8
  %457 = add i64 %455, %456
  %458 = load %struct.thread*, %struct.thread** %9, align 8
  %459 = getelementptr inbounds %struct.thread, %struct.thread* %458, i32 0, i32 0
  %460 = load i64*, i64** %459, align 8
  %461 = getelementptr inbounds i64, i64* %460, i64 0
  store i64 %457, i64* %461, align 8
  br label %462

462:                                              ; preds = %454, %451
  br label %463

463:                                              ; preds = %462, %434, %420
  %464 = load %struct.file*, %struct.file** %17, align 8
  %465 = icmp ne %struct.file* %464, null
  br i1 %465, label %466, label %470

466:                                              ; preds = %463
  %467 = load %struct.file*, %struct.file** %17, align 8
  %468 = load %struct.thread*, %struct.thread** %9, align 8
  %469 = call i32 @fdrop(%struct.file* %467, %struct.thread* %468)
  br label %470

470:                                              ; preds = %466, %463
  %471 = load i32, i32* %24, align 4
  store i32 %471, i32* %8, align 4
  br label %472

472:                                              ; preds = %470, %310, %302, %286, %271, %244, %227, %198, %182, %170, %160, %126, %98, %50, %35
  %473 = load i32, i32* %8, align 4
  ret i32 %473
}

declare dso_local i32 @PROT_MAX(i32) #1

declare dso_local i32 @PROT_MAX_EXTRACT(i32) #1

declare dso_local i32 @PROT_EXTRACT(i32) #1

declare dso_local i32 @kern_mmap_maxprot(%struct.proc*, i32) #1

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @SV_CURPROC_FLAG(i32) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @vm_map_min(i32*) #1

declare dso_local i64 @vm_map_max(i32*) #1

declare dso_local i32 @lim_max(%struct.thread*, i32) #1

declare dso_local i32 @vm_mmap_object(i32*, i64*, i64, i32, i32, i32, i32*, i64, i32, %struct.thread*) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @cap_rights_set(i32*, i32) #1

declare dso_local i32 @fget_mmap(%struct.thread*, i32, i32*, i32*, %struct.file**) #1

declare dso_local i32 @fo_mmap(%struct.file*, i32*, i64*, i64, i32, i32, i32, i64, %struct.thread*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
