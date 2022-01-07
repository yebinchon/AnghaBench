; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_get_resource_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_get_resource_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drm_get_resource_len(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @drm_alloc_resource(%struct.drm_device* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @rman_get_size(i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %15, %14
  %29 = load i64, i64* %3, align 8
  ret i64 %29
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @drm_alloc_resource(%struct.drm_device*, i32) #1

declare dso_local i64 @rman_get_size(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
