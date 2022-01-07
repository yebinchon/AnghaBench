; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_scan_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_scan_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.vm_domain = type { i32, %struct.TYPE_20__*, %struct.vm_pagequeue*, %struct.TYPE_20__* }
%struct.vm_pagequeue = type { i64, i32 }
%struct.TYPE_20__ = type { i32, i32, i64, i64, i32 }
%struct.scan_state = type { i64 }
%struct.mtx = type { i32 }
%struct.TYPE_21__ = type { i64 }

@PQ_ACTIVE = common dso_local global i64 0, align 8
@ticks = common dso_local global i32 0, align 4
@vm_pageout_update_period = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@plinks = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@PG_MARKER = common dso_local global i32 0, align 4
@PGA_REFERENCED = common dso_local global i32 0, align 4
@ACT_ADVANCE = common dso_local global i64 0, align 8
@ACT_MAX = common dso_local global i64 0, align 8
@ACT_DECLINE = common dso_local global i32 0, align 4
@PQ_INACTIVE = common dso_local global i32 0, align 4
@act_scan_laundry_weight = common dso_local global i64 0, align 8
@PQ_LAUNDRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_domain*, i32)* @vm_pageout_scan_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_pageout_scan_active(%struct.vm_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.vm_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scan_state, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.vm_pagequeue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vm_domain* %0, %struct.vm_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %16 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %15, i32 0, i32 3
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %18 = load i64, i64* @PQ_ACTIVE, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i64 %18
  store %struct.TYPE_20__* %19, %struct.TYPE_20__** %9, align 8
  %20 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %21 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %20, i32 0, i32 2
  %22 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %21, align 8
  %23 = load i64, i64* @PQ_ACTIVE, align 8
  %24 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %22, i64 %23
  store %struct.vm_pagequeue* %24, %struct.vm_pagequeue** %10, align 8
  %25 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %26 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %25)
  %27 = load i32, i32* @ticks, align 4
  store i32 %27, i32* %14, align 4
  %28 = load i64, i64* @vm_pageout_update_period, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %2
  %31 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %32 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %36 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %34, %37
  %39 = sext i32 %38 to i64
  %40 = load i64, i64* %11, align 8
  %41 = mul nsw i64 %40, %39
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* @hz, align 8
  %43 = load i64, i64* @vm_pageout_update_period, align 8
  %44 = mul nsw i64 %42, %43
  %45 = load i64, i64* %11, align 8
  %46 = sdiv i64 %45, %44
  store i64 %46, i64* %11, align 8
  br label %48

47:                                               ; preds = %2
  store i64 0, i64* %11, align 8
  br label %48

48:                                               ; preds = %47, %30
  %49 = load i64, i64* %11, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %56 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54, %48
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %62 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %54, %51
  %64 = load i32, i32* %4, align 4
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %68 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  br label %72

