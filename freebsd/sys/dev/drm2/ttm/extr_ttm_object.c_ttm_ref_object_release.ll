; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_ref_object_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_object.c_ttm_ref_object_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_ref_object = type { i64, %struct.ttm_base_object*, i32, i32, %struct.ttm_object_file* }
%struct.ttm_base_object = type { i32 (%struct.ttm_base_object*, i64)* }
%struct.ttm_object_file = type { i32, %struct.drm_open_hash*, %struct.TYPE_2__* }
%struct.drm_open_hash = type { i32 }
%struct.TYPE_2__ = type { %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }

@TTM_REF_USAGE = common dso_local global i64 0, align 8
@M_TTM_OBJ_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_ref_object*)* @ttm_ref_object_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_ref_object_release(%struct.ttm_ref_object* %0) #0 {
  %2 = alloca %struct.ttm_ref_object*, align 8
  %3 = alloca %struct.ttm_base_object*, align 8
  %4 = alloca %struct.ttm_object_file*, align 8
  %5 = alloca %struct.drm_open_hash*, align 8
  %6 = alloca %struct.ttm_mem_global*, align 8
  store %struct.ttm_ref_object* %0, %struct.ttm_ref_object** %2, align 8
  %7 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %8 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %7, i32 0, i32 1
  %9 = load %struct.ttm_base_object*, %struct.ttm_base_object** %8, align 8
  store %struct.ttm_base_object* %9, %struct.ttm_base_object** %3, align 8
  %10 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %11 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %10, i32 0, i32 4
  %12 = load %struct.ttm_object_file*, %struct.ttm_object_file** %11, align 8
  store %struct.ttm_object_file* %12, %struct.ttm_object_file** %4, align 8
  %13 = load %struct.ttm_object_file*, %struct.ttm_object_file** %4, align 8
  %14 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %16, align 8
  store %struct.ttm_mem_global* %17, %struct.ttm_mem_global** %6, align 8
  %18 = load %struct.ttm_object_file*, %struct.ttm_object_file** %4, align 8
  %19 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %18, i32 0, i32 1
  %20 = load %struct.drm_open_hash*, %struct.drm_open_hash** %19, align 8
  %21 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %22 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %20, i64 %23
  store %struct.drm_open_hash* %24, %struct.drm_open_hash** %5, align 8
  %25 = load %struct.drm_open_hash*, %struct.drm_open_hash** %5, align 8
  %26 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %27 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %26, i32 0, i32 3
  %28 = call i32 @drm_ht_remove_item(%struct.drm_open_hash* %25, i32* %27)
  %29 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %30 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %29, i32 0, i32 2
  %31 = call i32 @list_del(i32* %30)
  %32 = load %struct.ttm_object_file*, %struct.ttm_object_file** %4, align 8
  %33 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %32, i32 0, i32 0
  %34 = call i32 @rw_wunlock(i32* %33)
  %35 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %36 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TTM_REF_USAGE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %1
  %41 = load %struct.ttm_base_object*, %struct.ttm_base_object** %3, align 8
  %42 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %41, i32 0, i32 0
  %43 = load i32 (%struct.ttm_base_object*, i64)*, i32 (%struct.ttm_base_object*, i64)** %42, align 8
  %44 = icmp ne i32 (%struct.ttm_base_object*, i64)* %43, null
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.ttm_base_object*, %struct.ttm_base_object** %3, align 8
  %47 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %46, i32 0, i32 0
  %48 = load i32 (%struct.ttm_base_object*, i64)*, i32 (%struct.ttm_base_object*, i64)** %47, align 8
  %49 = load %struct.ttm_base_object*, %struct.ttm_base_object** %3, align 8
  %50 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %51 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 %48(%struct.ttm_base_object* %49, i64 %52)
  br label %54

54:                                               ; preds = %45, %40, %1
  %55 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %56 = getelementptr inbounds %struct.ttm_ref_object, %struct.ttm_ref_object* %55, i32 0, i32 1
  %57 = call i32 @ttm_base_object_unref(%struct.ttm_base_object** %56)
  %58 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %6, align 8
  %59 = call i32 @ttm_mem_global_free(%struct.ttm_mem_global* %58, i32 32)
  %60 = load %struct.ttm_ref_object*, %struct.ttm_ref_object** %2, align 8
  %61 = load i32, i32* @M_TTM_OBJ_REF, align 4
  %62 = call i32 @free(%struct.ttm_ref_object* %60, i32 %61)
  %63 = load %struct.ttm_object_file*, %struct.ttm_object_file** %4, align 8
  %64 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %63, i32 0, i32 0
  %65 = call i32 @rw_wlock(i32* %64)
  ret void
}

declare dso_local i32 @drm_ht_remove_item(%struct.drm_open_hash*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @ttm_base_object_unref(%struct.ttm_base_object**) #1

declare dso_local i32 @ttm_mem_global_free(%struct.ttm_mem_global*, i32) #1

declare dso_local i32 @free(%struct.ttm_ref_object*, i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
