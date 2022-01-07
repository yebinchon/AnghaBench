; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_reserve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.ttm_bo_global* }
%struct.ttm_bo_global = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ttm_buffer_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ttm_bo_global*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %15 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %14, i32 0, i32 0
  %16 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %15, align 8
  store %struct.ttm_bo_global* %16, %struct.ttm_bo_global** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %18 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %17, i32 0, i32 0
  %19 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %18, align 8
  %20 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object* %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @likely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %5
  %34 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %35 = call i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object* %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %11, align 8
  %37 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object* %39, i32 %40, i32 1)
  br label %48

42:                                               ; preds = %5
  %43 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %6, align 8
  %44 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %43, i32 0, i32 0
  %45 = load %struct.ttm_bo_global*, %struct.ttm_bo_global** %44, align 8
  %46 = getelementptr inbounds %struct.ttm_bo_global, %struct.ttm_bo_global* %45, i32 0, i32 0
  %47 = call i32 @mtx_unlock(i32* %46)
  br label %48

48:                                               ; preds = %42, %33
  %49 = load i32, i32* %13, align 4
  ret i32 %49
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ttm_bo_reserve_nolru(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ttm_bo_del_from_lru(%struct.ttm_buffer_object*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ttm_bo_list_ref_sub(%struct.ttm_buffer_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
