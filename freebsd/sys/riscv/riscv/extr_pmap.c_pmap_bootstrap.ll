; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_bootstrap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"pmap_bootstrap %lx %lx %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%lx\0A\00", align 1
@KERNBASE = common dso_local global i64 0, align 8
@L1_SHIFT = common dso_local global i64 0, align 8
@Ln_ADDR_MASK = common dso_local global i64 0, align 8
@kernel_pmap_store = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@kernel_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@pvh_global_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"pmap pv global\00", align 1
@physmap_idx = common dso_local global i32 0, align 4
@physmap = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"physmap_idx %lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"min_pa %lx\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"max_pa %lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"The L2 index is non-zero\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@L2_SIZE = common dso_local global i32 0, align 4
@DPCPU_SIZE = common dso_local global i32 0, align 4
@msgbufsize = common dso_local global i32 0, align 4
@msgbufp = common dso_local global i8* null, align 8
@virtual_avail = common dso_local global i8* null, align 8
@virtual_end = common dso_local global i64 0, align 8
@kernel_vm_end = common dso_local global i8* null, align 8
@physmem = common dso_local global i64 0, align 8
@dump_avail = common dso_local global i64* null, align 8
@realmem = common dso_local global i32 0, align 4
@phys_avail = common dso_local global i64* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@Maxmem = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_bootstrap(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %20, i64 %21, i64 %22)
  %24 = load i64, i64* %4, align 8
  %25 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  %26 = load i64, i64* @KERNBASE, align 8
  %27 = load i64, i64* @L1_SHIFT, align 8
  %28 = ashr i64 %26, %27
  %29 = load i64, i64* @Ln_ADDR_MASK, align 8
  %30 = and i64 %28, %29
  %31 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %30)
  %32 = load i64, i64* %4, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kernel_pmap_store, i32 0, i32 0), align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %35 = call i32 @PMAP_LOCK_INIT(%struct.TYPE_5__* %34)
  %36 = call i32 @rw_init(i32* @pvh_global_lock, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @CPU_FILL(i32* %38)
  %40 = load i64, i64* %5, align 8
  store i64 %40, i64* %15, align 8
  store i64 %40, i64* %16, align 8
  store i32 0, i32* %19, align 4
  br label %41

41:                                               ; preds = %91, %3
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @physmap_idx, align 4
  %44 = mul nsw i32 %43, 2
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %94

46:                                               ; preds = %41
  %47 = load i64*, i64** @physmap, align 8
  %48 = load i32, i32* %19, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** @physmap, align 8
  %53 = load i32, i32* %19, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %51, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %91

60:                                               ; preds = %46
  %61 = load i64*, i64** @physmap, align 8
  %62 = load i32, i32* %19, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp sle i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i64*, i64** @physmap, align 8
  %70 = load i32, i32* %19, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  store i64 %73, i64* %16, align 8
  br label %74

74:                                               ; preds = %68, %60
  %75 = load i64*, i64** @physmap, align 8
  %76 = load i32, i32* %19, align 4
  %77 = add nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %15, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %74
  %84 = load i64*, i64** @physmap, align 8
  %85 = load i32, i32* %19, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %84, i64 %87
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %15, align 8
  br label %90

90:                                               ; preds = %83, %74
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* %19, align 4
  %93 = add nsw i32 %92, 2
  store i32 %93, i32* %19, align 4
  br label %41

94:                                               ; preds = %41
  %95 = load i32, i32* @physmap_idx, align 4
  %96 = sext i32 %95 to i64
  %97 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %96)
  %98 = load i64, i64* %16, align 8
  %99 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  %100 = load i64, i64* %15, align 8
  %101 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %100)
  %102 = load i64, i64* %4, align 8
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @pmap_bootstrap_dmap(i64 %102, i64 %103, i64 %104)
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* @KERNBASE, align 8
  %108 = call i32 @pmap_early_page_idx(i64 %106, i64 %107, i64* %7, i64* %8)
  %109 = load i64, i64* %8, align 8
  %110 = icmp eq i64 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @KASSERT(i32 %111, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %113 = load i64, i64* @KERNBASE, align 8
  %114 = load i64, i64* %6, align 8
  %115 = add nsw i64 %113, %114
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = call i8* @roundup2(i64 %115, i32 %116)
  %118 = ptrtoint i8* %117 to i64
  store i64 %118, i64* %11, align 8
  %119 = load i64, i64* %4, align 8
  %120 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %121 = load i32, i32* @L2_SIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = sub nsw i64 %120, %122
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @pmap_bootstrap_l3(i64 %119, i64 %123, i64 %124)
  store i64 %125, i64* %11, align 8
  %126 = call i32 (...) @sfence_vma()
  %127 = load i64, i64* %11, align 8
  store i64 %127, i64* %12, align 8
  %128 = load i32, i32* @DPCPU_SIZE, align 4
  %129 = load i32, i32* @PAGE_SIZE, align 4
  %130 = sdiv i32 %128, %129
  %131 = load i32, i32* @PAGE_SIZE, align 4
  %132 = mul nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = load i64, i64* %11, align 8
  %135 = add nsw i64 %134, %133
  store i64 %135, i64* %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = load i32, i32* @DPCPU_SIZE, align 4
  %139 = load i32, i32* @PAGE_SIZE, align 4
  %140 = sdiv i32 %138, %139
  %141 = load i32, i32* @PAGE_SIZE, align 4
  %142 = mul nsw i32 %140, %141
  %143 = sext i32 %142 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %137, i8 0, i64 %143, i1 false)
  %144 = load i64, i64* %12, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @dpcpu_init(i8* %145, i32 0)
  %147 = load i64, i64* %11, align 8
  store i64 %147, i64* %13, align 8
  %148 = load i32, i32* @msgbufsize, align 4
  %149 = call i32 @round_page(i32 %148)
  %150 = load i32, i32* @PAGE_SIZE, align 4
  %151 = sdiv i32 %149, %150
  %152 = load i32, i32* @PAGE_SIZE, align 4
  %153 = mul nsw i32 %151, %152
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %11, align 8
  %156 = add nsw i64 %155, %154
  store i64 %156, i64* %11, align 8
  %157 = load i64, i64* %13, align 8
  %158 = inttoptr i64 %157 to i8*
  %159 = load i32, i32* @msgbufsize, align 4
  %160 = call i32 @round_page(i32 %159)
  %161 = load i32, i32* @PAGE_SIZE, align 4
  %162 = sdiv i32 %160, %161
  %163 = load i32, i32* @PAGE_SIZE, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %158, i8 0, i64 %165, i1 false)
  %166 = load i64, i64* %13, align 8
  %167 = inttoptr i64 %166 to i8*
  store i8* %167, i8** @msgbufp, align 8
  %168 = load i64, i64* %11, align 8
  %169 = load i32, i32* @L2_SIZE, align 4
  %170 = call i8* @roundup2(i64 %168, i32 %169)
  store i8* %170, i8** @virtual_avail, align 8
  %171 = load i64, i64* @VM_MAX_KERNEL_ADDRESS, align 8
  %172 = load i32, i32* @L2_SIZE, align 4
  %173 = sext i32 %172 to i64
  %174 = sub nsw i64 %171, %173
  store i64 %174, i64* @virtual_end, align 8
  %175 = load i8*, i8** @virtual_avail, align 8
  store i8* %175, i8** @kernel_vm_end, align 8
  %176 = load i64, i64* %4, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i64 @pmap_early_vtophys(i64 %176, i64 %177)
  store i64 %178, i64* %17, align 8
  store i64 0, i64* @physmem, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %179

