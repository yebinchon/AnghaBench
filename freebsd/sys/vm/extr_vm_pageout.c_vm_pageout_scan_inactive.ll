; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_scan_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_scan_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { i64, i32, %struct.vm_pagequeue*, %struct.TYPE_26__*, i32 }
%struct.vm_pagequeue = type { i64 }
%struct.TYPE_26__ = type { i32, i32, i64, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32 }
%struct.scan_state = type { %struct.vm_batchqueue }
%struct.vm_batchqueue = type { i32 }
%struct.mtx = type { i32 }

@PQ_INACTIVE = common dso_local global i64 0, align 8
@PG_MARKER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"marker page %p was dequeued\00", align 1
@PGA_ENQUEUED = common dso_local global i32 0, align 4
@PGA_REQUEUE = common dso_local global i32 0, align 4
@PGA_REQUEUE_HEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"page %p does not belong to %p\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"page %p is mapped\00", align 1
@PGA_REFERENCED = common dso_local global i32 0, align 4
@v_reactivated = common dso_local global i32 0, align 4
@ACT_ADVANCE = common dso_local global i64 0, align 8
@OBJ_DEAD = common dso_local global i32 0, align 4
@PGA_QUEUE_STATE_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"page %p has queue state\00", align 1
@PQ_NONE = common dso_local global i32 0, align 4
@v_dfree = common dso_local global i32 0, align 4
@PQ_LAUNDRY = common dso_local global i64 0, align 8
@VM_LAUNDRY_IDLE = common dso_local global i64 0, align 8
@swapdev_enabled = common dso_local global i32 0, align 4
@VM_LAUNDRY_SHORTFALL = common dso_local global i64 0, align 8
@v_pdshortfalls = common dso_local global i32 0, align 4
@VM_LAUNDRY_BACKGROUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_domain*, i32, i32*)* @vm_pageout_scan_inactive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_pageout_scan_inactive(%struct.vm_domain* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.scan_state, align 4
  %8 = alloca %struct.vm_batchqueue, align 4
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.vm_pagequeue*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vm_domain* %0, %struct.vm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %20 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %19, i32 0, i32 4
  %21 = call i32 @atomic_readandclear_int(i32* %20)
  store i32 %21, i32* %16, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %16, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %17, align 4
  store i32 %24, i32* %18, align 4
  store %struct.mtx* null, %struct.mtx** %9, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %13, align 8
  %25 = call i32 @vm_batchqueue_init(%struct.vm_batchqueue* %8)
  %26 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %27 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %26, i32 0, i32 3
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  %29 = load i64, i64* @PQ_INACTIVE, align 8
  %30 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %28, i64 %29
  store %struct.TYPE_26__* %30, %struct.TYPE_26__** %11, align 8
  %31 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %32 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %31, i32 0, i32 2
  %33 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %32, align 8
  %34 = load i64, i64* @PQ_INACTIVE, align 8
  %35 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %33, i64 %34
  store %struct.vm_pagequeue* %35, %struct.vm_pagequeue** %12, align 8
  %36 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %37 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %36)
  %38 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %39 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %40 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %41 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @vm_pageout_init_scan(%struct.scan_state* %7, %struct.vm_pagequeue* %38, %struct.TYPE_26__* %39, i32* null, i64 %42)
  br label %44

44:                                               ; preds = %293, %292, %262, %250, %202, %154, %131, %89, %70, %3
  %45 = load i32, i32* %17, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = call %struct.TYPE_26__* @vm_pageout_next(%struct.scan_state* %7, i32 1)
  store %struct.TYPE_26__* %48, %struct.TYPE_26__** %10, align 8
  %49 = icmp ne %struct.TYPE_26__* %48, null
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  br i1 %51, label %52, label %296

52:                                               ; preds = %50
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PG_MARKER, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %61 = bitcast %struct.TYPE_26__* %60 to i8*
  %62 = call i32 @KASSERT(i32 %59, i8* %61)
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %64 = call i32 @vm_page_change_lock(%struct.TYPE_26__* %63, %struct.mtx** %9)
  br label %65

