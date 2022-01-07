; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_idlelock_take.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_idlelock_take.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_lock_data = type { i32, i32, i32 }

@DRM_KERNEL_CONTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_idlelock_take(%struct.drm_lock_data* %0) #0 {
  %2 = alloca %struct.drm_lock_data*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_lock_data* %0, %struct.drm_lock_data** %2, align 8
  %4 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %5 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %4, i32 0, i32 1
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %8 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  %11 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %12 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %17 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %16, i32 0, i32 1
  %18 = call i32 @mtx_unlock(i32* %17)
  %19 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %20 = load i32, i32* @DRM_KERNEL_CONTEXT, align 4
  %21 = call i32 @drm_lock_take(%struct.drm_lock_data* %19, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %23 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %22, i32 0, i32 1
  %24 = call i32 @mtx_lock(i32* %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %29 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %15
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.drm_lock_data*, %struct.drm_lock_data** %2, align 8
  %33 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %32, i32 0, i32 1
  %34 = call i32 @mtx_unlock(i32* %33)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @drm_lock_take(%struct.drm_lock_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
