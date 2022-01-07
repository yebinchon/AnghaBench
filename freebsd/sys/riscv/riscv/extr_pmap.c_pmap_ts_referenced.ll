; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_ts_referenced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_ts_referenced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_page = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.spglist = type { i32 }
%struct.rwlock = type { i32 }
%struct.TYPE_14__ = type { i64 }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_ts_referenced: page %p is not managed\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@pv_dummy = common dso_local global %struct.md_page zeroinitializer, align 4
@pvh_global_lock = common dso_local global i32 0, align 4
@PTE_W = common dso_local global i32 0, align 4
@PTE_D = common dso_local global i32 0, align 4
@PTE_A = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@L2_SHIFT = common dso_local global i64 0, align 8
@Ln_ENTRIES = common dso_local global i32 0, align 4
@PTE_SW_WIRED = common dso_local global i32 0, align 4
@pv_next = common dso_local global i32 0, align 4
@PMAP_TS_REFERENCED_MAX = common dso_local global i32 0, align 4
@PTE_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"pmap_ts_referenced: found an invalid l2 table\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_ts_referenced(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.spglist, align 4
  %4 = alloca %struct.md_page*, align 8
  %5 = alloca %struct.rwlock*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VPO_UNMANAGED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %27 = bitcast %struct.TYPE_13__* %26 to i8*
  %28 = call i32 @KASSERT(i32 %25, i8* %27)
  %29 = call i32 @SLIST_INIT(%struct.spglist* %3)
  store i32 0, i32* %15, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = call i64 @VM_PAGE_TO_PHYS(%struct.TYPE_13__* %30)
  store i64 %31, i64* %13, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PG_FICTITIOUS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  br label %42

39:                                               ; preds = %1
  %40 = load i64, i64* %13, align 8
  %41 = call %struct.md_page* @pa_to_pvh(i64 %40)
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi %struct.md_page* [ @pv_dummy, %38 ], [ %41, %39 ]
  store %struct.md_page* %43, %struct.md_page** %4, align 8
  %44 = load i64, i64* %13, align 8
  %45 = call %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i64 %44)
  store %struct.rwlock* %45, %struct.rwlock** %5, align 8
  %46 = call i32 @rw_rlock(i32* @pvh_global_lock)
  %47 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %48 = call i32 @rw_wlock(%struct.rwlock* %47)
  br label %49

49:                                               ; preds = %224, %78, %42
  store i32 0, i32* %17, align 4
  %50 = load %struct.md_page*, %struct.md_page** %4, align 8
  %51 = getelementptr inbounds %struct.md_page, %struct.md_page* %50, i32 0, i32 1
  %52 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %51)
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %7, align 8
  %53 = icmp eq %struct.TYPE_14__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %183

55:                                               ; preds = %49
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %56, %struct.TYPE_14__** %6, align 8
  br label %57

