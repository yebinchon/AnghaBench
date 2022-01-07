; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_populate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_fault.c_vm_fault_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.faultstate = type { i32, i64, i64, %struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_23__*, %struct.TYPE_28__* }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i32*, i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.mtx = type { i32 }

@VM_PAGER_BAD = common dso_local global i32 0, align 4
@KERN_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@KERN_NOT_RECEIVER = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@pagesizes = common dso_local global i32* null, align 8
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_FAULT_WIRE = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_24__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.faultstate*, i32, i32, i32, i64, %struct.TYPE_27__**)* @vm_fault_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_fault_populate(%struct.faultstate* %0, i32 %1, i32 %2, i32 %3, i64 %4, %struct.TYPE_27__** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.faultstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_27__**, align 8
  %14 = alloca %struct.mtx*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_27__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.faultstate* %0, %struct.faultstate** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_27__** %5, %struct.TYPE_27__*** %13, align 8
  %26 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %27 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %26, i32 0, i32 6
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %27, align 8
  %29 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %30 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %29, i32 0, i32 3
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %30, align 8
  %32 = icmp eq %struct.TYPE_28__* %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @MPASS(i32 %33)
  %35 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %36 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %35, i32 0, i32 3
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %36, align 8
  %38 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_28__* %37)
  %39 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %40 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %39, i32 0, i32 3
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @REFCOUNT_COUNT(i32 %43)
  %45 = icmp sgt i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @MPASS(i32 %46)
  %48 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %49 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %48, i32 0, i32 3
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = call i32 @MPASS(i32 %54)
  %56 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %57 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @MPASS(i32 %58)
  %60 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %61 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %60, i32 0, i32 5
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @OFF_TO_IDX(i32 %64)
  store i64 %65, i64* %19, align 8
  %66 = load i64, i64* %19, align 8
  %67 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %68 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %67, i32 0, i32 5
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %73 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %72, i32 0, i32 5
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = sub nsw i32 %71, %76
  %78 = call i32 @atop(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %66, %79
  %81 = sub nsw i64 %80, 1
  store i64 %81, i64* %20, align 8
  %82 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %83 = call i32 @unlock_map(%struct.faultstate* %82)
  %84 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %85 = call i32 @unlock_vp(%struct.faultstate* %84)
  %86 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %87 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %86, i32 0, i32 3
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %87, align 8
  %89 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %90 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %94 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %93, i32 0, i32 5
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @vm_pager_populate(%struct.TYPE_28__* %88, i64 %91, i32 %92, i32 %97, i64* %19, i64* %20)
  store i32 %98, i32* %25, align 4
  %99 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %100 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %99, i32 0, i32 3
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %100, align 8
  %102 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_28__* %101)
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* @VM_PAGER_BAD, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %6
  %107 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %108 = call i32 @vm_fault_restore_map_lock(%struct.faultstate* %107)
  %109 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %110 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %109, i32 0, i32 4
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %115 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %119, i32* %7, align 4
  br label %479

120:                                              ; preds = %106
  %121 = load i32, i32* @KERN_NOT_RECEIVER, align 4
  store i32 %121, i32* %7, align 4
  br label %479

122:                                              ; preds = %6
  %123 = load i32, i32* %25, align 4
  %124 = load i32, i32* @VM_PAGER_OK, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %127, i32* %7, align 4
  br label %479

128:                                              ; preds = %122
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* %20, align 8
  %131 = icmp sle i64 %129, %130
  %132 = zext i1 %131 to i32
  %133 = call i32 @MPASS(i32 %132)
  %134 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %135 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %20, align 8
  %138 = icmp sle i64 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @MPASS(i32 %139)
  %141 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %142 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* %19, align 8
  %145 = icmp sge i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @MPASS(i32 %146)
  %148 = load i64, i64* %20, align 8
  %149 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %150 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %149, i32 0, i32 3
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %148, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @MPASS(i32 %155)
  %157 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %158 = call i32 @vm_fault_restore_map_lock(%struct.faultstate* %157)
  %159 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %160 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %159, i32 0, i32 4
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %165 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %128
  %169 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %170 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %169, i32 0, i32 3
  %171 = load %struct.TYPE_28__*, %struct.TYPE_28__** %170, align 8
  %172 = load i64, i64* %19, align 8
  %173 = load i64, i64* %20, align 8
  %174 = call i32 @vm_fault_populate_cleanup(%struct.TYPE_28__* %171, i64 %172, i64 %173)
  %175 = load i32, i32* @KERN_RESOURCE_SHORTAGE, align 4
  store i32 %175, i32* %7, align 4
  br label %479