65:                                               ; preds = %115, %52
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %67 = call i64 @vm_page_queue(%struct.TYPE_26__* %66)
  %68 = load i64, i64* @PQ_INACTIVE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %44

73:                                               ; preds = %65
  %74 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @PGA_ENQUEUED, align 4
  %78 = load i32, i32* @PGA_REQUEUE, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @PGA_REQUEUE_HEAD, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %76, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %293

85:                                               ; preds = %73
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %87 = call i32 @vm_page_wired(%struct.TYPE_26__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %91 = call i32 @vm_page_dequeue_deferred(%struct.TYPE_26__* %90)
  br label %44

92:                                               ; preds = %85
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %94 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %94, i32 0, i32 5
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %95, align 8
  %97 = icmp ne %struct.TYPE_27__* %93, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %92
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %100 = icmp ne %struct.TYPE_27__* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %103 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 5
  %107 = call i64 @atomic_load_ptr(%struct.TYPE_27__** %106)
  %108 = inttoptr i64 %107 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %108, %struct.TYPE_27__** %13, align 8
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %110 = icmp ne %struct.TYPE_27__* %109, null
  br i1 %110, label %111, label %122

111:                                              ; preds = %104
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %113 = call i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_27__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = load %struct.mtx*, %struct.mtx** %9, align 8
  %117 = call i32 @mtx_unlock(%struct.mtx* %116)
  %118 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %119 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__* %118)
  %120 = load %struct.mtx*, %struct.mtx** %9, align 8
  %121 = call i32 @mtx_lock(%struct.mtx* %120)
  br label %65

122:                                              ; preds = %111, %104
  br label %123

123:                                              ; preds = %122, %92
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %125, align 8
  %127 = icmp eq %struct.TYPE_27__* %126, null
  %128 = zext i1 %127 to i32
  %129 = call i64 @__predict_false(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %123
  br label %44

132:                                              ; preds = %123
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 5
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %134, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %137 = icmp eq %struct.TYPE_27__* %135, %136
  %138 = zext i1 %137 to i32
  %139 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %140 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %141 = bitcast %struct.TYPE_27__* %140 to i8*
  %142 = call i32 @KASSERT(i32 %138, i8* %141)
  %143 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %144 = call i64 @vm_page_tryxbusy(%struct.TYPE_26__* %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %132
  %147 = load i32, i32* %15, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %15, align 4
  br label %293

149:                                              ; preds = %132
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %151 = call i32 @vm_page_wired(%struct.TYPE_26__* %150)
  %152 = call i64 @__predict_false(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %156 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %155)
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %158 = call i32 @vm_page_dequeue_deferred(%struct.TYPE_26__* %157)
  br label %44

159:                                              ; preds = %149
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %161 = call i64 @vm_page_none_valid(%struct.TYPE_26__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %262

164:                                              ; preds = %159
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %171 = call i32 @pmap_ts_referenced(%struct.TYPE_26__* %170)
  store i32 %171, i32* %14, align 4
  br label %181

172:                                              ; preds = %164
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %174 = call i32 @pmap_page_is_mapped(%struct.TYPE_26__* %173)
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %179 = bitcast %struct.TYPE_26__* %178 to i8*
  %180 = call i32 @KASSERT(i32 %177, i8* %179)
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %172, %169
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @PGA_REFERENCED, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %181
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %190 = load i32, i32* @PGA_REFERENCED, align 4
  %191 = call i32 @vm_page_aflag_clear(%struct.TYPE_26__* %189, i32 %190)
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %188, %181
  %195 = load i32, i32* %14, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %234

197:                                              ; preds = %194
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %219

202:                                              ; preds = %197
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %204 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %203)
  %205 = load i32, i32* @v_reactivated, align 4
  %206 = call i32 @VM_CNT_INC(i32 %205)
  %207 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %208 = call i32 @vm_page_activate(%struct.TYPE_26__* %207)
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = load i64, i64* @ACT_ADVANCE, align 8
  %212 = add nsw i64 %210, %211
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = add nsw i64 %216, %212
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %214, align 4
  br label %44

219:                                              ; preds = %197
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @OBJ_DEAD, align 4
  %224 = and i32 %222, %223
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %219
  %227 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %228 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %227)
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %230 = load i32, i32* @PGA_REQUEUE, align 4
  %231 = call i32 @vm_page_aflag_set(%struct.TYPE_26__* %229, i32 %230)
  br label %293

232:                                              ; preds = %219
  br label %233

233:                                              ; preds = %232
  br label %234

234:                                              ; preds = %233, %194
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %236 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %234
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %241 = call i32 @vm_page_test_dirty(%struct.TYPE_26__* %240)
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %239
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %248 = call i32 @vm_page_try_remove_all(%struct.TYPE_26__* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %255, label %250

250:                                              ; preds = %246
  %251 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %252 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %251)
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %254 = call i32 @vm_page_dequeue_deferred(%struct.TYPE_26__* %253)
  br label %44

255:                                              ; preds = %246, %239
  br label %256

256:                                              ; preds = %255, %234
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %257, i32 0, i32 2
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %280

261:                                              ; preds = %256
  br label %262

262:                                              ; preds = %261, %163
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @PGA_QUEUE_STATE_MASK, align 4
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  %269 = zext i1 %268 to i32
  %270 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %271 = bitcast %struct.TYPE_26__* %270 to i8*
  %272 = call i32 @KASSERT(i32 %269, i8* %271)
  %273 = load i32, i32* @PQ_NONE, align 4
  %274 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %274, i32 0, i32 3
  store i32 %273, i32* %275, align 8
  %276 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %277 = call i32 @vm_page_free(%struct.TYPE_26__* %276)
  %278 = load i32, i32* %17, align 4
  %279 = add nsw i32 %278, -1
  store i32 %279, i32* %17, align 4
  br label %44

280:                                              ; preds = %256
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %282 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %281)
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @OBJ_DEAD, align 4
  %287 = and i32 %285, %286
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %280
  %290 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %291 = call i32 @vm_page_launder(%struct.TYPE_26__* %290)
  br label %292