179:                                              ; preds = %304, %94
  %180 = load i64, i64* %10, align 8
  %181 = load i32, i32* @physmap_idx, align 4
  %182 = mul nsw i32 %181, 2
  %183 = sext i32 %182 to i64
  %184 = icmp slt i64 %180, %183
  br i1 %184, label %185, label %307

185:                                              ; preds = %179
  %186 = load i64*, i64** @physmap, align 8
  %187 = load i64, i64* %10, align 8
  %188 = getelementptr inbounds i64, i64* %186, i64 %187
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %18, align 8
  %190 = load i64*, i64** @physmap, align 8
  %191 = load i64, i64* %10, align 8
  %192 = add nsw i64 %191, 1
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %14, align 8
  %195 = load i64, i64* %18, align 8
  %196 = load i64, i64* %14, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %304

199:                                              ; preds = %185
  %200 = load i64, i64* %18, align 8
  %201 = load i64*, i64** @dump_avail, align 8
  %202 = load i64, i64* %10, align 8
  %203 = getelementptr inbounds i64, i64* %201, i64 %202
  store i64 %200, i64* %203, align 8
  %204 = load i64, i64* %14, align 8
  %205 = load i64*, i64** @dump_avail, align 8
  %206 = load i64, i64* %10, align 8
  %207 = add nsw i64 %206, 1
  %208 = getelementptr inbounds i64, i64* %205, i64 %207
  store i64 %204, i64* %208, align 8
  %209 = load i64, i64* %14, align 8
  %210 = load i64, i64* %18, align 8
  %211 = sub nsw i64 %209, %210
  %212 = call i64 @atop(i64 %211)
  %213 = load i32, i32* @realmem, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %212
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* @realmem, align 4
  %217 = load i64, i64* %18, align 8
  %218 = load i64, i64* %5, align 8
  %219 = icmp sge i64 %217, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %199
  %221 = load i64, i64* %14, align 8
  %222 = load i64, i64* %17, align 8
  %223 = icmp sle i64 %221, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  br label %304