176:                                              ; preds = %128
  %177 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %178 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %177, i32 0, i32 5
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @OFF_TO_IDX(i32 %181)
  store i64 %182, i64* %17, align 8
  %183 = load i64, i64* %17, align 8
  %184 = load i64, i64* %19, align 8
  %185 = icmp sgt i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %176
  %187 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %188 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %187, i32 0, i32 3
  %189 = load %struct.TYPE_28__*, %struct.TYPE_28__** %188, align 8
  %190 = load i64, i64* %19, align 8
  %191 = load i64, i64* %17, align 8
  %192 = sub nsw i64 %191, 1
  %193 = call i32 @vm_fault_populate_cleanup(%struct.TYPE_28__* %189, i64 %190, i64 %192)
  %194 = load i64, i64* %17, align 8
  store i64 %194, i64* %19, align 8
  br label %195

195:                                              ; preds = %186, %176
  %196 = load i64, i64* %17, align 8
  %197 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %198 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %197, i32 0, i32 5
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %203 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %202, i32 0, i32 5
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %201, %206
  %208 = call i32 @atop(i32 %207)
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %196, %209
  %211 = sub nsw i64 %210, 1
  store i64 %211, i64* %18, align 8
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* %20, align 8
  %214 = icmp slt i64 %212, %213
  br i1 %214, label %215, label %224

215:                                              ; preds = %195
  %216 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %217 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %216, i32 0, i32 3
  %218 = load %struct.TYPE_28__*, %struct.TYPE_28__** %217, align 8
  %219 = load i64, i64* %18, align 8
  %220 = add nsw i64 %219, 1
  %221 = load i64, i64* %20, align 8
  %222 = call i32 @vm_fault_populate_cleanup(%struct.TYPE_28__* %218, i64 %220, i64 %221)
  %223 = load i64, i64* %18, align 8
  store i64 %223, i64* %20, align 8
  br label %224

224:                                              ; preds = %215, %195
  %225 = load i64, i64* %19, align 8
  store i64 %225, i64* %21, align 8
  %226 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %227 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %226, i32 0, i32 3
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %227, align 8
  %229 = load i64, i64* %21, align 8
  %230 = call %struct.TYPE_27__* @vm_page_lookup(%struct.TYPE_28__* %228, i64 %229)
  store %struct.TYPE_27__* %230, %struct.TYPE_27__** %16, align 8
  br label %231

231:                                              ; preds = %461, %224
  %232 = load i64, i64* %21, align 8
  %233 = load i64, i64* %20, align 8
  %234 = icmp sle i64 %232, %233
  br i1 %234, label %235, label %472

235:                                              ; preds = %231
  %236 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %237 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %236, i32 0, i32 5
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 4
  %241 = load i64, i64* %21, align 8
  %242 = call i32 @IDX_TO_OFF(i64 %241)
  %243 = add nsw i32 %240, %242
  %244 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %245 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %244, i32 0, i32 5
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = sub nsw i32 %243, %248
  store i32 %249, i32* %15, align 4
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  store i32 %252, i32* %24, align 4
  %253 = load i32, i32* %24, align 4
  %254 = icmp sgt i32 %253, 0
  br i1 %254, label %255, label %289

255:                                              ; preds = %235
  %256 = load i32, i32* %15, align 4
  %257 = load i32*, i32** @pagesizes, align 8
  %258 = load i32, i32* %24, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = sub nsw i32 %261, 1
  %263 = and i32 %256, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %288, label %265

265:                                              ; preds = %255
  %266 = load i64, i64* %21, align 8
  %267 = load i32*, i32** @pagesizes, align 8
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @OFF_TO_IDX(i32 %271)
  %273 = add nsw i64 %266, %272
  %274 = sub nsw i64 %273, 1
  %275 = load i64, i64* %20, align 8
  %276 = icmp sgt i64 %274, %275
  br i1 %276, label %288, label %277

277:                                              ; preds = %265
  %278 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %279 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %278, i32 0, i32 4
  %280 = load %struct.TYPE_26__*, %struct.TYPE_26__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @pmap_ps_enabled(i32 %282)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = load i64, i64* %12, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %285, %277, %265, %255
  store i32 0, i32* %24, align 4
  br label %289

289:                                              ; preds = %288, %285, %235
  %290 = load i32*, i32** @pagesizes, align 8
  %291 = load i32, i32* %24, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i32, i32* %290, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @atop(i32 %294)
  store i32 %295, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %296

