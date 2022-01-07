; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_pre_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_mm.c_drm_mm_pre_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm = type { i32, i32, i32 }
%struct.drm_mm_node = type { i32 }

@MM_UNUSED_TARGET = common dso_local global i32 0, align 4
@DRM_MEM_MM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mm_pre_get(%struct.drm_mm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_mm*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_mm* %0, %struct.drm_mm** %3, align 8
  %6 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %7 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %6, i32 0, i32 1
  %8 = call i32 @mtx_lock(i32* %7)
  br label %9

9:                                                ; preds = %47, %1
  %10 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %11 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MM_UNUSED_TARGET, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %17 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %16, i32 0, i32 1
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load i32, i32* @DRM_MEM_MM, align 4
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.drm_mm_node* @malloc(i32 4, i32 %19, i32 %22)
  store %struct.drm_mm_node* %23, %struct.drm_mm_node** %4, align 8
  %24 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %25 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %24, i32 0, i32 1
  %26 = call i32 @mtx_lock(i32* %25)
  %27 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %28 = icmp eq %struct.drm_mm_node* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %15
  %33 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %34 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  store i32 %42, i32* %5, align 4
  %43 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %44 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %43, i32 0, i32 1
  %45 = call i32 @mtx_unlock(i32* %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %61

47:                                               ; preds = %15
  %48 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %49 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %53 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %52, i32 0, i32 0
  %54 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %55 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %54, i32 0, i32 2
  %56 = call i32 @list_add_tail(i32* %53, i32* %55)
  br label %9

57:                                               ; preds = %9
  %58 = load %struct.drm_mm*, %struct.drm_mm** %3, align 8
  %59 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %58, i32 0, i32 1
  %60 = call i32 @mtx_unlock(i32* %59)
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %57, %41
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.drm_mm_node* @malloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