70:                                               ; preds = %63
  %71 = load i64, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = phi i64 [ %69, %66 ], [ %71, %70 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  store %struct.mtx* null, %struct.mtx** %6, align 8
  br label %75

75:                                               ; preds = %97, %72
  %76 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %78 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %79 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %78, i32 0, i32 1
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i64 0
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @vm_pageout_init_scan(%struct.scan_state* %5, %struct.vm_pagequeue* %76, %struct.TYPE_20__* %77, %struct.TYPE_20__* %81, i32 %82)
  br label %84

84:                                               ; preds = %267, %175, %162, %157, %149, %75
  %85 = call %struct.TYPE_20__* @vm_pageout_next(%struct.scan_state* %5, i32 0)
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %8, align 8
  %86 = icmp ne %struct.TYPE_20__* %85, null
  br i1 %86, label %87, label %268

87:                                               ; preds = %84
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %89 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %90 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %89, i32 0, i32 1
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i64 1
  %93 = icmp eq %struct.TYPE_20__* %88, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @__predict_false(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %87
  %98 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %99 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %98)
  %100 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %101 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %100, i32 0, i32 1
  %102 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %103 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %102, i32 0, i32 1
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i64 0
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @plinks, i32 0, i32 0), align 4
  %107 = call i32 @TAILQ_REMOVE(i32* %101, %struct.TYPE_20__* %105, i32 %106)
  %108 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %109 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %108, i32 0, i32 1
  %110 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %111 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %110, i32 0, i32 1
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i64 1
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @plinks, i32 0, i32 0), align 4
  %115 = call i32 @TAILQ_REMOVE(i32* %109, %struct.TYPE_20__* %113, i32 %114)
  %116 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %117 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %116, i32 0, i32 1
  %118 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %119 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %118, i32 0, i32 1
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i64 0
  %122 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @plinks, i32 0, i32 0), align 4
  %123 = call i32 @TAILQ_INSERT_HEAD(i32* %117, %struct.TYPE_20__* %121, i32 %122)
  %124 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %125 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %124, i32 0, i32 1
  %126 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %127 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %126, i32 0, i32 1
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i64 1
  %130 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @plinks, i32 0, i32 0), align 4
  %131 = call i32 @TAILQ_INSERT_TAIL(i32* %125, %struct.TYPE_20__* %129, i32 %130)
  %132 = getelementptr inbounds %struct.scan_state, %struct.scan_state* %5, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = sub nsw i64 %135, %133
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %13, align 4
  %138 = call i32 @vm_pageout_end_scan(%struct.scan_state* %5)
  br label %75

