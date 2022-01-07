; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_obj_set_property_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_obj_set_property_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_obj_set_property = type { i64, i64, i32, i32 }
%struct.drm_mode_object = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64* }
%struct.drm_property = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRIVER_MODESET = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_PROPERTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_obj_set_property_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_obj_set_property*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_mode_object*, align 8
  %11 = alloca %struct.drm_property*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.drm_mode_obj_set_property*
  store %struct.drm_mode_obj_set_property* %15, %struct.drm_mode_obj_set_property** %8, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_MODESET, align 4
  %20 = call i32 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %136

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @sx_xlock(i32* %28)
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %32 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %35 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %30, i64 %33, i32 %36)
  store %struct.drm_mode_object* %37, %struct.drm_mode_object** %9, align 8
  %38 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %39 = icmp ne %struct.drm_mode_object* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %25
  br label %130

41:                                               ; preds = %25
  %42 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %43 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = icmp ne %struct.TYPE_3__* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %130

47:                                               ; preds = %41
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %72, %47
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %51 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %75

56:                                               ; preds = %48
  %57 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %58 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %67 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %75

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  br label %48

75:                                               ; preds = %70, %48
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %78 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %76, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %130

84:                                               ; preds = %75
  %85 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %86 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %87 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @DRM_MODE_OBJECT_PROPERTY, align 4
  %90 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %85, i64 %88, i32 %89)
  store %struct.drm_mode_object* %90, %struct.drm_mode_object** %10, align 8
  %91 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %92 = icmp ne %struct.drm_mode_object* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %130

94:                                               ; preds = %84
  %95 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %96 = call %struct.drm_property* @obj_to_property(%struct.drm_mode_object* %95)
  store %struct.drm_property* %96, %struct.drm_property** %11, align 8
  %97 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %98 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %99 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @drm_property_change_is_valid(%struct.drm_property* %97, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %130

104:                                              ; preds = %94
  %105 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %106 = getelementptr inbounds %struct.drm_mode_object, %struct.drm_mode_object* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %129 [
    i32 130, label %108
    i32 129, label %115
    i32 128, label %122
  ]

108:                                              ; preds = %104
  %109 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %110 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %111 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %112 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @drm_mode_connector_set_obj_prop(%struct.drm_mode_object* %109, %struct.drm_property* %110, i32 %113)
  store i32 %114, i32* %12, align 4
  br label %129

115:                                              ; preds = %104
  %116 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %117 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %118 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %119 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object* %116, %struct.drm_property* %117, i32 %120)
  store i32 %121, i32* %12, align 4
  br label %129

122:                                              ; preds = %104
  %123 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %124 = load %struct.drm_property*, %struct.drm_property** %11, align 8
  %125 = load %struct.drm_mode_obj_set_property*, %struct.drm_mode_obj_set_property** %8, align 8
  %126 = getelementptr inbounds %struct.drm_mode_obj_set_property, %struct.drm_mode_obj_set_property* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @drm_mode_plane_set_obj_prop(%struct.drm_mode_object* %123, %struct.drm_property* %124, i32 %127)
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %104, %122, %115, %108
  br label %130

130:                                              ; preds = %129, %103, %93, %83, %46, %40
  %131 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %132 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i32 @sx_xunlock(i32* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %130, %22
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i64, i32) #1

declare dso_local %struct.drm_property* @obj_to_property(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_property_change_is_valid(%struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_connector_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_crtc_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @drm_mode_plane_set_obj_prop(%struct.drm_mode_object*, %struct.drm_property*, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
