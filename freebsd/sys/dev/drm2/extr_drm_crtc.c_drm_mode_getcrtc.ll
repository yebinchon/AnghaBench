; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_getcrtc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_getcrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_crtc = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.drm_crtc = type { i32, i64, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.drm_mode_object = type { i32 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_CRTC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getcrtc(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_crtc*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.drm_mode_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_mode_crtc*
  store %struct.drm_mode_crtc* %13, %struct.drm_mode_crtc** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load i32, i32* @DRIVER_MODESET, align 4
  %16 = call i32 @drm_core_check_feature(%struct.drm_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %94

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = call i32 @sx_xlock(i32* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %28 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DRM_MODE_OBJECT_CRTC, align 4
  %31 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %26, i32 %29, i32 %30)
  store %struct.drm_mode_object* %31, %struct.drm_mode_object** %10, align 8
  %32 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %33 = icmp ne %struct.drm_mode_object* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %88

37:                                               ; preds = %21
  %38 = load %struct.drm_mode_object*, %struct.drm_mode_object** %10, align 8
  %39 = call %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object* %38)
  store %struct.drm_crtc* %39, %struct.drm_crtc** %9, align 8
  %40 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %41 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %44 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %46 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %49 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %51 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %54 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %56 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %55, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = icmp ne %struct.TYPE_5__* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %37
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %67 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %71

68:                                               ; preds = %37
  %69 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %70 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %59
  %72 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %73 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %78 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %77, i32 0, i32 1
  %79 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %80 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %79, i32 0, i32 0
  %81 = call i32 @drm_crtc_convert_to_umode(i32* %78, i32* %80)
  %82 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %83 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  br label %87

84:                                               ; preds = %71
  %85 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %86 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %76
  br label %88

88:                                               ; preds = %87, %34
  %89 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %90 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = call i32 @sx_xunlock(i32* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %88, %18
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_crtc* @obj_to_crtc(%struct.drm_mode_object*) #1

declare dso_local i32 @drm_crtc_convert_to_umode(i32*, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
