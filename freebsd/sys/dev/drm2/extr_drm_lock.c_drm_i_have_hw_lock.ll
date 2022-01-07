; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_i_have_hw_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_i_have_hw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i64, %struct.drm_master* }
%struct.drm_master = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_file*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_i_have_hw_lock(%struct.drm_device* %0, %struct.drm_file* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_file*, align 8
  %5 = alloca %struct.drm_master*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_file* %1, %struct.drm_file** %4, align 8
  %6 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %7 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %6, i32 0, i32 1
  %8 = load %struct.drm_master*, %struct.drm_master** %7, align 8
  store %struct.drm_master* %8, %struct.drm_master** %5, align 8
  %9 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %10 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  %14 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %15 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %21 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @_DRM_LOCK_IS_HELD(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.drm_master*, %struct.drm_master** %5, align 8
  %30 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.drm_file*, %struct.drm_file** %31, align 8
  %33 = load %struct.drm_file*, %struct.drm_file** %4, align 8
  %34 = icmp eq %struct.drm_file* %32, %33
  br label %35

35:                                               ; preds = %28, %19, %13, %2
  %36 = phi i1 [ false, %19 ], [ false, %13 ], [ false, %2 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local i64 @_DRM_LOCK_IS_HELD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
