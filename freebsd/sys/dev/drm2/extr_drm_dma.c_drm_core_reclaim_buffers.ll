; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dma.c_drm_core_reclaim_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_dma.c_drm_core_reclaim_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, %struct.drm_file* }
%struct.drm_file = type { i32 }

@DRM_LIST_RECLAIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_core_reclaim_buffers(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_device_dma*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  store %struct.drm_device_dma* %9, %struct.drm_device_dma** %5, align 8
  %10 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %11 = icmp ne %struct.drm_device_dma* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %68

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %65, %13
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %14
  %21 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.drm_file*, %struct.drm_file** %28, align 8
  %30 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %31 = icmp eq %struct.drm_file* %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %20
  %33 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %34 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %35, i64 %37
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %62 [
    i32 129, label %42
    i32 128, label %52
  ]

42:                                               ; preds = %32
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %45 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %46, i64 %48
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = call i32 @drm_free_buffer(%struct.drm_device* %43, %struct.TYPE_2__* %50)
  br label %63

52:                                               ; preds = %32
  %53 = load i32, i32* @DRM_LIST_RECLAIM, align 4
  %54 = load %struct.drm_device_dma*, %struct.drm_device_dma** %5, align 8
  %55 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %56, i64 %58
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %53, i32* %61, align 8
  br label %63

62:                                               ; preds = %32
  br label %63

63:                                               ; preds = %62, %52, %42
  br label %64

64:                                               ; preds = %63, %20
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %14

68:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @drm_free_buffer(%struct.drm_device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
