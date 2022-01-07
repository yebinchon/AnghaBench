; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_platform.c_drm_platform_set_busid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_platform.c_drm_platform_set_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.drm_master = type { i32, i32, i32* }

@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"platform:%s:%02d\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unique buffer overflowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_master*)* @drm_platform_set_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_platform_set_busid(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_master* %1, %struct.drm_master** %5, align 8
  %9 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = add nsw i32 13, %14
  %16 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %17 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %19 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %22 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %24 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  %27 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call i32* @malloc(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %31 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %30, i32 0, i32 2
  store i32* %29, i32** %31, align 8
  %32 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %33 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %69

39:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %45 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %48 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %51 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @snprintf(i32* %46, i32 %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %59 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %43
  %63 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %67

66:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %69

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %66, %36
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
