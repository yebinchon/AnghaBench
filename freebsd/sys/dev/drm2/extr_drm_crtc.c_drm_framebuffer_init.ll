; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_framebuffer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_framebuffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32, %struct.drm_framebuffer_funcs*, %struct.drm_device*, i32, i32 }
%struct.drm_framebuffer_funcs = type { i32 }

@DRM_MODE_OBJECT_FB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_framebuffer_init(%struct.drm_device* %0, %struct.drm_framebuffer* %1, %struct.drm_framebuffer_funcs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_framebuffer_funcs*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.drm_framebuffer_funcs* %2, %struct.drm_framebuffer_funcs** %7, align 8
  %9 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %10 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %9, i32 0, i32 4
  %11 = call i32 @refcount_init(i32* %10, i32 1)
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %14 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %13, i32 0, i32 3
  %15 = load i32, i32* @DRM_MODE_OBJECT_FB, align 4
  %16 = call i32 @drm_mode_object_get(%struct.drm_device* %12, i32* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %24 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %23, i32 0, i32 2
  store %struct.drm_device* %22, %struct.drm_device** %24, align 8
  %25 = load %struct.drm_framebuffer_funcs*, %struct.drm_framebuffer_funcs** %7, align 8
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %27 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %26, i32 0, i32 1
  store %struct.drm_framebuffer_funcs* %25, %struct.drm_framebuffer_funcs** %27, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 0
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @list_add(i32* %34, i32* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %21, %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
