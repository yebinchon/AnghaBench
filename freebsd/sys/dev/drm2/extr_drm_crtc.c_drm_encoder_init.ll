; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_encoder_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_encoder_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_encoder = type { i32, i32, %struct.drm_encoder_funcs*, %struct.drm_device*, i32 }
%struct.drm_encoder_funcs = type { i32 }

@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_encoder_init(%struct.drm_device* %0, %struct.drm_encoder* %1, %struct.drm_encoder_funcs* %2, i32 %3) #0 {
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_encoder*, align 8
  %7 = alloca %struct.drm_encoder_funcs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %6, align 8
  store %struct.drm_encoder_funcs* %2, %struct.drm_encoder_funcs** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @sx_xlock(i32* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 4
  %17 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %18 = call i32 @drm_mode_object_get(%struct.drm_device* %14, i32* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  br label %43

22:                                               ; preds = %4
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %25 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %24, i32 0, i32 3
  store %struct.drm_device* %23, %struct.drm_device** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %28 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.drm_encoder_funcs*, %struct.drm_encoder_funcs** %7, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %31 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %30, i32 0, i32 2
  store %struct.drm_encoder_funcs* %29, %struct.drm_encoder_funcs** %31, align 8
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %6, align 8
  %33 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %32, i32 0, i32 1
  %34 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i32 @list_add_tail(i32* %33, i32* %36)
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %22, %21
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @sx_xunlock(i32* %46)
  %48 = load i32, i32* %9, align 4
  ret i32 %48
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
