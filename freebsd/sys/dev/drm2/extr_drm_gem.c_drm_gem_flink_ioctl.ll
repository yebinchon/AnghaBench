; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_flink_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_flink_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_flink = type { i32, i32 }
%struct.drm_gem_object = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_flink_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_flink*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_gem_flink*
  store %struct.drm_gem_flink* %12, %struct.drm_gem_flink** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRIVER_GEM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %27 = load %struct.drm_gem_flink*, %struct.drm_gem_flink** %8, align 8
  %28 = getelementptr inbounds %struct.drm_gem_flink, %struct.drm_gem_flink* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device* %25, %struct.drm_file* %26, i32 %29)
  store %struct.drm_gem_object* %30, %struct.drm_gem_object** %9, align 8
  %31 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %32 = icmp eq %struct.drm_gem_object* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOENT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %24
  %37 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %40, i32 0, i32 0
  %42 = call i32 @drm_gem_name_create(i32* %38, %struct.drm_gem_object* %39, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %36
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @EALREADY, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %53 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %52)
  br label %54

54:                                               ; preds = %51, %36
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %59 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_gem_flink*, %struct.drm_gem_flink** %8, align 8
  %62 = getelementptr inbounds %struct.drm_gem_flink, %struct.drm_gem_flink* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %33, %21
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_name_create(i32*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
