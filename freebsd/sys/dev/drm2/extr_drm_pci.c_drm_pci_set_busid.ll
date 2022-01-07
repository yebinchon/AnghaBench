; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_set_busid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pci_set_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32, i32, i32 }
%struct.drm_master = type { i32, i32, i32* }

@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"pci:%04x:%02x:%02x.%d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"buffer overflow\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_pci_set_busid(%struct.drm_device* %0, %struct.drm_master* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_master*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_master* %1, %struct.drm_master** %5, align 8
  %8 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %9 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %8, i32 0, i32 0
  store i32 40, i32* %9, align 8
  %10 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %11 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %14 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %16 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i32* @malloc(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %22 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %24 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %66

30:                                               ; preds = %2
  %31 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %32 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %35 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %47 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @snprintf(i32* %33, i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %52 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %30
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %64

59:                                               ; preds = %30
  %60 = load i32, i32* %6, align 4
  %61 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %62 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %63, %27
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
