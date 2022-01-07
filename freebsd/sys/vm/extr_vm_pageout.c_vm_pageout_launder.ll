; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_launder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_launder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_domain = type { %struct.vm_pagequeue*, %struct.TYPE_26__* }
%struct.vm_pagequeue = type { i32 }
%struct.TYPE_26__ = type { i32, i32, i64, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64, i32, i64 }
%struct.scan_state = type { i32 }
%struct.mtx = type { i32 }

@swapdev_enabled = common dso_local global i32 0, align 4
@PQ_UNSWAPPABLE = common dso_local global i32 0, align 4
@PQ_LAUNDRY = common dso_local global i32 0, align 4
@PG_MARKER = common dso_local global i32 0, align 4
@PGA_REQUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"page %p does not belong to %p\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"page %p is mapped\00", align 1
@PGA_REFERENCED = common dso_local global i32 0, align 4
@v_reactivated = common dso_local global i32 0, align 4
@ACT_ADVANCE = common dso_local global i64 0, align 8
@OBJ_DEAD = common dso_local global i32 0, align 4
@v_dfree = common dso_local global i32 0, align 4
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJT_DEFAULT = common dso_local global i64 0, align 8
@disable_swap_pageouts = common dso_local global i64 0, align 8
@EDEADLK = common dso_local global i32 0, align 4
@pageout_lock_miss = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_domain*, i32, i32)* @vm_pageout_launder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_pageout_launder(%struct.vm_domain* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scan_state, align 4
  %8 = alloca %struct.vm_pagequeue*, align 8
  %9 = alloca %struct.mtx*, align 8
  %10 = alloca %struct.TYPE_27__*, align 8
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vm_domain* %0, %struct.vm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.mtx* null, %struct.mtx** %9, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %21 = call i64 @atomic_load_acq_int(i32* @swapdev_enabled)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @PQ_UNSWAPPABLE, align 4
  store i32 %24, i32* %16, align 4
  br label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @PQ_LAUNDRY, align 4
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %360, %27
  %29 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %30 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %29, i32 0, i32 1
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  %32 = load i32, i32* %16, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %31, i64 %33
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %12, align 8
  %35 = load %struct.vm_domain*, %struct.vm_domain** %4, align 8
  %36 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %35, i32 0, i32 0
  %37 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %36, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %37, i64 %39
  store %struct.vm_pagequeue* %40, %struct.vm_pagequeue** %8, align 8
  %41 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %8, align 8
  %42 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %41)
  %43 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %8, align 8
  %44 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %45 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %8, align 8
  %46 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vm_pageout_init_scan(%struct.scan_state* %7, %struct.vm_pagequeue* %43, %struct.TYPE_26__* %44, i32* null, i32 %47)
  br label %49

49:                                               ; preds = %335, %302, %256, %233, %225, %155, %149, %134, %92, %84, %76, %67, %28
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call %struct.TYPE_26__* @vm_pageout_next(%struct.scan_state* %7, i32 0)
  store %struct.TYPE_26__* %53, %struct.TYPE_26__** %11, align 8
  %54 = icmp ne %struct.TYPE_26__* %53, null
  br label %55

55:                                               ; preds = %52, %49
  %56 = phi i1 [ false, %49 ], [ %54, %52 ]
  br i1 %56, label %57, label %336

57:                                               ; preds = %55
  %58 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @PG_MARKER, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i64 @__predict_false(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %49

68:                                               ; preds = %57
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %70 = call i32 @vm_page_change_lock(%struct.TYPE_26__* %69, %struct.mtx** %9)
  br label %71

71:                                               ; preds = %118, %68
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %73 = call i32 @vm_page_queue(%struct.TYPE_26__* %72)
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %49

77:                                               ; preds = %71
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @PGA_REQUEUE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @vm_page_pqbatch_submit(%struct.TYPE_26__* %85, i32 %86)
  br label %49

88:                                               ; preds = %77
  %89 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %90 = call i32 @vm_page_wired(%struct.TYPE_26__* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %94 = call i32 @vm_page_dequeue_deferred(%struct.TYPE_26__* %93)
  br label %49

95:                                               ; preds = %88
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %98, align 8
  %100 = icmp ne %struct.TYPE_27__* %96, %99
  br i1 %100, label %101, label %126

101:                                              ; preds = %95
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %103 = icmp ne %struct.TYPE_27__* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %106 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__* %105)
  br label %107

107:                                              ; preds = %104, %101
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 4
  %110 = call i64 @atomic_load_ptr(%struct.TYPE_27__** %109)
  %111 = inttoptr i64 %110 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %111, %struct.TYPE_27__** %10, align 8
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %113 = icmp ne %struct.TYPE_27__* %112, null
  br i1 %113, label %114, label %125

114:                                              ; preds = %107
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %116 = call i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_27__* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %114
  %119 = load %struct.mtx*, %struct.mtx** %9, align 8
  %120 = call i32 @mtx_unlock(%struct.mtx* %119)
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %122 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__* %121)
  %123 = load %struct.mtx*, %struct.mtx** %9, align 8
  %124 = call i32 @mtx_lock(%struct.mtx* %123)
  br label %71

