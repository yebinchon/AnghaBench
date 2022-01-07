; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_bo_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }
%struct.ttm_buffer_object = type { void (%struct.ttm_buffer_object*)*, i32, i64, i32, i64, %struct.TYPE_6__*, %struct.sg_table*, %struct.vm_object*, %struct.TYPE_5__, i64, %struct.ttm_bo_device*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.TYPE_4__, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ttm_placement = type { i32 }
%struct.vm_object = type { i32 }
%struct.sg_table = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"[TTM] Out of kernel memory\0A\00", align 1
@M_TTM_BO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"[TTM] Illegal buffer object size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TTM_PL_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_SYSTEM = common dso_local global i32 0, align 4
@TTM_PL_FLAG_CACHED = common dso_local global i32 0, align 4
@ttm_bo_type_device = common dso_local global i64 0, align 8
@ttm_bo_type_sg = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_init(%struct.ttm_bo_device* %0, %struct.ttm_buffer_object* %1, i64 %2, i32 %3, %struct.ttm_placement* %4, i32 %5, i32 %6, %struct.vm_object* %7, i64 %8, %struct.sg_table* %9, void (%struct.ttm_buffer_object*)* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.ttm_bo_device*, align 8
  %14 = alloca %struct.ttm_buffer_object*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ttm_placement*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.vm_object*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.sg_table*, align 8
  %23 = alloca void (%struct.ttm_buffer_object*)*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca %struct.ttm_mem_global*, align 8
  store %struct.ttm_bo_device* %0, %struct.ttm_bo_device** %13, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %14, align 8
  store i64 %2, i64* %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.ttm_placement* %4, %struct.ttm_placement** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store %struct.vm_object* %7, %struct.vm_object** %20, align 8
  store i64 %8, i64* %21, align 8
  store %struct.sg_table* %9, %struct.sg_table** %22, align 8
  store void (%struct.ttm_buffer_object*)* %10, void (%struct.ttm_buffer_object*)** %23, align 8
  store i32 0, i32* %24, align 4
  %27 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %28 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %30, align 8
  store %struct.ttm_mem_global* %31, %struct.ttm_mem_global** %26, align 8
  %32 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %26, align 8
  %33 = load i64, i64* %21, align 8
  %34 = call i32 @ttm_mem_global_alloc(%struct.ttm_mem_global* %32, i64 %33, i32 0, i32 0)
  store i32 %34, i32* %24, align 4
  %35 = load i32, i32* %24, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %11
  %38 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %39 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %40 = icmp ne void (%struct.ttm_buffer_object*)* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  call void %42(%struct.ttm_buffer_object* %43)
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %46 = load i32, i32* @M_TTM_BO, align 4
  %47 = call i32 @free(%struct.ttm_buffer_object* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %220

51:                                               ; preds = %11
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* @PAGE_SIZE, align 8
  %54 = add i64 %52, %53
  %55 = sub i64 %54, 1
  %56 = load i64, i64* @PAGE_SHIFT, align 8
  %57 = lshr i64 %55, %56
  store i64 %57, i64* %25, align 8
  %58 = load i64, i64* %25, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %77

60:                                               ; preds = %51
  %61 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %63 = icmp ne void (%struct.ttm_buffer_object*)* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %66 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  call void %65(%struct.ttm_buffer_object* %66)
  br label %71

67:                                               ; preds = %60
  %68 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %69 = load i32, i32* @M_TTM_BO, align 4
  %70 = call i32 @free(%struct.ttm_buffer_object* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %26, align 8
  %73 = load i64, i64* %21, align 8
  %74 = call i32 @ttm_mem_global_free(%struct.ttm_mem_global* %72, i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %220

77:                                               ; preds = %51
  %78 = load void (%struct.ttm_buffer_object*)*, void (%struct.ttm_buffer_object*)** %23, align 8
  %79 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %80 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %79, i32 0, i32 0
  store void (%struct.ttm_buffer_object*)* %78, void (%struct.ttm_buffer_object*)** %80, align 8
  %81 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %82 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %81, i32 0, i32 18
  %83 = call i32 @refcount_init(i32* %82, i32 1)
  %84 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %85 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %84, i32 0, i32 17
  %86 = call i32 @refcount_init(i32* %85, i32 1)
  %87 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %88 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %87, i32 0, i32 16
  %89 = call i32 @atomic_set(i32* %88, i32 0)
  %90 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %91 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %90, i32 0, i32 15
  %92 = call i32 @atomic_set(i32* %91, i32 1)
  %93 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %94 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %93, i32 0, i32 14
  %95 = call i32 @INIT_LIST_HEAD(i32* %94)
  %96 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %97 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %96, i32 0, i32 13
  %98 = call i32 @INIT_LIST_HEAD(i32* %97)
  %99 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %100 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %99, i32 0, i32 12
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %103 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %102, i32 0, i32 11
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %106 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %107 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %106, i32 0, i32 10
  store %struct.ttm_bo_device* %105, %struct.ttm_bo_device** %107, align 8
  %108 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %13, align 8
  %109 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %112 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %111, i32 0, i32 5
  store %struct.TYPE_6__* %110, %struct.TYPE_6__** %112, align 8
  %113 = load i32, i32* %16, align 4
  %114 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %115 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load i64, i64* %25, align 8
  %117 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %118 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load i64, i64* %25, align 8
  %120 = load i64, i64* @PAGE_SHIFT, align 8
  %121 = shl i64 %119, %120
  %122 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %123 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load i32, i32* @TTM_PL_SYSTEM, align 4
  %126 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %127 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %126, i32 0, i32 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 6
  store i32 %125, i32* %128, align 8
  %129 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %130 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %133 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i64 %131, i64* %134, align 8
  %135 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %136 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 5
  store i32* null, i32** %137, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %140 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %139, i32 0, i32 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 4
  store i32 %138, i32* %141, align 8
  %142 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %143 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %142, i32 0, i32 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %147 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %146, i32 0, i32 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  store i64 0, i64* %149, align 8
  %150 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %151 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %150, i32 0, i32 9
  store i64 0, i64* %151, align 8
  %152 = load i32, i32* @TTM_PL_FLAG_SYSTEM, align 4
  %153 = load i32, i32* @TTM_PL_FLAG_CACHED, align 4
  %154 = or i32 %152, %153
  %155 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %156 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %155, i32 0, i32 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  %158 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %159 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %158, i32 0, i32 3
  store i32 0, i32* %159, align 8
  %160 = load %struct.vm_object*, %struct.vm_object** %20, align 8
  %161 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %162 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %161, i32 0, i32 7
  store %struct.vm_object* %160, %struct.vm_object** %162, align 8
  %163 = load i64, i64* %21, align 8
  %164 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %165 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %164, i32 0, i32 4
  store i64 %163, i64* %165, align 8
  %166 = load %struct.sg_table*, %struct.sg_table** %22, align 8
  %167 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %168 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %167, i32 0, i32 6
  store %struct.sg_table* %166, %struct.sg_table** %168, align 8
  %169 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %170 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %169, i32 0, i32 5
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = call i32 @atomic_inc(i32* %172)
  %174 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %175 = load %struct.ttm_placement*, %struct.ttm_placement** %17, align 8
  %176 = call i32 @ttm_bo_check_placement(%struct.ttm_buffer_object* %174, %struct.ttm_placement* %175)
  store i32 %176, i32* %24, align 4
  %177 = load i32, i32* %24, align 4
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %77
  br label %215

183:                                              ; preds = %77
  %184 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %185 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = load i64, i64* @ttm_bo_type_device, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %197, label %190

190:                                              ; preds = %183
  %191 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %192 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = load i64, i64* @ttm_bo_type_sg, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %190, %183
  %198 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %199 = call i32 @ttm_bo_setup_vm(%struct.ttm_buffer_object* %198)
  store i32 %199, i32* %24, align 4
  %200 = load i32, i32* %24, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  br label %215

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %190
  %205 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %206 = load %struct.ttm_placement*, %struct.ttm_placement** %17, align 8
  %207 = load i32, i32* %19, align 4
  %208 = call i32 @ttm_bo_validate(%struct.ttm_buffer_object* %205, %struct.ttm_placement* %206, i32 %207, i32 0)
  store i32 %208, i32* %24, align 4
  %209 = load i32, i32* %24, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %215

212:                                              ; preds = %204
  %213 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %214 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %213)
  store i32 0, i32* %12, align 4
  br label %220

215:                                              ; preds = %211, %202, %182
  %216 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %14, align 8
  %217 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %216)
  %218 = call i32 @ttm_bo_unref(%struct.ttm_buffer_object** %14)
  %219 = load i32, i32* %24, align 4
  store i32 %219, i32* %12, align 4
  br label %220

220:                                              ; preds = %215, %212, %71, %48
  %221 = load i32, i32* %12, align 4
  ret i32 %221
}

declare dso_local i32 @ttm_mem_global_alloc(%struct.ttm_mem_global*, i64, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @free(%struct.ttm_buffer_object*, i32) #1

declare dso_local i32 @ttm_mem_global_free(%struct.ttm_mem_global*, i64) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ttm_bo_check_placement(%struct.ttm_buffer_object*, %struct.ttm_placement*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_bo_setup_vm(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_validate(%struct.ttm_buffer_object*, %struct.ttm_placement*, i32, i32) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

declare dso_local i32 @ttm_bo_unref(%struct.ttm_buffer_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
