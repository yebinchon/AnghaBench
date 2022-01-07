; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }
%struct.drm_device = type { i32 }

@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %5 = load i32, i32* @DRM_MEM_KMS, align 4
  %6 = load i32, i32* @M_WAITOK, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.drm_display_mode* @malloc(i32 4, i32 %5, i32 %8)
  store %struct.drm_display_mode* %9, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %11 = icmp ne %struct.drm_display_mode* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %26

13:                                               ; preds = %1
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* @DRM_MODE_OBJECT_MODE, align 4
  %18 = call i64 @drm_mode_object_get(%struct.drm_device* %14, i32* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = load i32, i32* @DRM_MEM_KMS, align 4
  %23 = call i32 @free(%struct.drm_display_mode* %21, i32 %22)
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %26

24:                                               ; preds = %13
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  store %struct.drm_display_mode* %25, %struct.drm_display_mode** %2, align 8
  br label %26

26:                                               ; preds = %24, %20, %12
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  ret %struct.drm_display_mode* %27
}

declare dso_local %struct.drm_display_mode* @malloc(i32, i32, i32) #1

declare dso_local i64 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @free(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