57:                                               ; preds = %176, %55
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = call i64 @PV_PMAP(%struct.TYPE_14__* %58)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @PMAP_TRYLOCK(i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %57
  %64 = load %struct.md_page*, %struct.md_page** %4, align 8
  %65 = getelementptr inbounds %struct.md_page, %struct.md_page* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %18, align 4
  %67 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %68 = call i32 @rw_wunlock(%struct.rwlock* %67)
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @PMAP_LOCK(i64 %69)
  %71 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %72 = call i32 @rw_wlock(%struct.rwlock* %71)
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.md_page*, %struct.md_page** %4, align 8
  %75 = getelementptr inbounds %struct.md_page, %struct.md_page* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %63
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @PMAP_UNLOCK(i64 %79)
  br label %49

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %57
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %14, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32* @pmap_l2(i64 %86, i64 %87)
  store i32* %88, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32 @pmap_load(i32* %89)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @PTE_W, align 4
  %93 = load i32, i32* @PTE_D, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = load i32, i32* @PTE_W, align 4
  %97 = load i32, i32* @PTE_D, align 4
  %98 = or i32 %96, %97
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %82
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %102 = call i32 @vm_page_dirty(%struct.TYPE_13__* %101)
  br label %103

103:                                              ; preds = %100, %82
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @PTE_A, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %143

108:                                              ; preds = %103
  %109 = load i64, i64* %13, align 8
  %110 = load i64, i64* @PAGE_SHIFT, align 8
  %111 = lshr i64 %109, %110
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @L2_SHIFT, align 8
  %116 = lshr i64 %114, %115
  %117 = xor i64 %111, %116
  %118 = load i64, i64* %8, align 8
  %119 = xor i64 %117, %118
  %120 = load i32, i32* @Ln_ENTRIES, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = and i64 %119, %122
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %139

125:                                              ; preds = %108
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @PTE_SW_WIRED, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %125
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* @PTE_A, align 4
  %133 = call i32 @pmap_clear_bits(i32* %131, i32 %132)
  %134 = load i64, i64* %8, align 8
  %135 = load i64, i64* %14, align 8
  %136 = call i32 @pmap_invalidate_page(i64 %134, i64 %135)
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %142

139:                                              ; preds = %125, %108
  %140 = load i32, i32* %17, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %17, align 4
  br label %142

142:                                              ; preds = %139, %130
  br label %143

143:                                              ; preds = %142, %103
  %144 = load i64, i64* %8, align 8
  %145 = call i32 @PMAP_UNLOCK(i64 %144)
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %147 = icmp ne %struct.TYPE_14__* %146, null
  br i1 %147, label %148, label %168

148:                                              ; preds = %143
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %150 = load i32, i32* @pv_next, align 4
  %151 = call i32* @TAILQ_NEXT(%struct.TYPE_14__* %149, i32 %150)
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %168

153:                                              ; preds = %148
  %154 = load %struct.md_page*, %struct.md_page** %4, align 8
  %155 = getelementptr inbounds %struct.md_page, %struct.md_page* %154, i32 0, i32 1
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %157 = load i32, i32* @pv_next, align 4
  %158 = call i32 @TAILQ_REMOVE(i32* %155, %struct.TYPE_14__* %156, i32 %157)
  %159 = load %struct.md_page*, %struct.md_page** %4, align 8
  %160 = getelementptr inbounds %struct.md_page, %struct.md_page* %159, i32 0, i32 1
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %162 = load i32, i32* @pv_next, align 4
  %163 = call i32 @TAILQ_INSERT_TAIL(i32* %160, %struct.TYPE_14__* %161, i32 %162)
  %164 = load %struct.md_page*, %struct.md_page** %4, align 8
  %165 = getelementptr inbounds %struct.md_page, %struct.md_page* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %153, %148, %143
  %169 = load i32, i32* %15, align 4
  %170 = load i32, i32* %17, align 4
  %171 = add nsw i32 %169, %170
  %172 = load i32, i32* @PMAP_TS_REFERENCED_MAX, align 4
  %173 = icmp sge i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  br label %325

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %175
  %177 = load %struct.md_page*, %struct.md_page** %4, align 8
  %178 = getelementptr inbounds %struct.md_page, %struct.md_page* %177, i32 0, i32 1
  %179 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %178)
  store %struct.TYPE_14__* %179, %struct.TYPE_14__** %6, align 8
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %181 = icmp ne %struct.TYPE_14__* %179, %180
  br i1 %181, label %57, label %182

182:                                              ; preds = %176
  br label %183

183:                                              ; preds = %182, %54
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %186)
  store %struct.TYPE_14__* %187, %struct.TYPE_14__** %7, align 8
  %188 = icmp eq %struct.TYPE_14__* %187, null
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  br label %325

190:                                              ; preds = %183
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_14__* %191, %struct.TYPE_14__** %6, align 8
  br label %192

