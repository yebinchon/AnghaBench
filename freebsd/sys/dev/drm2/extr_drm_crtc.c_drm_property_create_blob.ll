; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_property_create_blob.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_property_create_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { i32, i32, i32, i32 }
%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DRM_MODE_OBJECT_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_property_blob* (%struct.drm_device*, i32, i8*)* @drm_property_create_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_property_blob*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %4, align 8
  br label %58

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 16, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @DRM_MEM_KMS, align 4
  %22 = load i32, i32* @M_WAITOK, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.drm_property_blob* @malloc(i32 %20, i32 %21, i32 %24)
  store %struct.drm_property_blob* %25, %struct.drm_property_blob** %8, align 8
  %26 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %27 = icmp ne %struct.drm_property_blob* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %4, align 8
  br label %58

29:                                               ; preds = %16
  %30 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %31 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %32 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %31, i32 0, i32 3
  %33 = load i32, i32* @DRM_MODE_OBJECT_BLOB, align 4
  %34 = call i32 @drm_mode_object_get(%struct.drm_device* %30, i32* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %39 = load i32, i32* @DRM_MEM_KMS, align 4
  %40 = call i32 @free(%struct.drm_property_blob* %38, i32 %39)
  store %struct.drm_property_blob* null, %struct.drm_property_blob** %4, align 8
  br label %58

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %44 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %46 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  %52 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %51, i32 0, i32 1
  %53 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %54 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @list_add_tail(i32* %52, i32* %55)
  %57 = load %struct.drm_property_blob*, %struct.drm_property_blob** %8, align 8
  store %struct.drm_property_blob* %57, %struct.drm_property_blob** %4, align 8
  br label %58

58:                                               ; preds = %41, %37, %28, %15
  %59 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  ret %struct.drm_property_blob* %59
}

declare dso_local %struct.drm_property_blob* @malloc(i32, i32, i32) #1

declare dso_local i32 @drm_mode_object_get(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @free(%struct.drm_property_blob*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
