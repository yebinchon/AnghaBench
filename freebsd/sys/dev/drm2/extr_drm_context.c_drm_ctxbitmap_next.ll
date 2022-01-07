; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_ctxbitmap_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_ctxbitmap_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_local_map**, i32* }
%struct.drm_local_map = type { i32 }

@DRM_MAX_CTXBITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bit : %d\0A\00", align 1
@DRM_MEM_SAREA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to allocate bit : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*)* @drm_ctxbitmap_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_ctxbitmap_next(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_local_map**, align 8
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call i32 @DRM_LOCK(%struct.drm_device* %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* @DRM_MAX_CTXBITMAP, align 4
  %19 = call i32 @find_first_zero_bit(i32* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DRM_MAX_CTXBITMAP, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call i32 @DRM_UNLOCK(%struct.drm_device* %24)
  store i32 -1, i32* %2, align 4
  br label %82

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %29 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @set_bit(i32 %27, i32* %30)
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %26
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %43, i32 0, i32 1
  %45 = load %struct.drm_local_map**, %struct.drm_local_map*** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = load i32, i32* @DRM_MEM_SAREA, align 4
  %51 = load i32, i32* @M_NOWAIT, align 4
  %52 = call %struct.drm_local_map** @realloc(%struct.drm_local_map** %45, i32 %49, i32 %50, i32 %51)
  store %struct.drm_local_map** %52, %struct.drm_local_map*** %5, align 8
  %53 = load %struct.drm_local_map**, %struct.drm_local_map*** %5, align 8
  %54 = icmp eq %struct.drm_local_map** %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %40
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %58 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @clear_bit(i32 %56, i32* %59)
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %64 = call i32 @DRM_UNLOCK(%struct.drm_device* %63)
  store i32 -1, i32* %2, align 4
  br label %82

65:                                               ; preds = %40
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.drm_local_map**, %struct.drm_local_map*** %5, align 8
  %70 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 1
  store %struct.drm_local_map** %69, %struct.drm_local_map*** %71, align 8
  %72 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %73 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %72, i32 0, i32 1
  %74 = load %struct.drm_local_map**, %struct.drm_local_map*** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.drm_local_map*, %struct.drm_local_map** %74, i64 %76
  store %struct.drm_local_map* null, %struct.drm_local_map** %77, align 8
  br label %78

78:                                               ; preds = %65, %26
  %79 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %80 = call i32 @DRM_UNLOCK(%struct.drm_device* %79)
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %55, %23, %11
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local i32 @find_first_zero_bit(i32*, i32) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local %struct.drm_local_map** @realloc(%struct.drm_local_map**, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