192:                                              ; preds = %322, %190
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %194 = call i64 @PV_PMAP(%struct.TYPE_14__* %193)
  store i64 %194, i64* %8, align 8
  %195 = load i64, i64* %8, align 8
  %196 = call i32 @PMAP_TRYLOCK(i64 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %228, label %198

198:                                              ; preds = %192
  %199 = load %struct.md_page*, %struct.md_page** %4, align 8
  %200 = getelementptr inbounds %struct.md_page, %struct.md_page* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %18, align 4
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %16, align 4
  %206 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %207 = call i32 @rw_wunlock(%struct.rwlock* %206)
  %208 = load i64, i64* %8, align 8
  %209 = call i32 @PMAP_LOCK(i64 %208)
  %210 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %211 = call i32 @rw_wlock(%struct.rwlock* %210)
  %212 = load i32, i32* %18, align 4
  %213 = load %struct.md_page*, %struct.md_page** %4, align 8
  %214 = getelementptr inbounds %struct.md_page, %struct.md_page* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %212, %215
  br i1 %216, label %224, label %217

217:                                              ; preds = %198
  %218 = load i32, i32* %16, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %218, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %217, %198
  %225 = load i64, i64* %8, align 8
  %226 = call i32 @PMAP_UNLOCK(i64 %225)
  br label %49

227:                                              ; preds = %217
  br label %228

228:                                              ; preds = %227, %192
  %229 = load i64, i64* %8, align 8
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = call i32* @pmap_l2(i64 %229, i64 %232)
  store i32* %233, i32** %9, align 8
  %234 = load i32*, i32** %9, align 8
  %235 = call i32 @pmap_load(i32* %234)
  %236 = load i32, i32* @PTE_RX, align 4
  %237 = and i32 %235, %236
  %238 = icmp eq i32 %237, 0
  %239 = zext i1 %238 to i32
  %240 = call i32 @KASSERT(i32 %239, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %241 = load i32*, i32** %9, align 8
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = call i32* @pmap_l2_to_l3(i32* %241, i64 %244)
  store i32* %245, i32** %11, align 8
  %246 = load i32*, i32** %11, align 8
  %247 = call i32 @pmap_load(i32* %246)
  store i32 %247, i32* %12, align 4
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @PTE_D, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %228
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %254 = call i32 @vm_page_dirty(%struct.TYPE_13__* %253)
  br label %255

255:                                              ; preds = %252, %228
  %256 = load i32, i32* %12, align 4
  %257 = load i32, i32* @PTE_A, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %280

260:                                              ; preds = %255
  %261 = load i32, i32* %12, align 4
  %262 = load i32, i32* @PTE_SW_WIRED, align 4
  %263 = and i32 %261, %262
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %260
  %266 = load i32*, i32** %11, align 8
  %267 = load i32, i32* @PTE_A, align 4
  %268 = call i32 @pmap_clear_bits(i32* %266, i32 %267)
  %269 = load i64, i64* %8, align 8
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i32 @pmap_invalidate_page(i64 %269, i64 %272)
  %274 = load i32, i32* %15, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %15, align 4
  br label %279

276:                                              ; preds = %260
  %277 = load i32, i32* %17, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %17, align 4
  br label %279

279:                                              ; preds = %276, %265
  br label %280

280:                                              ; preds = %279, %255
  %281 = load i64, i64* %8, align 8
  %282 = call i32 @PMAP_UNLOCK(i64 %281)
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %284 = icmp ne %struct.TYPE_14__* %283, null
  br i1 %284, label %285, label %308

285:                                              ; preds = %280
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %287 = load i32, i32* @pv_next, align 4
  %288 = call i32* @TAILQ_NEXT(%struct.TYPE_14__* %286, i32 %287)
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %308

290:                                              ; preds = %285
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %295 = load i32, i32* @pv_next, align 4
  %296 = call i32 @TAILQ_REMOVE(i32* %293, %struct.TYPE_14__* %294, i32 %295)
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 1
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %301 = load i32, i32* @pv_next, align 4
  %302 = call i32 @TAILQ_INSERT_TAIL(i32* %299, %struct.TYPE_14__* %300, i32 %301)
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %290, %285, %280
  br label %309

309:                                              ; preds = %308
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 1
  %313 = call %struct.TYPE_14__* @TAILQ_FIRST(i32* %312)
  store %struct.TYPE_14__* %313, %struct.TYPE_14__** %6, align 8
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %315 = icmp ne %struct.TYPE_14__* %313, %314
  br i1 %315, label %316, label %322

316:                                              ; preds = %309
  %317 = load i32, i32* %15, align 4
  %318 = load i32, i32* %17, align 4
  %319 = add nsw i32 %317, %318
  %320 = load i32, i32* @PMAP_TS_REFERENCED_MAX, align 4
  %321 = icmp slt i32 %319, %320
  br label %322

322:                                              ; preds = %316, %309
  %323 = phi i1 [ false, %309 ], [ %321, %316 ]
  br i1 %323, label %192, label %324

324:                                              ; preds = %322
  br label %325

325:                                              ; preds = %324, %189, %174
  %326 = load %struct.rwlock*, %struct.rwlock** %5, align 8
  %327 = call i32 @rw_wunlock(%struct.rwlock* %326)
  %328 = call i32 @rw_runlock(i32* @pvh_global_lock)
  %329 = call i32 @vm_page_free_pages_toq(%struct.spglist* %3, i32 0)
  %330 = load i32, i32* %15, align 4
  %331 = load i32, i32* %17, align 4
  %332 = add nsw i32 %330, %331
  ret i32 %332
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.spglist*) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(%struct.TYPE_13__*) #1

declare dso_local %struct.md_page* @pa_to_pvh(i64) #1

declare dso_local %struct.rwlock* @PHYS_TO_PV_LIST_LOCK(i64) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @rw_wlock(%struct.rwlock*) #1

declare dso_local %struct.TYPE_14__* @TAILQ_FIRST(i32*) #1

declare dso_local i64 @PV_PMAP(%struct.TYPE_14__*) #1

declare dso_local i32 @PMAP_TRYLOCK(i64) #1

declare dso_local i32 @rw_wunlock(%struct.rwlock*) #1

declare dso_local i32 @PMAP_LOCK(i64) #1

declare dso_local i32 @PMAP_UNLOCK(i64) #1

declare dso_local i32* @pmap_l2(i64, i64) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @vm_page_dirty(%struct.TYPE_13__*) #1

declare dso_local i32 @pmap_clear_bits(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i64, i64) #1

declare dso_local i32* @TAILQ_NEXT(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i64) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @vm_page_free_pages_toq(%struct.spglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
