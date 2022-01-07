; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.drm_file = type { i32, i32 }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"can't find authenticator\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@KTR_DRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"drm_poll empty list\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"drm_poll revents %x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %12 = bitcast %struct.drm_file** %8 to i8**
  %13 = call i32 @devfs_get_cdevpriv(i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %60

19:                                               ; preds = %3
  %20 = load %struct.cdev*, %struct.cdev** %5, align 8
  %21 = call %struct.drm_device* @drm_get_device_from_kdev(%struct.cdev* %20)
  store %struct.drm_device* %21, %struct.drm_device** %9, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @POLLIN, align 4
  %27 = load i32, i32* @POLLRDNORM, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %19
  %32 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %33 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %32, i32 0, i32 1
  %34 = call i64 @list_empty(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @KTR_DRM, align 4
  %38 = call i32 @CTR0(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.thread*, %struct.thread** %7, align 8
  %40 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %41 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %40, i32 0, i32 0
  %42 = call i32 @selrecord(%struct.thread* %39, i32* %41)
  br label %54

43:                                               ; preds = %31
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @POLLIN, align 4
  %46 = load i32, i32* @POLLRDNORM, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @KTR_DRM, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @CTR1(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %43, %36
  br label %55

55:                                               ; preds = %54, %19
  %56 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 0
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %55, %16
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.drm_device* @drm_get_device_from_kdev(%struct.cdev*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
