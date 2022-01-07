; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_attachmode_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_attachmode_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_mode_cmd = type { i32, %struct.drm_mode_modeinfo }
%struct.drm_mode_modeinfo = type { i32 }
%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.drm_mode_object = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CONNECTOR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Invalid mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_attachmode_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_mode_cmd*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_mode_object*, align 8
  %12 = alloca %struct.drm_mode_modeinfo*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_mode_mode_cmd*
  store %struct.drm_mode_mode_cmd* %15, %struct.drm_mode_mode_cmd** %8, align 8
  %16 = load %struct.drm_mode_mode_cmd*, %struct.drm_mode_mode_cmd** %8, align 8
  %17 = getelementptr inbounds %struct.drm_mode_mode_cmd, %struct.drm_mode_mode_cmd* %16, i32 0, i32 1
  store %struct.drm_mode_modeinfo* %17, %struct.drm_mode_modeinfo** %12, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_MODESET, align 4
  %20 = call i32 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %73

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @sx_xlock(i32* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = load %struct.drm_mode_mode_cmd*, %struct.drm_mode_mode_cmd** %8, align 8
  %32 = getelementptr inbounds %struct.drm_mode_mode_cmd, %struct.drm_mode_mode_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DRM_MODE_OBJECT_CONNECTOR, align 4
  %35 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %30, i32 %33, i32 %34)
  store %struct.drm_mode_object* %35, %struct.drm_mode_object** %11, align 8
  %36 = load %struct.drm_mode_object*, %struct.drm_mode_object** %11, align 8
  %37 = icmp ne %struct.drm_mode_object* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %13, align 4
  br label %67

41:                                               ; preds = %25
  %42 = load %struct.drm_mode_object*, %struct.drm_mode_object** %11, align 8
  %43 = call %struct.drm_connector* @obj_to_connector(%struct.drm_mode_object* %42)
  store %struct.drm_connector* %43, %struct.drm_connector** %9, align 8
  %44 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %45 = call %struct.drm_display_mode* @drm_mode_create(%struct.drm_device* %44)
  store %struct.drm_display_mode* %45, %struct.drm_display_mode** %10, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %47 = icmp ne %struct.drm_display_mode* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %67

51:                                               ; preds = %41
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %53 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %12, align 8
  %54 = call i32 @drm_crtc_convert_umode(%struct.drm_display_mode* %52, %struct.drm_mode_modeinfo* %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %59 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %61 = call i32 @drm_mode_destroy(%struct.drm_device* %59, %struct.drm_display_mode* %60)
  br label %67

62:                                               ; preds = %51
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %66 = call i32 @drm_mode_attachmode(%struct.drm_device* %63, %struct.drm_connector* %64, %struct.drm_display_mode* %65)
  br label %67

67:                                               ; preds = %62, %57, %48, %38
  %68 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @sx_xunlock(i32* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_connector* @obj_to_connector(%struct.drm_mode_object*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_create(%struct.drm_device*) #1

declare dso_local i32 @drm_crtc_convert_umode(%struct.drm_display_mode*, %struct.drm_mode_modeinfo*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @drm_mode_destroy(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_attachmode(%struct.drm_device*, %struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
