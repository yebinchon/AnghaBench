; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32*, %struct.resource**, i32 }
%struct.resource = type { i32 }

@DRM_MAX_PCI_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Resource %d too large\0A\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Couldn't find resource 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @drm_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_alloc_resource(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @DRM_MAX_PCI_RESOURCE, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %12)
  store i32 1, i32* %3, align 4
  br label %63

14:                                               ; preds = %2
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 1
  %17 = load %struct.resource**, %struct.resource*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.resource*, %struct.resource** %17, i64 %19
  %21 = load %struct.resource*, %struct.resource** %20, align 8
  %22 = icmp ne %struct.resource* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %63

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @PCIR_BAR(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SYS_RES_MEMORY, align 4
  %31 = load i32, i32* @RF_SHAREABLE, align 4
  %32 = call %struct.resource* @bus_alloc_resource_any(i32 %29, i32 %30, i32* %7, i32 %31)
  store %struct.resource* %32, %struct.resource** %6, align 8
  %33 = load %struct.resource*, %struct.resource** %6, align 8
  %34 = icmp eq %struct.resource* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 1, i32* %3, align 4
  br label %63

38:                                               ; preds = %24
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %39, i32 0, i32 1
  %41 = load %struct.resource**, %struct.resource*** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.resource*, %struct.resource** %41, i64 %43
  %45 = load %struct.resource*, %struct.resource** %44, align 8
  %46 = icmp eq %struct.resource* %45, null
  br i1 %46, label %47, label %62

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %50 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %57 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %56, i32 0, i32 1
  %58 = load %struct.resource**, %struct.resource*** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.resource*, %struct.resource** %58, i64 %60
  store %struct.resource* %55, %struct.resource** %61, align 8
  br label %62

62:                                               ; preds = %47, %38
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %35, %23, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local %struct.resource* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
