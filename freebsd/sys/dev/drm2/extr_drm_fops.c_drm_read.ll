; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fops.c_drm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cdev = type { i32 }
%struct.uio = type { i32 }
%struct.drm_file = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.drm_pending_event = type { i32 (%struct.drm_pending_event*)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"can't find authenticator\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i64 0, align 8
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"drmrea\00", align 1
@KTR_DRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"drm_event_dequeued %d %d %d\00", align 1
@curproc = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.drm_pending_event*, align 8
  %11 = alloca i64, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast %struct.drm_file** %8 to i8**
  %13 = call i64 @devfs_get_cdevpriv(i8** %12)
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %104

19:                                               ; preds = %3
  %20 = load %struct.cdev*, %struct.cdev** %5, align 8
  %21 = call %struct.drm_device* @drm_get_device_from_kdev(%struct.cdev* %20)
  store %struct.drm_device* %21, %struct.drm_device** %9, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = call i32 @mtx_lock(i32* %23)
  br label %25

25:                                               ; preds = %47, %19
  %26 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %27 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %26, i32 0, i32 1
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @O_NONBLOCK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i64, i64* @EAGAIN, align 8
  store i64 %36, i64* %11, align 8
  br label %98

37:                                               ; preds = %30
  %38 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %39 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %38, i32 0, i32 0
  %40 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 0
  %42 = load i32, i32* @PCATCH, align 4
  %43 = call i64 @msleep(i32* %39, i32* %41, i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %98

47:                                               ; preds = %37
  br label %25

48:                                               ; preds = %25
  br label %49

49:                                               ; preds = %93, %48
  %50 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %51 = load %struct.uio*, %struct.uio** %6, align 8
  %52 = call i64 @drm_dequeue_event(%struct.drm_file* %50, %struct.uio* %51, %struct.drm_pending_event** %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %49
  %55 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %56 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %55, i32 0, i32 0
  %57 = call i32 @mtx_unlock(i32* %56)
  %58 = load %struct.drm_pending_event*, %struct.drm_pending_event** %10, align 8
  %59 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load %struct.drm_pending_event*, %struct.drm_pending_event** %10, align 8
  %62 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.uio*, %struct.uio** %6, align 8
  %67 = call i64 @uiomove(%struct.TYPE_3__* %60, i32 %65, %struct.uio* %66)
  store i64 %67, i64* %11, align 8
  %68 = load i32, i32* @KTR_DRM, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curproc, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_pending_event*, %struct.drm_pending_event** %10, align 8
  %73 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_pending_event*, %struct.drm_pending_event** %10, align 8
  %78 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %77, i32 0, i32 1
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @CTR3(i32 %68, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %76, i32 %81)
  %83 = load %struct.drm_pending_event*, %struct.drm_pending_event** %10, align 8
  %84 = getelementptr inbounds %struct.drm_pending_event, %struct.drm_pending_event* %83, i32 0, i32 0
  %85 = load i32 (%struct.drm_pending_event*)*, i32 (%struct.drm_pending_event*)** %84, align 8
  %86 = load %struct.drm_pending_event*, %struct.drm_pending_event** %10, align 8
  %87 = call i32 %85(%struct.drm_pending_event* %86)
  %88 = load i64, i64* %11, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %54
  %91 = load i64, i64* %11, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %4, align 4
  br label %104

93:                                               ; preds = %54
  %94 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %95 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %94, i32 0, i32 0
  %96 = call i32 @mtx_lock(i32* %95)
  br label %49

97:                                               ; preds = %49
  br label %98

98:                                               ; preds = %97, %46, %35
  %99 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %100 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %99, i32 0, i32 0
  %101 = call i32 @mtx_unlock(i32* %100)
  %102 = load i64, i64* %11, align 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %98, %90, %16
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i64 @devfs_get_cdevpriv(i8**) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local %struct.drm_device* @drm_get_device_from_kdev(%struct.cdev*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i64 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i64 @drm_dequeue_event(%struct.drm_file*, %struct.uio*, %struct.drm_pending_event**) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @uiomove(%struct.TYPE_3__*, i32, %struct.uio*) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
