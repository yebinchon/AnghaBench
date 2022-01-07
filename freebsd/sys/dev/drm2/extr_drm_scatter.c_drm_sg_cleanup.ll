; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_scatter.c_drm_sg_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_scatter.c_drm_sg_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_sg_mem = type { i64, %struct.drm_sg_mem*, i32 }

@DRM_MEM_SGLISTS = common dso_local global i32 0, align 4
@DRM_MEM_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_sg_cleanup(%struct.drm_sg_mem* %0) #0 {
  %2 = alloca %struct.drm_sg_mem*, align 8
  store %struct.drm_sg_mem* %0, %struct.drm_sg_mem** %2, align 8
  %3 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %2, align 8
  %4 = icmp eq %struct.drm_sg_mem* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %29

6:                                                ; preds = %1
  %7 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %2, align 8
  %8 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %2, align 8
  %13 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %2, align 8
  %16 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @IDX_TO_OFF(i32 %17)
  %19 = call i32 @kmem_free(i64 %14, i32 %18)
  br label %20

20:                                               ; preds = %11, %6
  %21 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %2, align 8
  %22 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %21, i32 0, i32 1
  %23 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %22, align 8
  %24 = load i32, i32* @DRM_MEM_SGLISTS, align 4
  %25 = call i32 @free(%struct.drm_sg_mem* %23, i32 %24)
  %26 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %2, align 8
  %27 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %28 = call i32 @free(%struct.drm_sg_mem* %26, i32 %27)
  br label %29

29:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @kmem_free(i64, i32) #1

declare dso_local i32 @IDX_TO_OFF(i32) #1

declare dso_local i32 @free(%struct.drm_sg_mem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
