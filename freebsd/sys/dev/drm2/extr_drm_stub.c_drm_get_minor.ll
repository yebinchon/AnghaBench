; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_get_minor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_get_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_minor = type { i32, i32, %struct.TYPE_2__*, i32*, i32, %struct.drm_device* }
%struct.TYPE_2__ = type { %struct.drm_minor* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DRM_MEM_MINOR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"dri/controlD%d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"dri/renderD%d\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dri/card%d\00", align 1
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@drm_cdevsw = common dso_local global i32 0, align 4
@DRM_DEV_UID = common dso_local global i32 0, align 4
@DRM_DEV_GID = common dso_local global i32 0, align 4
@DRM_DEV_MODE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to create cdev: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"new minor assigned %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_get_minor(%struct.drm_device* %0, %struct.drm_minor** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_minor**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_minor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_minor** %1, %struct.drm_minor*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @drm_minor_get_id(%struct.drm_device* %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load i32, i32* @DRM_MEM_MINOR, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = load i32, i32* @M_ZERO, align 4
  %24 = or i32 %22, %23
  %25 = call %struct.drm_minor* @malloc(i32 40, i32 %21, i32 %24)
  store %struct.drm_minor* %25, %struct.drm_minor** %8, align 8
  %26 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %27 = icmp ne %struct.drm_minor* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %81

31:                                               ; preds = %20
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %34 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %36 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %37 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %36, i32 0, i32 5
  store %struct.drm_device* %35, %struct.drm_device** %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %40 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %42 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %41, i32 0, i32 4
  %43 = call i32 @INIT_LIST_HEAD(i32* %42)
  %44 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %45 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %49 [
    i32 129, label %47
    i32 128, label %48
  ]

47:                                               ; preds = %31
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %50

48:                                               ; preds = %31
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %50

49:                                               ; preds = %31
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %50

50:                                               ; preds = %49, %48, %47
  %51 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %52 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %55 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %54, i32 0, i32 2
  %56 = load i32, i32* @DRM_DEV_UID, align 4
  %57 = load i32, i32* @DRM_DEV_GID, align 4
  %58 = load i32, i32* @DRM_DEV_MODE, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @make_dev_p(i32 %53, %struct.TYPE_2__** %55, i32* @drm_cdevsw, i32 0, i32 %56, i32 %57, i32 %58, i8* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %77

67:                                               ; preds = %50
  %68 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %69 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %70 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store %struct.drm_minor* %68, %struct.drm_minor** %72, align 8
  %73 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %74 = load %struct.drm_minor**, %struct.drm_minor*** %6, align 8
  store %struct.drm_minor* %73, %struct.drm_minor** %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  store i32 0, i32* %4, align 4
  br label %84

77:                                               ; preds = %64
  %78 = load %struct.drm_minor*, %struct.drm_minor** %8, align 8
  %79 = load i32, i32* @DRM_MEM_MINOR, align 4
  %80 = call i32 @free(%struct.drm_minor* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %28
  %82 = load %struct.drm_minor**, %struct.drm_minor*** %6, align 8
  store %struct.drm_minor* null, %struct.drm_minor** %82, align 8
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %67, %18
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @drm_minor_get_id(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_minor* @malloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @make_dev_p(i32, %struct.TYPE_2__**, i32*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @free(%struct.drm_minor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
