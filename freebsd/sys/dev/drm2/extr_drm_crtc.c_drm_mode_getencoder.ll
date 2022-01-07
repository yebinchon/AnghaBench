; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_getencoder.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_getencoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_get_encoder = type { i32, i32, i32, i32, i64 }
%struct.drm_mode_object = type { i32 }
%struct.drm_encoder = type { i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_ENCODER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getencoder(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_get_encoder*, align 8
  %9 = alloca %struct.drm_mode_object*, align 8
  %10 = alloca %struct.drm_encoder*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_mode_get_encoder*
  store %struct.drm_mode_get_encoder* %13, %struct.drm_mode_get_encoder** %8, align 8
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
  br label %84

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = call i32 @sx_xlock(i32* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %28 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @DRM_MODE_OBJECT_ENCODER, align 4
  %31 = call %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device* %26, i32 %29, i32 %30)
  store %struct.drm_mode_object* %31, %struct.drm_mode_object** %9, align 8
  %32 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %33 = icmp ne %struct.drm_mode_object* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %21
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %78

37:                                               ; preds = %21
  %38 = load %struct.drm_mode_object*, %struct.drm_mode_object** %9, align 8
  %39 = call %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object* %38)
  store %struct.drm_encoder* %39, %struct.drm_encoder** %10, align 8
  %40 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %41 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %40, i32 0, i32 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %46 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %52 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %51, i32 0, i32 4
  store i64 %50, i64* %52, align 8
  br label %56

53:                                               ; preds = %37
  %54 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %55 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %44
  %57 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %58 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %61 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %63 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %67 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %69 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %72 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.drm_encoder*, %struct.drm_encoder** %10, align 8
  %74 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.drm_mode_get_encoder*, %struct.drm_mode_get_encoder** %8, align 8
  %77 = getelementptr inbounds %struct.drm_mode_get_encoder, %struct.drm_mode_get_encoder* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %56, %34
  %79 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = call i32 @sx_xunlock(i32* %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local %struct.drm_mode_object* @drm_mode_object_find(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.drm_encoder* @obj_to_encoder(%struct.drm_mode_object*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
