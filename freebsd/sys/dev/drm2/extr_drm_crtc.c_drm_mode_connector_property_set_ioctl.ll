; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_connector_property_set_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_connector_property_set_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_connector_set_property = type { i32, i32, i32 }
%struct.drm_mode_obj_set_property = type { i32, i32, i32, i32 }

@DRM_MODE_OBJECT_CONNECTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_connector_property_set_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_connector_set_property*, align 8
  %8 = alloca %struct.drm_mode_obj_set_property, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.drm_mode_connector_set_property*
  store %struct.drm_mode_connector_set_property* %10, %struct.drm_mode_connector_set_property** %7, align 8
  %11 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %8, i32 0, i32 0
  %12 = load i32, i32* @DRM_MODE_OBJECT_CONNECTOR, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %8, i32 0, i32 1
  %14 = load %struct.drm_mode_connector_set_property*, %struct.drm_mode_connector_set_property** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_connector_set_property, %struct.drm_mode_connector_set_property* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 4
  %17 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %8, i32 0, i32 2
  %18 = load %struct.drm_mode_connector_set_property*, %struct.drm_mode_connector_set_property** %7, align 8
  %19 = getelementptr inbounds %struct.drm_mode_connector_set_property, %struct.drm_mode_connector_set_property* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %8, i32 0, i32 3
  %22 = load %struct.drm_mode_connector_set_property*, %struct.drm_mode_connector_set_property** %7, align 8
  %23 = getelementptr inbounds %struct.drm_mode_connector_set_property, %struct.drm_mode_connector_set_property* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %21, align 4
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %27 = call i32 @drm_mode_obj_set_property_ioctl(%struct.drm_device* %25, %struct.drm_mode_obj_set_property* %8, %struct.drm_file* %26)
  ret i32 %27
}

declare dso_local i32 @drm_mode_obj_set_property_ioctl(%struct.drm_device*, %struct.drm_mode_obj_set_property*, %struct.drm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