225:                                              ; preds = %220, %199
  %226 = load i64, i64* %18, align 8
  %227 = load i64, i64* %5, align 8
  %228 = icmp slt i64 %226, %227
  br i1 %228, label %229, label %235

229:                                              ; preds = %225
  %230 = load i64, i64* %14, align 8
  %231 = load i64, i64* %5, align 8
  %232 = icmp sgt i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i64, i64* %5, align 8
  store i64 %234, i64* %14, align 8
  br label %246

235:                                              ; preds = %229, %225
  %236 = load i64, i64* %18, align 8
  %237 = load i64, i64* %17, align 8
  %238 = icmp slt i64 %236, %237
  br i1 %238, label %239, label %245

239:                                              ; preds = %235
  %240 = load i64, i64* %14, align 8
  %241 = load i64, i64* %17, align 8
  %242 = icmp sgt i64 %240, %241
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i64, i64* %17, align 8
  store i64 %244, i64* %18, align 8
  br label %245

245:                                              ; preds = %243, %239, %235
  br label %246

246:                                              ; preds = %245, %233
  %247 = load i64, i64* %18, align 8
  %248 = load i64*, i64** @phys_avail, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  store i64 %247, i64* %250, align 8
  %251 = load i64, i64* %14, align 8
  %252 = load i64*, i64** @phys_avail, align 8
  %253 = load i64, i64* %9, align 8
  %254 = add nsw i64 %253, 1
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  store i64 %251, i64* %255, align 8
  %256 = load i64, i64* %14, align 8
  %257 = load i64, i64* %18, align 8
  %258 = sub nsw i64 %256, %257
  %259 = load i64, i64* @PAGE_SHIFT, align 8
  %260 = ashr i64 %258, %259
  %261 = load i64, i64* @physmem, align 8
  %262 = add nsw i64 %261, %260
  store i64 %262, i64* @physmem, align 8
  %263 = load i64, i64* %9, align 8
  %264 = add nsw i64 %263, 2
  store i64 %264, i64* %9, align 8
  %265 = load i64, i64* %14, align 8
  %266 = load i64*, i64** @physmap, align 8
  %267 = load i64, i64* %10, align 8
  %268 = add nsw i64 %267, 1
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %265, %270
  br i1 %271, label %272, label %303