292:                                              ; preds = %289, %280
  br label %44

293:                                              ; preds = %226, %146, %84
  %294 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %295 = call i32 @vm_pageout_reinsert_inactive(%struct.scan_state* %7, %struct.vm_batchqueue* %8, %struct.TYPE_26__* %294)
  br label %44

296:                                              ; preds = %50
  %297 = load %struct.mtx*, %struct.mtx** %9, align 8
  %298 = icmp ne %struct.mtx* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load %struct.mtx*, %struct.mtx** %9, align 8
  %301 = call i32 @mtx_unlock(%struct.mtx* %300)
  br label %302

302:                                              ; preds = %299, %296
  %303 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %304 = icmp ne %struct.TYPE_27__* %303, null
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %307 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__* %306)
  br label %308

308:                                              ; preds = %305, %302
  %309 = call i32 @vm_pageout_reinsert_inactive(%struct.scan_state* %7, %struct.vm_batchqueue* %8, %struct.TYPE_26__* null)
  %310 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %7, i32 0, i32 0
  %311 = call i32 @vm_pageout_reinsert_inactive(%struct.scan_state* %7, %struct.vm_batchqueue* %310, %struct.TYPE_26__* null)
  %312 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %313 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %312)
  %314 = call i32 @vm_pageout_end_scan(%struct.scan_state* %7)
  %315 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %316 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %315)
  %317 = load i32, i32* @v_dfree, align 4
  %318 = load i32, i32* %18, align 4
  %319 = load i32, i32* %17, align 4
  %320 = sub nsw i32 %318, %319
  %321 = call i32 @VM_CNT_ADD(i32 %317, i32 %320)
  %322 = load i32, i32* %18, align 4
  %323 = icmp sgt i32 %322, 0
  br i1 %323, label %324, label %379

324:                                              ; preds = %308
  %325 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %326 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %325, i32 0, i32 2
  %327 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %326, align 8
  %328 = load i64, i64* @PQ_LAUNDRY, align 8
  %329 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %327, i64 %328
  store %struct.vm_pagequeue* %329, %struct.vm_pagequeue** %12, align 8
  %330 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %331 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %330)
  %332 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %333 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @VM_LAUNDRY_IDLE, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %369

