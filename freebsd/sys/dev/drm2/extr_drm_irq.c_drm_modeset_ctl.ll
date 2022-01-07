; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_modeset_ctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_modeset_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_modeset_ctl = type { i32, i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_modeset_ctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_modeset_ctl*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_modeset_ctl*
  store %struct.drm_modeset_ctl* %11, %struct.drm_modeset_ctl** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_MODESET, align 4
  %20 = call i64 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %51

23:                                               ; preds = %17
  %24 = load %struct.drm_modeset_ctl*, %struct.drm_modeset_ctl** %8, align 8
  %25 = getelementptr inbounds %struct.drm_modeset_ctl, %struct.drm_modeset_ctl* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp uge i32 %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %51

35:                                               ; preds = %23
  %36 = load %struct.drm_modeset_ctl*, %struct.drm_modeset_ctl** %8, align 8
  %37 = getelementptr inbounds %struct.drm_modeset_ctl, %struct.drm_modeset_ctl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %47 [
    i32 128, label %39
    i32 129, label %43
  ]

39:                                               ; preds = %35
  %40 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @drm_vblank_pre_modeset(%struct.drm_device* %40, i32 %41)
  br label %50

43:                                               ; preds = %35
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @drm_vblank_post_modeset(%struct.drm_device* %44, i32 %45)
  br label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %43, %39
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47, %32, %22, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i64 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_vblank_pre_modeset(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_vblank_post_modeset(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