272:                                              ; preds = %246
  %273 = load i64, i64* %14, align 8
  %274 = load i64, i64* %17, align 8
  %275 = icmp sgt i64 %273, %274
  br i1 %275, label %276, label %303

276:                                              ; preds = %272
  %277 = load i64, i64* %17, align 8
  %278 = load i64*, i64** @phys_avail, align 8
  %279 = load i64, i64* %9, align 8
  %280 = getelementptr inbounds i64, i64* %278, i64 %279
  store i64 %277, i64* %280, align 8
  %281 = load i64*, i64** @physmap, align 8
  %282 = load i64, i64* %10, align 8
  %283 = add nsw i64 %282, 1
  %284 = getelementptr inbounds i64, i64* %281, i64 %283
  %285 = load i64, i64* %284, align 8
  %286 = load i64*, i64** @phys_avail, align 8
  %287 = load i64, i64* %9, align 8
  %288 = add nsw i64 %287, 1
  %289 = getelementptr inbounds i64, i64* %286, i64 %288
  store i64 %285, i64* %289, align 8
  %290 = load i64*, i64** @physmap, align 8
  %291 = load i64, i64* %10, align 8
  %292 = add nsw i64 %291, 1
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* %17, align 8
  %296 = sub nsw i64 %294, %295
  %297 = load i64, i64* @PAGE_SHIFT, align 8
  %298 = ashr i64 %296, %297
  %299 = load i64, i64* @physmem, align 8
  %300 = add nsw i64 %299, %298
  store i64 %300, i64* @physmem, align 8
  %301 = load i64, i64* %9, align 8
  %302 = add nsw i64 %301, 2
  store i64 %302, i64* %9, align 8
  br label %303

303:                                              ; preds = %276, %272, %246
  br label %304

304:                                              ; preds = %303, %224, %198
  %305 = load i64, i64* %10, align 8
  %306 = add nsw i64 %305, 2
  store i64 %306, i64* %10, align 8
  br label %179

307:                                              ; preds = %179
  %308 = load i64*, i64** @phys_avail, align 8
  %309 = load i64, i64* %9, align 8
  %310 = getelementptr inbounds i64, i64* %308, i64 %309
  store i64 0, i64* %310, align 8
  %311 = load i64*, i64** @phys_avail, align 8
  %312 = load i64, i64* %9, align 8
  %313 = add nsw i64 %312, 1
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  store i64 0, i64* %314, align 8
  %315 = load i64*, i64** @phys_avail, align 8
  %316 = load i64, i64* %9, align 8
  %317 = sub nsw i64 %316, 1
  %318 = getelementptr inbounds i64, i64* %315, i64 %317
  %319 = load i64, i64* %318, align 8
  %320 = call i64 @atop(i64 %319)
  store i64 %320, i64* @Maxmem, align 8
  ret void
}

declare dso_local i32 @printf(i8*, i64, ...) #1

declare dso_local i32 @PMAP_LOCK_INIT(%struct.TYPE_5__*) #1

declare dso_local i32 @rw_init(i32*, i8*) #1

declare dso_local i32 @CPU_FILL(i32*) #1

declare dso_local i32 @pmap_bootstrap_dmap(i64, i64, i64) #1

declare dso_local i32 @pmap_early_page_idx(i64, i64, i64*, i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i8* @roundup2(i64, i32) #1

declare dso_local i64 @pmap_bootstrap_l3(i64, i64, i64) #1

declare dso_local i32 @sfence_vma(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dpcpu_init(i8*, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @pmap_early_vtophys(i64, i64) #1

declare dso_local i64 @atop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
