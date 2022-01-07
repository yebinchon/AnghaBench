; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_ioctl.c_drm_getcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_ioctl.c_drm_getcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_get_cap = type { i32, i32 }

@drm_timestamp_monotonic = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_PRIME_CAP_EXPORT = common dso_local global i32 0, align 4
@DRM_PRIME_CAP_IMPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_getcap(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_get_cap*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_get_cap*
  store %struct.drm_get_cap* %10, %struct.drm_get_cap** %8, align 8
  %11 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %12 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %14 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %55 [
    i32 133, label %16
    i32 128, label %27
    i32 132, label %30
    i32 131, label %37
    i32 130, label %44
    i32 129, label %51
  ]

16:                                               ; preds = %3
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %25 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %16
  br label %58

27:                                               ; preds = %3
  %28 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %29 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %58

30:                                               ; preds = %3
  %31 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %36 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %58

37:                                               ; preds = %3
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %43 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %58

44:                                               ; preds = %3
  %45 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %46 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %46, align 4
  %48 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %49 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %49, align 4
  br label %58

51:                                               ; preds = %3
  %52 = load i32, i32* @drm_timestamp_monotonic, align 4
  %53 = load %struct.drm_get_cap*, %struct.drm_get_cap** %8, align 8
  %54 = getelementptr inbounds %struct.drm_get_cap, %struct.drm_get_cap* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %58

55:                                               ; preds = %3
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %51, %44, %37, %30, %27, %26
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
