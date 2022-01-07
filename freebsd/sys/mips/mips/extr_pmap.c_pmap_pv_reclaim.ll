; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_pv_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pmap.c_pmap_pv_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.pch = type { i32 }
%struct.pv_chunk = type { i64*, i32, %struct.pv_chunk*, %struct.TYPE_22__* }

@MA_OWNED = common dso_local global i32 0, align 4
@pv_chunks = common dso_local global i32 0, align 4
@pc_lru = common dso_local global i32 0, align 4
@_NPCM = common dso_local global i32 0, align 4
@pc_freemask = common dso_local global i64* null, align 8
@NBBY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"pmap_pv_reclaim: pde\00", align 1
@PTE_W = common dso_local global i32 0, align 4
@PTE_G = common dso_local global i64 0, align 8
@PTE_D = common dso_local global i32 0, align 4
@PV_TABLE_REF = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@pv_list = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@pv_entry_frees = common dso_local global i32 0, align 4
@pv_entry_spare = common dso_local global i32 0, align 4
@pv_entry_count = common dso_local global i32 0, align 4
@pc_list = common dso_local global i32 0, align 4
@_NPCPV = common dso_local global i32 0, align 4
@pc_chunk_count = common dso_local global i32 0, align 4
@pc_chunk_frees = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_22__*)* @pmap_pv_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @pmap_pv_reclaim(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.pch, align 4
  %4 = alloca %struct.pv_chunk*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pv_chunk*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %19 = load i32, i32* @MA_OWNED, align 4
  %20 = call i32 @PMAP_LOCK_ASSERT(%struct.TYPE_22__* %18, i32 %19)
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %12, align 8
  %21 = call i32 @TAILQ_INIT(%struct.pch* %3)
  br label %22

22:                                               ; preds = %312, %226, %65, %1
  %23 = call %struct.pv_chunk* @TAILQ_FIRST(i32* @pv_chunks)
  store %struct.pv_chunk* %23, %struct.pv_chunk** %4, align 8
  %24 = icmp ne %struct.pv_chunk* %23, null
  br i1 %24, label %25, label %313

25:                                               ; preds = %22
  %26 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %27 = load i32, i32* @pc_lru, align 4
  %28 = call i32 @TAILQ_REMOVE(i32* @pv_chunks, %struct.pv_chunk* %26, i32 %27)
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %31 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %30, i32 0, i32 3
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %31, align 8
  %33 = icmp ne %struct.TYPE_22__* %29, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %25
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = icmp ne %struct.TYPE_22__* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %39 = call i32 @pmap_invalidate_all(%struct.TYPE_22__* %38)
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %42 = icmp ne %struct.TYPE_22__* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %45 = call i32 @PMAP_UNLOCK(%struct.TYPE_22__* %44)
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %49 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %48, i32 0, i32 3
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %49, align 8
  store %struct.TYPE_22__* %50, %struct.TYPE_22__** %6, align 8
  %51 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %53 = icmp ugt %struct.TYPE_22__* %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = call i32 @PMAP_LOCK(%struct.TYPE_22__* %55)
  br label %70

57:                                               ; preds = %47
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %60 = icmp ne %struct.TYPE_22__* %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %63 = call i32 @PMAP_TRYLOCK(%struct.TYPE_22__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  %66 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %67 = load i32, i32* @pc_lru, align 4
  %68 = call i32 @TAILQ_INSERT_TAIL(%struct.pch* %3, %struct.pv_chunk* %66, i32 %67)
  br label %22

69:                                               ; preds = %61, %57
  br label %70

70:                                               ; preds = %69, %54
  br label %71

71:                                               ; preds = %70, %25
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %220, %71
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @_NPCM, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %223

76:                                               ; preds = %72
  %77 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %78 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %77, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = xor i64 %83, -1
  %85 = load i64*, i64** @pc_freemask, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = and i64 %84, %89
  store i64 %90, i64* %13, align 8
  br label %91

91:                                               ; preds = %212, %76
  %92 = load i64, i64* %13, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %219

94:                                               ; preds = %91
  %95 = load i64, i64* %13, align 8
  %96 = call i32 @ffsl(i64 %95)
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 8
  %101 = load i32, i32* @NBBY, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %100, %102
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %103, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %17, align 4
  %108 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %109 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %108, i32 0, i32 2
  %110 = load %struct.pv_chunk*, %struct.pv_chunk** %109, align 8
  %111 = load i32, i32* %17, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %110, i64 %112
  store %struct.pv_chunk* %113, %struct.pv_chunk** %9, align 8
  %114 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %115 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %10, align 4
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i64* @pmap_pde(%struct.TYPE_22__* %117, i32 %118)
  store i64* %119, i64** %5, align 8
  %120 = load i64*, i64** %5, align 8
  %121 = icmp ne i64* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %94
  %123 = load i64*, i64** %5, align 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br label %126

126:                                              ; preds = %122, %94
  %127 = phi i1 [ false, %94 ], [ %125, %122 ]
  %128 = zext i1 %127 to i32
  %129 = call i32 @KASSERT(i32 %128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %130 = load i64*, i64** %5, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i64* @pmap_pde_to_pte(i64* %130, i32 %131)
  store i64* %132, i64** %7, align 8
  %133 = load i64*, i64** %7, align 8
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %8, align 8
  %135 = load i32, i32* @PTE_W, align 4
  %136 = call i64 @pte_test(i64* %8, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %212

139:                                              ; preds = %126
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %141 = call i64 @is_kernel_pmap(%struct.TYPE_22__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %139
  %144 = load i64, i64* @PTE_G, align 8
  %145 = load i64*, i64** %7, align 8
  store i64 %144, i64* %145, align 8
  br label %148

146:                                              ; preds = %139
  %147 = load i64*, i64** %7, align 8
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i64, i64* %8, align 8
  %150 = call i32 @TLBLO_PTE_TO_PA(i64 %149)
  %151 = call %struct.TYPE_21__* @PHYS_TO_VM_PAGE(i32 %150)
  store %struct.TYPE_21__* %151, %struct.TYPE_21__** %11, align 8
  %152 = load i32, i32* @PTE_D, align 4
  %153 = call i64 @pte_test(i64* %8, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %157 = call i32 @vm_page_dirty(%struct.TYPE_21__* %156)
  br label %158

158:                                              ; preds = %155, %148
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @PV_TABLE_REF, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %168 = load i32, i32* @PGA_REFERENCED, align 4
  %169 = call i32 @vm_page_aflag_set(%struct.TYPE_21__* %167, i32 %168)
  br label %170

170:                                              ; preds = %166, %158
  %171 = load i32, i32* @PV_TABLE_REF, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, %172
  store i32 %177, i32* %175, align 4
  %178 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 1
  %181 = load %struct.pv_chunk*, %struct.pv_chunk** %9, align 8
  %182 = load i32, i32* @pv_list, align 4
  %183 = call i32 @TAILQ_REMOVE(i32* %180, %struct.pv_chunk* %181, i32 %182)
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 1
  %187 = call i64 @TAILQ_EMPTY(i32* %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %170
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %191 = load i32, i32* @PGA_WRITEABLE, align 4
  %192 = call i32 @vm_page_aflag_clear(%struct.TYPE_21__* %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %170
  %194 = load i32, i32* %14, align 4
  %195 = zext i32 %194 to i64
  %196 = shl i64 1, %195
  %197 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %198 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %197, i32 0, i32 0
  %199 = load i64*, i64** %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i64, i64* %199, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = or i64 %203, %196
  store i64 %204, i64* %202, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %206 = load i32, i32* %10, align 4
  %207 = load i64*, i64** %5, align 8
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @pmap_unuse_pt(%struct.TYPE_22__* %205, i32 %206, i64 %208)
  %210 = load i32, i32* %16, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %16, align 4
  br label %212

212:                                              ; preds = %193, %138
  %213 = load i32, i32* %14, align 4
  %214 = zext i32 %213 to i64
  %215 = shl i64 1, %214
  %216 = xor i64 %215, -1
  %217 = load i64, i64* %13, align 8
  %218 = and i64 %217, %216
  store i64 %218, i64* %13, align 8
  br label %91

219:                                              ; preds = %91
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %15, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %15, align 4
  br label %72

223:                                              ; preds = %72
  %224 = load i32, i32* %16, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %228 = load i32, i32* @pc_lru, align 4
  %229 = call i32 @TAILQ_INSERT_TAIL(%struct.pch* %3, %struct.pv_chunk* %227, i32 %228)
  br label %22

230:                                              ; preds = %223
  %231 = load i32, i32* %16, align 4
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, %231
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* @pv_entry_frees, align 4
  %239 = add nsw i32 %238, %237
  store i32 %239, i32* @pv_entry_frees, align 4
  %240 = call i32 @PV_STAT(i32 %239)
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* @pv_entry_spare, align 4
  %243 = add nsw i32 %242, %241
  store i32 %243, i32* @pv_entry_spare, align 4
  %244 = call i32 @PV_STAT(i32 %243)
  %245 = load i32, i32* %16, align 4
  %246 = load i32, i32* @pv_entry_count, align 4
  %247 = sub nsw i32 %246, %245
  store i32 %247, i32* @pv_entry_count, align 4
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  %250 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %251 = load i32, i32* @pc_list, align 4
  %252 = call i32 @TAILQ_REMOVE(i32* %249, %struct.pv_chunk* %250, i32 %251)
  store i32 0, i32* %15, align 4
  br label %253

253:                                              ; preds = %286, %230
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* @_NPCM, align 4
  %256 = icmp slt i32 %254, %255
  br i1 %256, label %257, label %289

257:                                              ; preds = %253
  %258 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %259 = getelementptr inbounds %struct.pv_chunk, %struct.pv_chunk* %258, i32 0, i32 0
  %260 = load i64*, i64** %259, align 8
  %261 = load i32, i32* %15, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i64, i64* %260, i64 %262
  %264 = load i64, i64* %263, align 8
  %265 = load i64*, i64** @pc_freemask, align 8
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i64, i64* %265, i64 %267
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %264, %269
  br i1 %270, label %271, label %285

271:                                              ; preds = %257
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 0
  %274 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %275 = load i32, i32* @pc_list, align 4
  %276 = call i32 @TAILQ_INSERT_HEAD(i32* %273, %struct.pv_chunk* %274, i32 %275)
  %277 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %278 = load i32, i32* @pc_lru, align 4
  %279 = call i32 @TAILQ_INSERT_TAIL(%struct.pch* %3, %struct.pv_chunk* %277, i32 %278)
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %281 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %282 = icmp eq %struct.TYPE_22__* %280, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %271
  br label %314

284:                                              ; preds = %271
  br label %289

285:                                              ; preds = %257
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %15, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %15, align 4
  br label %253

289:                                              ; preds = %284, %253
  %290 = load i32, i32* %15, align 4
  %291 = load i32, i32* @_NPCM, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %312

293:                                              ; preds = %289
  %294 = load i32, i32* @_NPCPV, align 4
  %295 = load i32, i32* @pv_entry_spare, align 4
  %296 = sub nsw i32 %295, %294
  store i32 %296, i32* @pv_entry_spare, align 4
  %297 = call i32 @PV_STAT(i32 %296)
  %298 = load i32, i32* @pc_chunk_count, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* @pc_chunk_count, align 4
  %300 = call i32 @PV_STAT(i32 %298)
  %301 = load i32, i32* @pc_chunk_frees, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* @pc_chunk_frees, align 4
  %303 = call i32 @PV_STAT(i32 %301)
  %304 = load %struct.pv_chunk*, %struct.pv_chunk** %4, align 8
  %305 = ptrtoint %struct.pv_chunk* %304 to i32
  %306 = call i32 @MIPS_DIRECT_TO_PHYS(i32 %305)
  %307 = call %struct.TYPE_21__* @PHYS_TO_VM_PAGE(i32 %306)
  store %struct.TYPE_21__* %307, %struct.TYPE_21__** %12, align 8
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @dump_drop_page(i32 %310)
  br label %313

312:                                              ; preds = %289
  br label %22

313:                                              ; preds = %293, %22
  br label %314

314:                                              ; preds = %313, %283
  %315 = load i32, i32* @pc_lru, align 4
  %316 = call i32 @TAILQ_CONCAT(i32* @pv_chunks, %struct.pch* %3, i32 %315)
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %318 = icmp ne %struct.TYPE_22__* %317, null
  br i1 %318, label %319, label %329

319:                                              ; preds = %314
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %321 = call i32 @pmap_invalidate_all(%struct.TYPE_22__* %320)
  %322 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %324 = icmp ne %struct.TYPE_22__* %322, %323
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %327 = call i32 @PMAP_UNLOCK(%struct.TYPE_22__* %326)
  br label %328

328:                                              ; preds = %325, %319
  br label %329

329:                                              ; preds = %328, %314
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  ret %struct.TYPE_21__* %330
}

declare dso_local i32 @PMAP_LOCK_ASSERT(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @TAILQ_INIT(%struct.pch*) #1

declare dso_local %struct.pv_chunk* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @pmap_invalidate_all(%struct.TYPE_22__*) #1

declare dso_local i32 @PMAP_UNLOCK(%struct.TYPE_22__*) #1

declare dso_local i32 @PMAP_LOCK(%struct.TYPE_22__*) #1

declare dso_local i32 @PMAP_TRYLOCK(%struct.TYPE_22__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(%struct.pch*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i64* @pmap_pde(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64* @pmap_pde_to_pte(i64*, i32) #1

declare dso_local i64 @pte_test(i64*, i32) #1

declare dso_local i64 @is_kernel_pmap(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @TLBLO_PTE_TO_PA(i64) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_21__*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pmap_unuse_pt(%struct.TYPE_22__*, i32, i64) #1

declare dso_local i32 @PV_STAT(i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.pv_chunk*, i32) #1

declare dso_local i32 @MIPS_DIRECT_TO_PHYS(i32) #1

declare dso_local i32 @dump_drop_page(i32) #1

declare dso_local i32 @TAILQ_CONCAT(i32*, %struct.pch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