296:                                              ; preds = %317, %289
  %297 = load i32, i32* %22, align 4
  %298 = load i32, i32* %23, align 4
  %299 = icmp slt i32 %297, %298
  br i1 %299, label %300, label %320

300:                                              ; preds = %296
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %302 = load i32, i32* %22, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %301, i64 %303
  %305 = call i32 @vm_fault_populate_check_page(%struct.TYPE_27__* %304)
  %306 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %307 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %306, i32 0, i32 5
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %307, align 8
  %309 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %310 = load i32, i32* %22, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %309, i64 %311
  %313 = load i32, i32* %9, align 4
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %11, align 4
  %316 = call i32 @vm_fault_dirty(%struct.TYPE_23__* %308, %struct.TYPE_27__* %312, i32 %313, i32 %314, i32 %315, i32 1)
  br label %317

317:                                              ; preds = %300
  %318 = load i32, i32* %22, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %22, align 4
  br label %296

320:                                              ; preds = %296
  %321 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %322 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %321, i32 0, i32 3
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %322, align 8
  %324 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_28__* %323)
  %325 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %326 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %325, i32 0, i32 4
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %15, align 4
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %10, align 4
  %334 = load i64, i64* %12, align 8
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %320
  %337 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  br label %339

338:                                              ; preds = %320
  br label %339

339:                                              ; preds = %338, %336
  %340 = phi i32 [ %337, %336 ], [ 0, %338 ]
  %341 = or i32 %333, %340
  %342 = load i32, i32* %24, align 4
  %343 = call i32 @pmap_enter(i32 %329, i32 %330, %struct.TYPE_27__* %331, i32 %332, i32 %341, i32 %342)
  store i32 %343, i32* %25, align 4
  %344 = load i32, i32* %24, align 4
  %345 = icmp sgt i32 %344, 0
  br i1 %345, label %346, label %389

346:                                              ; preds = %339
  %347 = load i32, i32* %25, align 4
  %348 = load i32, i32* @KERN_FAILURE, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %389

350:                                              ; preds = %346
  store i32 0, i32* %22, align 4
  br label %351

351:                                              ; preds = %385, %350
  %352 = load i32, i32* %22, align 4
  %353 = load i32, i32* %23, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %388

355:                                              ; preds = %351
  %356 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %357 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %356, i32 0, i32 4
  %358 = load %struct.TYPE_26__*, %struct.TYPE_26__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* %15, align 4
  %362 = load i32, i32* %22, align 4
  %363 = call i32 @ptoa(i32 %362)
  %364 = add nsw i32 %361, %363
  %365 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %366 = load i32, i32* %22, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %365, i64 %367
  %369 = load i32, i32* %9, align 4
  %370 = load i32, i32* %10, align 4
  %371 = load i64, i64* %12, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %355
  %374 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  br label %376

375:                                              ; preds = %355
  br label %376

376:                                              ; preds = %375, %373
  %377 = phi i32 [ %374, %373 ], [ 0, %375 ]
  %378 = or i32 %370, %377
  %379 = call i32 @pmap_enter(i32 %360, i32 %364, %struct.TYPE_27__* %368, i32 %369, i32 %378, i32 0)
  store i32 %379, i32* %25, align 4
  %380 = load i32, i32* %25, align 4
  %381 = load i32, i32* @KERN_SUCCESS, align 4
  %382 = icmp eq i32 %380, %381
  %383 = zext i1 %382 to i32
  %384 = call i32 @MPASS(i32 %383)
  br label %385

385:                                              ; preds = %376
  %386 = load i32, i32* %22, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %22, align 4
  br label %351

388:                                              ; preds = %351
  br label %389

389:                                              ; preds = %388, %346, %339
  %390 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %391 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %390, i32 0, i32 3
  %392 = load %struct.TYPE_28__*, %struct.TYPE_28__** %391, align 8
  %393 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_28__* %392)
  store %struct.mtx* null, %struct.mtx** %14, align 8
  store i32 0, i32* %22, align 4
  br label %394

394:                                              ; preds = %451, %389
  %395 = load i32, i32* %22, align 4
  %396 = load i32, i32* %23, align 4
  %397 = icmp slt i32 %395, %396
  br i1 %397, label %398, label %454

398:                                              ; preds = %394
  %399 = load i32, i32* %11, align 4
  %400 = load i32, i32* @VM_FAULT_WIRE, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %409

