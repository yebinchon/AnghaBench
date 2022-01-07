; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_crtc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.drm_crtc = type { i32, i32, i32, %struct.TYPE_4__, %struct.drm_crtc_funcs*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32* }
%struct.drm_crtc_funcs = type { i32 }

@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_crtc_init(%struct.drm_device* %0, %struct.drm_crtc* %1, %struct.drm_crtc_funcs* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.drm_crtc_funcs*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  store %struct.drm_crtc_funcs* %2, %struct.drm_crtc_funcs** %6, align 8
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 5
  store %struct.drm_device* %8, %struct.drm_device** %10, align 8
  %11 = load %struct.drm_crtc_funcs*, %struct.drm_crtc_funcs** %6, align 8
  %12 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %13 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %12, i32 0, i32 4
  store %struct.drm_crtc_funcs* %11, %struct.drm_crtc_funcs** %13, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @sx_xlock(i32* %18)
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 3
  %23 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %24 = call i32 @drm_mode_object_get(%struct.drm_device* %20, %struct.TYPE_4__* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %45

28:                                               ; preds = %3
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %29, i32 0, i32 2
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %32 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32* %30, i32** %33, align 8
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 1
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = call i32 @list_add_tail(i32* %35, i32* %38)
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %28, %27
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @sx_xunlock(i32* %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
