; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_freebufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_bufs.c_drm_freebufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_device_dma* }
%struct.drm_device_dma = type { i32, %struct.drm_buf** }
%struct.drm_buf = type { %struct.drm_file* }
%struct.drm_file = type { i32 }
%struct.drm_buf_free = type { i32, i32* }

@DRIVER_HAVE_DMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Index %d (of %d max)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Process %d freeing buffer not owned\0A\00", align 1
@DRM_CURRENTPID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_freebufs(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device_dma*, align 8
  %9 = alloca %struct.drm_buf_free*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.drm_buf*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.drm_device_dma*, %struct.drm_device_dma** %14, align 8
  store %struct.drm_device_dma* %15, %struct.drm_device_dma** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.drm_buf_free*
  store %struct.drm_buf_free* %17, %struct.drm_buf_free** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = load i32, i32* @DRIVER_HAVE_DMA, align 4
  %20 = call i32 @drm_core_check_feature(%struct.drm_device* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %98

25:                                               ; preds = %3
  %26 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %27 = icmp ne %struct.drm_device_dma* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %98

31:                                               ; preds = %25
  %32 = load %struct.drm_buf_free*, %struct.drm_buf_free** %9, align 8
  %33 = getelementptr inbounds %struct.drm_buf_free, %struct.drm_buf_free* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %94, %31
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.drm_buf_free*, %struct.drm_buf_free** %9, align 8
  %39 = getelementptr inbounds %struct.drm_buf_free, %struct.drm_buf_free* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %97

42:                                               ; preds = %36
  %43 = load %struct.drm_buf_free*, %struct.drm_buf_free** %9, align 8
  %44 = getelementptr inbounds %struct.drm_buf_free, %struct.drm_buf_free* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i64 @copy_from_user(i32* %11, i32* %48, i32 4)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %98

54:                                               ; preds = %42
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %60 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %66 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %98

72:                                               ; preds = %57
  %73 = load %struct.drm_device_dma*, %struct.drm_device_dma** %8, align 8
  %74 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %73, i32 0, i32 1
  %75 = load %struct.drm_buf**, %struct.drm_buf*** %74, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %75, i64 %77
  %79 = load %struct.drm_buf*, %struct.drm_buf** %78, align 8
  store %struct.drm_buf* %79, %struct.drm_buf** %12, align 8
  %80 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %81 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %80, i32 0, i32 0
  %82 = load %struct.drm_file*, %struct.drm_file** %81, align 8
  %83 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %84 = icmp ne %struct.drm_file* %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %72
  %86 = load i32, i32* @DRM_CURRENTPID, align 4
  %87 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %4, align 4
  br label %98

90:                                               ; preds = %72
  %91 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %92 = load %struct.drm_buf*, %struct.drm_buf** %12, align 8
  %93 = call i32 @drm_free_buffer(%struct.drm_device* %91, %struct.drm_buf* %92)
  br label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %36

97:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %97, %85, %63, %51, %28, %22
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i64 @copy_from_user(i32*, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @drm_free_buffer(%struct.drm_device*, %struct.drm_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