337:                                              ; preds = %324
  %338 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %339 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = icmp sgt i64 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %337
  %343 = call i64 @atomic_load_acq_int(i32* @swapdev_enabled)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %369

345:                                              ; preds = %342, %337
  %346 = load i32, i32* %17, align 4
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load i64, i64* @VM_LAUNDRY_SHORTFALL, align 8
  %350 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %351 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %350, i32 0, i32 0
  store i64 %349, i64* %351, align 8
  %352 = load i32, i32* @v_pdshortfalls, align 4
  %353 = call i32 @VM_CNT_INC(i32 %352)
  br label %365

354:                                              ; preds = %345
  %355 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %356 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* @VM_LAUNDRY_SHORTFALL, align 8
  %359 = icmp ne i64 %357, %358
  br i1 %359, label %360, label %364

360:                                              ; preds = %354
  %361 = load i64, i64* @VM_LAUNDRY_BACKGROUND, align 8
  %362 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %363 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %362, i32 0, i32 0
  store i64 %361, i64* %363, align 8
  br label %364

364:                                              ; preds = %360, %354
  br label %365

365:                                              ; preds = %364, %348
  %366 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %367 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %366, i32 0, i32 0
  %368 = call i32 @wakeup(i64* %367)
  br label %369

369:                                              ; preds = %365, %342, %324
  %370 = load i32, i32* %18, align 4
  %371 = load i32, i32* %17, align 4
  %372 = sub nsw i32 %370, %371
  %373 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %374 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, %372
  store i32 %376, i32* %374, align 8
  %377 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %12, align 8
  %378 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %377)
  br label %379

379:                                              ; preds = %369, %308
  %380 = load i32, i32* %17, align 4
  %381 = icmp sgt i32 %380, 0
  br i1 %381, label %382, label %384

382:                                              ; preds = %379
  %383 = call i32 (...) @vm_swapout_run()
  br label %384

384:                                              ; preds = %382, %379
  %385 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %386 = load i32, i32* %17, align 4
  %387 = load i32, i32* %18, align 4
  %388 = call i32 @vm_pageout_mightbe_oom(%struct.vm_domain* %385, i32 %386, i32 %387)
  %389 = call i32 (...) @vm_swapout_run_idle()
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* %16, align 4
  %392 = add nsw i32 %390, %391
  %393 = load i32*, i32** %6, align 8
  store i32 %392, i32* %393, align 4
  %394 = load i32, i32* %17, align 4
  %395 = icmp sle i32 %394, 0
  %396 = zext i1 %395 to i32
  ret i32 %396
}

declare dso_local i32 @atomic_readandclear_int(i32*) #1

declare dso_local i32 @vm_batchqueue_init(%struct.vm_batchqueue*) #1

declare dso_local i32 @vm_pagequeue_lock(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_pageout_init_scan(%struct.scan_state*, %struct.vm_pagequeue*, %struct.TYPE_26__*, i32*, i64) #1

declare dso_local %struct.TYPE_26__* @vm_pageout_next(%struct.scan_state*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_page_change_lock(%struct.TYPE_26__*, %struct.mtx**) #1

declare dso_local i64 @vm_page_queue(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_wired(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_dequeue_deferred(%struct.TYPE_26__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__*) #1

declare dso_local i64 @atomic_load_ptr(%struct.TYPE_27__**) #1

declare dso_local i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_26__*) #1

declare dso_local i64 @vm_page_none_valid(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_ts_referenced(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_page_is_mapped(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_aflag_set(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @vm_page_test_dirty(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_try_remove_all(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_launder(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_pageout_reinsert_inactive(%struct.scan_state*, %struct.vm_batchqueue*, %struct.TYPE_26__*) #1

declare dso_local i32 @vm_pageout_end_scan(%struct.scan_state*) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @vm_swapout_run(...) #1

declare dso_local i32 @vm_pageout_mightbe_oom(%struct.vm_domain*, i32, i32) #1

declare dso_local i32 @vm_swapout_run_idle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
