; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_plane_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_plane_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, i32, i32, %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DRM_MEM_KMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_plane_cleanup(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca %struct.drm_device*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 3
  %6 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  store %struct.drm_device* %6, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @sx_xlock(i32* %9)
  %11 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @DRM_MEM_KMS, align 4
  %15 = call i32 @free(i32 %13, i32 %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 1
  %19 = call i32 @drm_mode_object_put(%struct.drm_device* %16, i32* %18)
  %20 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 0
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %1
  %25 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %26 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %24, %1
  %34 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @sx_xunlock(i32* %36)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @drm_mode_object_put(%struct.drm_device*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
