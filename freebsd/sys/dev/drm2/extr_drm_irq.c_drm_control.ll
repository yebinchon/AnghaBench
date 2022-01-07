; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_irq.c_drm_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_control = type { i32, i32 }

@DRIVER_HAVE_IRQ = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_control(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_control*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_control*
  store %struct.drm_control* %10, %struct.drm_control** %8, align 8
  %11 = load %struct.drm_control*, %struct.drm_control** %8, align 8
  %12 = getelementptr inbounds %struct.drm_control, %struct.drm_control* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %60 [
    i32 129, label %14
    i32 128, label %45
  ]

14:                                               ; preds = %3
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = load i32, i32* @DRIVER_HAVE_IRQ, align 4
  %17 = call i32 @drm_core_check_feature(%struct.drm_device* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %63

20:                                               ; preds = %14
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load i32, i32* @DRIVER_MODESET, align 4
  %23 = call i32 @drm_core_check_feature(%struct.drm_device* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %63

26:                                               ; preds = %20
  %27 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @DRM_IF_VERSION(i32 1, i32 2)
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.drm_control*, %struct.drm_control** %8, align 8
  %34 = getelementptr inbounds %struct.drm_control, %struct.drm_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %37 = call i32 @drm_dev_to_irq(%struct.drm_device* %36)
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %63

42:                                               ; preds = %32, %26
  %43 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %44 = call i32 @drm_irq_install(%struct.drm_device* %43)
  store i32 %44, i32* %4, align 4
  br label %63

45:                                               ; preds = %3
  %46 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %47 = load i32, i32* @DRIVER_HAVE_IRQ, align 4
  %48 = call i32 @drm_core_check_feature(%struct.drm_device* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %63

51:                                               ; preds = %45
  %52 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %53 = load i32, i32* @DRIVER_MODESET, align 4
  %54 = call i32 @drm_core_check_feature(%struct.drm_device* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %63

57:                                               ; preds = %51
  %58 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %59 = call i32 @drm_irq_uninstall(%struct.drm_device* %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %3
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %57, %56, %50, %42, %39, %25, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_IF_VERSION(i32, i32) #1

declare dso_local i32 @drm_dev_to_irq(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_install(%struct.drm_device*) #1

declare dso_local i32 @drm_irq_uninstall(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
