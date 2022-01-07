; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_addmap_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_addmap_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_map = type { i64, i8*, i32, i32, i32 }
%struct.drm_map_list = type { i64 }

@DRM_CURPROC = common dso_local global i32 0, align 4
@_DRM_AGP = common dso_local global i64 0, align 8
@_DRM_SHM = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_addmap_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_map*, align 8
  %9 = alloca %struct.drm_map_list*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_map*
  store %struct.drm_map* %12, %struct.drm_map** %8, align 8
  %13 = load i32, i32* @DRM_CURPROC, align 4
  %14 = call i64 @DRM_SUSER(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %3
  %17 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %18 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @_DRM_AGP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %31, label %22

22:                                               ; preds = %16
  %23 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %24 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @_DRM_SHM, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @EPERM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %57

31:                                               ; preds = %22, %16, %3
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %34 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %37 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %40 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %43 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @drm_addmap_core(%struct.drm_device* %32, i32 %35, i32 %38, i64 %41, i32 %44, %struct.drm_map_list** %9)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %31
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %57

50:                                               ; preds = %31
  %51 = load %struct.drm_map_list*, %struct.drm_map_list** %9, align 8
  %52 = getelementptr inbounds %struct.drm_map_list, %struct.drm_map_list* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.drm_map*, %struct.drm_map** %8, align 8
  %56 = getelementptr inbounds %struct.drm_map, %struct.drm_map* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %48, %28
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @DRM_SUSER(i32) #1

declare dso_local i32 @drm_addmap_core(%struct.drm_device*, i32, i32, i64, i32, %struct.drm_map_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
