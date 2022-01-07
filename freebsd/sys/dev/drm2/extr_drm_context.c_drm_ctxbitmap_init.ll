; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_ctxbitmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_ctxbitmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DRM_MEM_CTXBITMAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_RESERVED_CONTEXTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"drm_ctxbitmap_init : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ctxbitmap_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = call i32 @DRM_LOCK(%struct.drm_device* %6)
  %8 = load i32, i32* @PAGE_SIZE, align 4
  %9 = load i32, i32* @DRM_MEM_CTXBITMAP, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call i32* @malloc(i32 %8, i32 %9, i32 %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = call i32 @DRM_UNLOCK(%struct.drm_device* %21)
  %23 = load i32, i32* @ENOMEM, align 4
  store i32 %23, i32* %2, align 4
  br label %44

24:                                               ; preds = %1
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  store i32 -1, i32* %28, align 8
  %29 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %30 = call i32 @DRM_UNLOCK(%struct.drm_device* %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %40, %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @DRM_RESERVED_CONTEXTS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %37 = call i32 @drm_ctxbitmap_next(%struct.drm_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %31

43:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

declare dso_local i32 @drm_ctxbitmap_next(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
