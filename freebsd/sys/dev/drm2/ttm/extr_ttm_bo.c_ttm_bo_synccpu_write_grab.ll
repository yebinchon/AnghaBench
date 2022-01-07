; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_synccpu_write_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_synccpu_write_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.ttm_bo_device* }
%struct.ttm_bo_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_bo_synccpu_write_grab(%struct.ttm_buffer_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ttm_bo_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %9 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %8, i32 0, i32 1
  %10 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %9, align 8
  store %struct.ttm_bo_device* %10, %struct.ttm_bo_device** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @ttm_bo_reserve(%struct.ttm_buffer_object* %11, i32 1, i32 %12, i32 0, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %23 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ttm_bo_wait(%struct.ttm_buffer_object* %25, i32 0, i32 1, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.ttm_bo_device*, %struct.ttm_bo_device** %6, align 8
  %29 = getelementptr inbounds %struct.ttm_bo_device, %struct.ttm_bo_device* %28, i32 0, i32 0
  %30 = call i32 @mtx_unlock(i32* %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i64 @likely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %38 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %37, i32 0, i32 0
  %39 = call i32 @atomic_inc(i32* %38)
  br label %40

40:                                               ; preds = %36, %21
  %41 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %42 = call i32 @ttm_bo_unreserve(%struct.ttm_buffer_object* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ttm_bo_reserve(%struct.ttm_buffer_object*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ttm_bo_wait(%struct.ttm_buffer_object*, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ttm_bo_unreserve(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
