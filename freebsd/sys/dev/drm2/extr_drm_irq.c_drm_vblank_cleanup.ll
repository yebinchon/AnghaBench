; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_vblank_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_vblank_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MEM_VBLANK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_vblank_cleanup(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %3 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %57

8:                                                ; preds = %1
  %9 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 10
  %11 = call i32 @callout_stop(i32* %10)
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = call i32 @vblank_disable_fn(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %18 = call i32 @free(i32 %16, i32 %17)
  %19 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %23 = call i32 @free(i32 %21, i32 %22)
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %28 = call i32 @free(i32 %26, i32 %27)
  %29 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %33 = call i32 @free(i32 %31, i32 %32)
  %34 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %38 = call i32 @free(i32 %36, i32 %37)
  %39 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %43 = call i32 @free(i32 %41, i32 %42)
  %44 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DRM_MEM_VBLANK, align 4
  %48 = call i32 @free(i32 %46, i32 %47)
  %49 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 2
  %51 = call i32 @mtx_destroy(i32* %50)
  %52 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %53 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %52, i32 0, i32 1
  %54 = call i32 @mtx_destroy(i32* %53)
  %55 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @vblank_disable_fn(%struct.drm_device*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
