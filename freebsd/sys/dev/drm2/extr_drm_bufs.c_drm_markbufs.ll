; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_markbufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_markbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { %struct.drm_buf_entry* }
%struct.drm_buf_entry = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.drm_file = type { i32 }
%struct.drm_buf_desc = type { i64, i64, i32 }

@DRIVER_HAVE_DMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"%d, %d, %d\0A\00", align 1
@DRM_MIN_ORDER = common dso_local global i32 0, align 4
@DRM_MAX_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_markbufs(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.drm_buf_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_buf_entry*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_device_dma*, %struct.drm_device_dma** %13, align 8
  store %struct.drm_device_dma* %14, %struct.drm_device_dma** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_buf_desc*
  store %struct.drm_buf_desc* %16, %struct.drm_buf_desc** %9, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = load i32, i32* @DRIVER_HAVE_DMA, align 4
  %19 = call i32 @drm_core_check_feature(%struct.drm_device* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %106

24:                                               ; preds = %3
  %25 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %26 = icmp ne %struct.drm_device_dma* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %106

30:                                               ; preds = %24
  %31 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %32 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %35 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %38 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %36, i64 %39)
  %41 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %42 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @drm_order(i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @DRM_MIN_ORDER, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @DRM_MAX_ORDER, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48, %30
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %106

55:                                               ; preds = %48
  %56 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %57 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %56, i32 0, i32 0
  %58 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %58, i64 %60
  store %struct.drm_buf_entry* %61, %struct.drm_buf_entry** %11, align 8
  %62 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %63 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %55
  %67 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %68 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %71 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp sgt i64 %69, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %66, %55
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %106

77:                                               ; preds = %66
  %78 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %79 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %84 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %87 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %82, %77
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %106

93:                                               ; preds = %82
  %94 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %95 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %98 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i64 %96, i64* %99, align 8
  %100 = load %struct.drm_buf_desc*, %struct.drm_buf_desc** %9, align 8
  %101 = getelementptr inbounds %struct.drm_buf_desc, %struct.drm_buf_desc* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.drm_buf_entry*, %struct.drm_buf_entry** %11, align 8
  %104 = getelementptr inbounds %struct.drm_buf_entry, %struct.drm_buf_entry* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  store i64 %102, i64* %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %93, %90, %74, %52, %27, %21
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i64, i64) #1

declare dso_local i32 @drm_order(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