125:                                              ; preds = %114, %107
  br label %126

126:                                              ; preds = %125, %95
  %127 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %128, align 8
  %130 = icmp eq %struct.TYPE_27__* %129, null
  %131 = zext i1 %130 to i32
  %132 = call i64 @__predict_false(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %49

135:                                              ; preds = %126
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_27__*, %struct.TYPE_27__** %137, align 8
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %140 = icmp eq %struct.TYPE_27__* %138, %139
  %141 = zext i1 %140 to i32
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %144 = bitcast %struct.TYPE_27__* %143 to i8*
  %145 = call i32 @KASSERT(i32 %141, i8* %144)
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %147 = call i64 @vm_page_tryxbusy(%struct.TYPE_26__* %146)
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  br label %49

150:                                              ; preds = %135
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %152 = call i32 @vm_page_wired(%struct.TYPE_26__* %151)
  %153 = call i64 @__predict_false(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %157 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %156)
  %158 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %159 = call i32 @vm_page_dequeue_deferred(%struct.TYPE_26__* %158)
  br label %49

160:                                              ; preds = %150
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %162 = call i64 @vm_page_none_valid(%struct.TYPE_26__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %160
  br label %268

165:                                              ; preds = %160
  %166 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %167 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %172 = call i32 @pmap_ts_referenced(%struct.TYPE_26__* %171)
  store i32 %172, i32* %13, align 4
  br label %182

173:                                              ; preds = %165
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %175 = call i32 @pmap_page_is_mapped(%struct.TYPE_26__* %174)
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %180 = bitcast %struct.TYPE_26__* %179 to i8*
  %181 = call i32 @KASSERT(i32 %178, i8* %180)
  store i32 0, i32* %13, align 4
  br label %182

182:                                              ; preds = %173, %170
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @PGA_REFERENCED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %191 = load i32, i32* @PGA_REFERENCED, align 4
  %192 = call i32 @vm_page_aflag_clear(%struct.TYPE_26__* %190, i32 %191)
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %189, %182
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %240

198:                                              ; preds = %195
  %199 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %200 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %226

203:                                              ; preds = %198
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %205 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %204)
  %206 = load i32, i32* @v_reactivated, align 4
  %207 = call i32 @VM_CNT_INC(i32 %206)
  %208 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %209 = call i32 @vm_page_activate(%struct.TYPE_26__* %208)
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* @ACT_ADVANCE, align 8
  %213 = add nsw i64 %211, %212
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %213
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 8
  %220 = load i32, i32* %6, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %225, label %222

222:                                              ; preds = %203
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %222, %203
  br label %49

226:                                              ; preds = %198
  %227 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @OBJ_DEAD, align 4
  %231 = and i32 %229, %230
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %238

233:                                              ; preds = %226
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %235 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %234)
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %237 = call i32 @vm_page_requeue(%struct.TYPE_26__* %236)
  br label %49

238:                                              ; preds = %226
  br label %239

239:                                              ; preds = %238
  br label %240

240:                                              ; preds = %239, %195
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %262

245:                                              ; preds = %240
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %247 = call i32 @vm_page_test_dirty(%struct.TYPE_26__* %246)
  %248 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %245
  %253 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %254 = call i32 @vm_page_try_remove_all(%struct.TYPE_26__* %253)
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %252
  %257 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %258 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %257)
  %259 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %260 = call i32 @vm_page_dequeue_deferred(%struct.TYPE_26__* %259)
  br label %49

261:                                              ; preds = %252, %245
  br label %262

262:                                              ; preds = %261, %240
  %263 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %273

267:                                              ; preds = %262
  br label %268

268:                                              ; preds = %267, %164
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %270 = call i32 @vm_page_free(%struct.TYPE_26__* %269)
  %271 = load i32, i32* @v_dfree, align 4
  %272 = call i32 @VM_CNT_INC(i32 %271)
  br label %335

273:                                              ; preds = %262
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @OBJ_DEAD, align 4
  %278 = and i32 %276, %277
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %331

280:                                              ; preds = %273
  %281 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %281, i32 0, i32 2
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @OBJT_SWAP, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %280
  %287 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @OBJT_DEFAULT, align 8
  %291 = icmp ne i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %286
  store i32 1, i32* %19, align 4
  br label %299

293:                                              ; preds = %286, %280
  %294 = load i64, i64* @disable_swap_pageouts, align 8
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  store i32 0, i32* %19, align 4
  br label %298