403:                                              ; preds = %398
  %404 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %405 = load i32, i32* %22, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i64 %406
  %408 = call i32 @vm_page_wire(%struct.TYPE_27__* %407)
  br label %420

409:                                              ; preds = %398
  %410 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %411 = load i32, i32* %22, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %410, i64 %412
  %414 = call i32 @vm_page_change_lock(%struct.TYPE_27__* %413, %struct.mtx** %14)
  %415 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %416 = load i32, i32* %22, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %415, i64 %417
  %419 = call i32 @vm_page_activate(%struct.TYPE_27__* %418)
  br label %420

420:                                              ; preds = %409, %403
  %421 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  %422 = icmp ne %struct.TYPE_27__** %421, null
  br i1 %422, label %423, label %445

423:                                              ; preds = %420
  %424 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %425 = load i32, i32* %22, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %424, i64 %426
  %428 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.faultstate*, %struct.faultstate** %8, align 8
  %431 = getelementptr inbounds %struct.faultstate, %struct.faultstate* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = icmp eq i64 %429, %432
  br i1 %433, label %434, label %445

434:                                              ; preds = %423
  %435 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %436 = load i32, i32* %22, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %435, i64 %437
  %439 = load %struct.TYPE_27__**, %struct.TYPE_27__*** %13, align 8
  store %struct.TYPE_27__* %438, %struct.TYPE_27__** %439, align 8
  %440 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %441 = load i32, i32* %22, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %440, i64 %442
  %444 = call i32 @vm_page_wire(%struct.TYPE_27__* %443)
  br label %445

445:                                              ; preds = %434, %423, %420
  %446 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %447 = load i32, i32* %22, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %446, i64 %448
  %450 = call i32 @vm_page_xunbusy(%struct.TYPE_27__* %449)
  br label %451

451:                                              ; preds = %445
  %452 = load i32, i32* %22, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %22, align 4
  br label %394

454:                                              ; preds = %394
  %455 = load %struct.mtx*, %struct.mtx** %14, align 8
  %456 = icmp ne %struct.mtx* %455, null
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load %struct.mtx*, %struct.mtx** %14, align 8
  %459 = call i32 @mtx_unlock(%struct.mtx* %458)
  br label %460

460:                                              ; preds = %457, %454
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %23, align 4
  %463 = sext i32 %462 to i64
  %464 = load i64, i64* %21, align 8
  %465 = add nsw i64 %464, %463
  store i64 %465, i64* %21, align 8
  %466 = load %struct.TYPE_27__*, %struct.TYPE_27__** %16, align 8
  %467 = load i32, i32* %23, align 4
  %468 = sub nsw i32 %467, 1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %466, i64 %469
  %471 = call %struct.TYPE_27__* @vm_page_next(%struct.TYPE_27__* %470)
  store %struct.TYPE_27__* %471, %struct.TYPE_27__** %16, align 8
  br label %231

472:                                              ; preds = %231
  %473 = load %struct.TYPE_24__*, %struct.TYPE_24__** @curthread, align 8
  %474 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %473, i32 0, i32 0
  %475 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %475, align 4
  %478 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %478, i32* %7, align 4
  br label %479

479:                                              ; preds = %472, %168, %126, %120, %118
  %480 = load i32, i32* %7, align 4
  ret i32 %480
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_28__*) #1

declare dso_local i64 @REFCOUNT_COUNT(i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @unlock_map(%struct.faultstate*) #1

declare dso_local i32 @unlock_vp(%struct.faultstate*) #1

declare dso_local i32 @vm_pager_populate(%struct.TYPE_28__*, i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @vm_fault_restore_map_lock(%struct.faultstate*) #1

declare dso_local i32 @vm_fault_populate_cleanup(%struct.TYPE_28__*, i64, i64) #1

declare dso_local %struct.TYPE_27__* @vm_page_lookup(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @IDX_TO_OFF(i64) #1

declare dso_local i32 @pmap_ps_enabled(i32) #1

declare dso_local i32 @vm_fault_populate_check_page(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_fault_dirty(%struct.TYPE_23__*, %struct.TYPE_27__*, i32, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_28__*) #1

declare dso_local i32 @pmap_enter(i32, i32, %struct.TYPE_27__*, i32, i32, i32) #1

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_28__*) #1

declare dso_local i32 @vm_page_wire(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_page_change_lock(%struct.TYPE_27__*, %struct.mtx**) #1

declare dso_local i32 @vm_page_activate(%struct.TYPE_27__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_27__*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local %struct.TYPE_27__* @vm_page_next(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