139:                                              ; preds = %87
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @PG_MARKER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i32
  %147 = call i64 @__predict_false(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %139
  br label %84

150:                                              ; preds = %139
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %152 = call i32 @vm_page_change_lock(%struct.TYPE_20__* %151, %struct.mtx** %6)
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %154 = call i64 @vm_page_queue(%struct.TYPE_20__* %153)
  %155 = load i64, i64* @PQ_ACTIVE, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  br label %84

158:                                              ; preds = %150
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %160 = call i64 @vm_page_wired(%struct.TYPE_20__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %164 = call i32 @vm_page_dequeue_deferred(%struct.TYPE_20__* %163)
  br label %84

165:                                              ; preds = %158
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 4
  %168 = call i64 @atomic_load_ptr(i32* %167)
  %169 = inttoptr i64 %168 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %169, %struct.TYPE_21__** %7, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %171 = icmp eq %struct.TYPE_21__* %170, null
  %172 = zext i1 %171 to i32
  %173 = call i64 @__predict_false(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  br label %84

176:                                              ; preds = %165
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %176
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %183 = call i32 @pmap_ts_referenced(%struct.TYPE_20__* %182)
  store i32 %183, i32* %12, align 4
  br label %185

184:                                              ; preds = %176
  store i32 0, i32* %12, align 4
  br label %185

185:                                              ; preds = %184, %181
  %186 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @PGA_REFERENCED, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %185
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %194 = load i32, i32* @PGA_REFERENCED, align 4
  %195 = call i32 @vm_page_aflag_clear(%struct.TYPE_20__* %193, i32 %194)
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %192, %185
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %198
  %202 = load i64, i64* @ACT_ADVANCE, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %202, %204
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = add nsw i64 %208, %205
  store i64 %209, i64* %207, align 8
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ACT_MAX, align 8
  %214 = icmp sgt i64 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %201
  %216 = load i64, i64* @ACT_MAX, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 2
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %215, %201
  br label %230

220:                                              ; preds = %198
  %221 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* @ACT_DECLINE, align 4
  %225 = call i64 @min(i64 %223, i32 %224)
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = sub nsw i64 %228, %225
  store i64 %229, i64* %227, align 8
  br label %230

230:                                              ; preds = %220, %219
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %230
  %236 = load i32, i32* %4, align 4
  %237 = icmp sle i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %240 = load i64, i64* @PQ_ACTIVE, align 8
  %241 = load i32, i32* @PQ_INACTIVE, align 4
  %242 = call i32 @vm_page_swapqueue(%struct.TYPE_20__* %239, i64 %240, i32 %241)
  br label %266

243:                                              ; preds = %235
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %258

248:                                              ; preds = %243
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %250 = load i64, i64* @PQ_ACTIVE, align 8
  %251 = load i32, i32* @PQ_INACTIVE, align 4
  %252 = call i32 @vm_page_swapqueue(%struct.TYPE_20__* %249, i64 %250, i32 %251)
  %253 = load i64, i64* @act_scan_laundry_weight, align 8
  %254 = load i32, i32* %4, align 4
  %255 = sext i32 %254 to i64
  %256 = sub nsw i64 %255, %253
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %4, align 4
  br label %265

258:                                              ; preds = %243
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %260 = load i64, i64* @PQ_ACTIVE, align 8
  %261 = load i32, i32* @PQ_LAUNDRY, align 4
  %262 = call i32 @vm_page_swapqueue(%struct.TYPE_20__* %259, i64 %260, i32 %261)
  %263 = load i32, i32* %4, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %4, align 4
  br label %265

265:                                              ; preds = %258, %248
  br label %266

266:                                              ; preds = %265, %238
  br label %267

267:                                              ; preds = %266, %230
  br label %84

268:                                              ; preds = %84
  %269 = load %struct.mtx*, %struct.mtx** %6, align 8
  %270 = icmp ne %struct.mtx* %269, null
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load %struct.mtx*, %struct.mtx** %6, align 8
  %273 = call i32 @mtx_unlock(%struct.mtx* %272)
  store %struct.mtx* null, %struct.mtx** %6, align 8
  br label %274

274:                                              ; preds = %271, %268
  %275 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %276 = call i32 @vm_pagequeue_lock(%struct.vm_pagequeue* %275)
  %277 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %278 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %277, i32 0, i32 1
  %279 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %280 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %279, i32 0, i32 1
  %281 = load %struct.TYPE_20__*, %struct.TYPE_20__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %281, i64 0
  %283 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @plinks, i32 0, i32 0), align 4
  %284 = call i32 @TAILQ_REMOVE(i32* %278, %struct.TYPE_20__* %282, i32 %283)
  %285 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %286 = getelementptr inbounds %struct.vm_pagequeue, %struct.vm_pagequeue* %285, i32 0, i32 1
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %288 = load %struct.vm_domain*, %struct.vm_domain** %3, align 8
  %289 = getelementptr inbounds %struct.vm_domain, %struct.vm_domain* %288, i32 0, i32 1
  %290 = load %struct.TYPE_20__*, %struct.TYPE_20__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %290, i64 0
  %292 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @plinks, i32 0, i32 0), align 4
  %293 = call i32 @TAILQ_INSERT_AFTER(i32* %286, %struct.TYPE_20__* %287, %struct.TYPE_20__* %291, i32 %292)
  %294 = call i32 @vm_pageout_end_scan(%struct.scan_state* %5)
  %295 = load %struct.vm_pagequeue*, %struct.vm_pagequeue** %10, align 8
  %296 = call i32 @vm_pagequeue_unlock(%struct.vm_pagequeue* %295)
  ret void
}

declare dso_local i32 @vm_pagequeue_lock(%struct.vm_pagequeue*) #1

declare dso_local i32 @vm_pageout_init_scan(%struct.scan_state*, %struct.vm_pagequeue*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_20__* @vm_pageout_next(%struct.scan_state*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @vm_pageout_end_scan(%struct.scan_state*) #1

declare dso_local i32 @vm_page_change_lock(%struct.TYPE_20__*, %struct.mtx**) #1

declare dso_local i64 @vm_page_queue(%struct.TYPE_20__*) #1

declare dso_local i64 @vm_page_wired(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_dequeue_deferred(%struct.TYPE_20__*) #1

declare dso_local i64 @atomic_load_ptr(i32*) #1

declare dso_local i32 @pmap_ts_referenced(%struct.TYPE_20__*) #1

declare dso_local i32 @vm_page_aflag_clear(%struct.TYPE_20__*, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @vm_page_swapqueue(%struct.TYPE_20__*, i64, i32) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @TAILQ_INSERT_AFTER(i32*, %struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @vm_pagequeue_unlock(%struct.vm_pagequeue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
