; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_open_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem.c_drm_gem_open_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_open = type { i32, i32, i32 }
%struct.drm_gem_object = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@drm_gem_object_reference = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_open_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_open*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_gem_open*
  store %struct.drm_gem_open* %13, %struct.drm_gem_open** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRIVER_GEM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %58

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %29 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @drm_gem_object_reference, align 8
  %32 = inttoptr i64 %31 to void (i8*)*
  %33 = call %struct.drm_gem_object* @drm_gem_name_ref(i32* %27, i32 %30, void (i8*)* %32)
  store %struct.drm_gem_object* %33, %struct.drm_gem_object** %9, align 8
  %34 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %35 = icmp ne %struct.drm_gem_object* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %58

39:                                               ; preds = %25
  %40 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %41 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %42 = call i32 @drm_gem_handle_create(%struct.drm_file* %40, %struct.drm_gem_object* %41, i32* %11)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %44 = call i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object* %43)
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %39
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %52 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %54 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %57 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %47, %36, %22
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.drm_gem_object* @drm_gem_name_ref(i32*, i32, void (i8*)*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_unreference_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