297:                                              ; preds = %293
  store i32 1, i32* %19, align 4
  br label %298

298:                                              ; preds = %297, %296
  br label %299

299:                                              ; preds = %298, %292
  %300 = load i32, i32* %19, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %307, label %302

302:                                              ; preds = %299
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %304 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %303)
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %306 = call i32 @vm_page_requeue(%struct.TYPE_26__* %305)
  br label %49

307:                                              ; preds = %299
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %309 = call i32 @vm_pageout_clean(%struct.TYPE_26__* %308, i32* %15)
  store i32 %309, i32* %14, align 4
  %310 = load i32, i32* %14, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %307
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %5, align 4
  %315 = sub nsw i32 %314, %313
  store i32 %315, i32* %5, align 4
  %316 = load i32, i32* %15, align 4
  %317 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %7, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, %316
  store i32 %319, i32* %317, align 4
  br label %330

320:                                              ; preds = %307
  %321 = load i32, i32* %14, align 4
  %322 = load i32, i32* @EDEADLK, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %320
  %325 = load i32, i32* @pageout_lock_miss, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* @pageout_lock_miss, align 4
  %327 = load i32, i32* %18, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %18, align 4
  br label %329

329:                                              ; preds = %324, %320
  br label %330

330:                                              ; preds = %329, %312
  store %struct.mtx* null, %struct.mtx** %9, align 8
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  br label %334

331:                                              ; preds = %273
  %332 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %333 = call i32 @vm_page_xunbusy(%struct.TYPE_26__* %332)
  br label %334

334:                                              ; preds = %331, %330
  br label %335

335:                                              ; preds = %334, %268
  br label %49

336:                                              ; preds = %55
  %337 = load %struct.mtx*, %struct.mtx** %9, align 8
  %338 = icmp ne %struct.mtx* %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load %struct.mtx*, %struct.mtx** %9, align 8
  %341 = call i32 @mtx_unlock(%struct.mtx* %340)
  store %struct.mtx* null, %struct.mtx** %9, align 8
  br label %342

342:                                              ; preds = %339, %336
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %344 = icmp ne %struct.TYPE_27__* %343, null
  br i1 %344, label %345, label %348

345:                                              ; preds = %342
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %10, align 8
  %347 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__* %346)
  store %struct.TYPE_27__* null, %struct.TYPE_27__** %10, align 8
  br label %348

348:                                              ; preds = %345, %342
  %349 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %8, align 8
  %350 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %349)
  %351 = call i32 @vm_pageout_end_scan(%struct.scan_state* %7)
  %352 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %8, align 8
  %353 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %352)
  %354 = load i32, i32* %5, align 4
  %355 = icmp sgt i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %348
  %357 = load i32, i32* %16, align 4
  %358 = load i32, i32* @PQ_UNSWAPPABLE, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %362

360:                                              ; preds = %356
  %361 = load i32, i32* @PQ_LAUNDRY, align 4
  store i32 %361, i32* %16, align 4
  br label %28

362:                                              ; preds = %356, %348
  %363 = load i32, i32* %18, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = load i32, i32* %5, align 4
  %367 = icmp sgt i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = call i32 (...) @speedup_syncer()
  br label %370

370:                                              ; preds = %368, %365, %362
  %371 = load i32, i32* %17, align 4
  %372 = load i32, i32* %5, align 4
  %373 = sub nsw i32 %371, %372
  ret i32 %373
}

declare dso_local i64 @atomic_load_acq_int(i32*) #1

declare dso_local i32 @vm_pagequeue_lock(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_pageout_init_scan(%struct.scan_state*, %struct.vm_pagequeue*, %struct.TYPE_26__*, i32*, i32) #1

declare dso_local %struct.TYPE_26__* @vm_pageout_next(%struct.scan_state*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vm_page_change_lock(%struct.TYPE_26__*, %struct.mtx**) #1

declare dso_local i32 @vm_page_queue(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_pqbatch_submit(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @vm_page_wired(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_dequeue_deferred(%struct.TYPE_26__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_27__*) #1

declare dso_local i64 @atomic_load_ptr(%struct.TYPE_27__**) #1

declare dso_local i32 @VM_OBJECT_TRYWLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_27__*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_26__*) #1

declare dso_local i64 @vm_page_none_valid(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_ts_referenced(%struct.TYPE_26__*) #1

declare dso_local i32 @pmap_page_is_mapped(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_requeue(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_test_dirty(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_try_remove_all(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_page_free(%struct.TYPE_26__*) #1

declare dso_local i32 @vm_pageout_clean(%struct.TYPE_26__*, i32*) #1

declare dso_local i32 @vm_pageout_end_scan(%struct.scan_state*) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

declare dso_local i32 @speedup_syncer(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
