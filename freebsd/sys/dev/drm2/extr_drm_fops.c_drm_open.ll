; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.drm_minor* }
%struct.drm_minor = type { %struct.drm_device* }
%struct.drm_device = type { i32, i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@drm_global_mutex = common dso_local global i32 0, align 4
@_DRM_STAT_OPENS = common dso_local global i64 0, align 8
@Giant = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_open(%struct.cdev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_minor*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.drm_device* null, %struct.drm_device** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.cdev*, %struct.cdev** %6, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load %struct.drm_minor*, %struct.drm_minor** %15, align 8
  store %struct.drm_minor* %16, %struct.drm_minor** %11, align 8
  %17 = load %struct.drm_minor*, %struct.drm_minor** %11, align 8
  %18 = icmp ne %struct.drm_minor* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %5, align 4
  br label %81

21:                                               ; preds = %4
  %22 = load %struct.drm_minor*, %struct.drm_minor** %11, align 8
  %23 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %22, i32 0, i32 0
  %24 = load %struct.drm_device*, %struct.drm_device** %23, align 8
  store %struct.drm_device* %24, %struct.drm_device** %10, align 8
  %25 = icmp ne %struct.drm_device* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  store i32 %27, i32* %5, align 4
  br label %81

28:                                               ; preds = %21
  %29 = call i32 @sx_xlock(i32* @drm_global_mutex)
  %30 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %31 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 1, i32* %13, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load %struct.cdev*, %struct.cdev** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %42 = call i32 @drm_open_helper(%struct.cdev* %37, i32 %38, i32 %39, i32* %40, %struct.drm_device* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %36
  %46 = call i32 @sx_xunlock(i32* @drm_global_mutex)
  %47 = load i32, i32* %12, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %81

49:                                               ; preds = %36
  %50 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @_DRM_STAT_OPENS, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = call i32 @atomic_inc(i32* %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %60 = call i32 @drm_setup(%struct.drm_device* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %67

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %49
  %66 = call i32 @sx_xunlock(i32* @drm_global_mutex)
  store i32 0, i32* %5, align 4
  br label %81

67:                                               ; preds = %63
  %68 = call i32 @mtx_lock(i32* @Giant)
  %69 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %70 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @device_unbusy(i32 %71)
  %73 = call i32 @mtx_unlock(i32* @Giant)
  %74 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %75, align 8
  %78 = call i32 @sx_xunlock(i32* @drm_global_mutex)
  %79 = load i32, i32* %12, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %67, %65, %45, %26, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @drm_open_helper(%struct.cdev*, i32, i32, i32*, %struct.drm_device*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @drm_setup(%struct.drm_device*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_unbusy(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
