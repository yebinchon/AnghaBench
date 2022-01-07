; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_buffer_object_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo_util.c_ttm_buffer_object_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i64, i32*, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { i32, %struct.ttm_bo_driver* }
%struct.ttm_bo_driver = type { i32* (i32*)* }

@M_TTM_TRANSF_OBJ = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ttm_transfered_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.ttm_buffer_object**)* @ttm_buffer_object_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_buffer_object_transfer(%struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_buffer_object**, align 8
  %5 = alloca %struct.ttm_buffer_object*, align 8
  %6 = alloca %struct.ttm_bo_device*, align 8
  %7 = alloca %struct.ttm_bo_driver*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_buffer_object** %1, %struct.ttm_buffer_object*** %4, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 11
  %10 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  store %struct.ttm_bo_device* %10, %struct.ttm_bo_device** %6, align 8
  %11 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %12 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %11, i32 0, i32 1
  %13 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %12, align 8
  store %struct.ttm_bo_driver* %13, %struct.ttm_bo_driver** %7, align 8
  %14 = load i32, i32* @M_TTM_TRANSF_OBJ, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call %struct.ttm_buffer_object* @malloc(i32 72, i32 %14, i32 %15)
  store %struct.ttm_buffer_object* %16, %struct.ttm_buffer_object** %5, align 8
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %19 = bitcast %struct.ttm_buffer_object* %17 to i8*
  %20 = bitcast %struct.ttm_buffer_object* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 72, i1 false)
  %21 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %22 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %21, i32 0, i32 10
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %25 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %24, i32 0, i32 9
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %28 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %27, i32 0, i32 8
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %31 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %30, i32 0, i32 7
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %34 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %33, i32 0, i32 6
  store i32* null, i32** %34, align 8
  %35 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %36 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %35, i32 0, i32 5
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %39 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %38, i32 0, i32 0
  %40 = call i32 @mtx_lock(i32* %39)
  %41 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %42 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %2
  %46 = load %struct.ttm_bo_driver*, %struct.ttm_bo_driver** %7, align 8
  %47 = getelementptr inbounds %struct.ttm_bo_driver, %struct.ttm_bo_driver* %46, i32 0, i32 0
  %48 = load i32* (i32*)*, i32* (i32*)** %47, align 8
  %49 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %50 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = call i32* %48(i32* %51)
  %53 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %54 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %53, i32 0, i32 4
  store i32* %52, i32** %54, align 8
  br label %58

55:                                               ; preds = %2
  %56 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %57 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %56, i32 0, i32 4
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %45
  %59 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %60 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %59, i32 0, i32 0
  %61 = call i32 @mtx_unlock(i32* %60)
  %62 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %63 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %62, i32 0, i32 3
  %64 = call i32 @refcount_init(i32* %63, i32 1)
  %65 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %66 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %65, i32 0, i32 2
  %67 = call i32 @refcount_init(i32* %66, i32 1)
  %68 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %69 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %68, i32 0, i32 1
  store i32* @ttm_transfered_destroy, i32** %69, align 8
  %70 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %71 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %5, align 8
  %73 = load %struct.ttm_buffer_object**, %struct.ttm_buffer_object*** %4, align 8
  store %struct.ttm_buffer_object* %72, %struct.ttm_buffer_object** %73, align 8
  ret i32 0
}

declare dso_local %struct.ttm_buffer_object* @malloc(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
