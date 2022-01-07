; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_scatter.c_drm_sg_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_scatter.c_drm_sg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_sg_mem* }
%struct.drm_sg_mem = type { i64 }
%struct.drm_file = type { i32 }
%struct.drm_scatter_gather = type { i64 }

@DRIVER_SG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"free 0x%zx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sg_free(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_scatter_gather*, align 8
  %9 = alloca %struct.drm_sg_mem*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_scatter_gather*
  store %struct.drm_scatter_gather* %11, %struct.drm_scatter_gather** %8, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = load i32, i32* @DRIVER_SG, align 4
  %14 = call i32 @drm_core_check_feature(%struct.drm_device* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %21, align 8
  store %struct.drm_sg_mem* %22, %struct.drm_sg_mem** %9, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  store %struct.drm_sg_mem* null, %struct.drm_sg_mem** %24, align 8
  %25 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %26 = icmp ne %struct.drm_sg_mem* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %29 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drm_scatter_gather*, %struct.drm_scatter_gather** %8, align 8
  %32 = getelementptr inbounds %struct.drm_scatter_gather, %struct.drm_scatter_gather* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %27, %19
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %40 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %9, align 8
  %44 = call i32 @drm_sg_cleanup(%struct.drm_sg_mem* %43)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %35, %16
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64) #1

declare dso_local i32 @drm_sg_cleanup(%struct.drm_sg_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
