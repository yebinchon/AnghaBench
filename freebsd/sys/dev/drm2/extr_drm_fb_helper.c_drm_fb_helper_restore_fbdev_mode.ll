; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_restore_fbdev_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_restore_fbdev_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_mode_set }
%struct.drm_mode_set = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.drm_mode_set*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_restore_fbdev_mode(%struct.drm_fb_helper* %0) #0 {
  %2 = alloca %struct.drm_fb_helper*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_mode_set*, align 8
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %34, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %10 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %2, align 8
  %15 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.drm_mode_set* %20, %struct.drm_mode_set** %6, align 8
  %21 = load %struct.drm_mode_set*, %struct.drm_mode_set** %6, align 8
  %22 = getelementptr inbounds %struct.drm_mode_set, %struct.drm_mode_set* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.drm_mode_set*)*, i32 (%struct.drm_mode_set*)** %26, align 8
  %28 = load %struct.drm_mode_set*, %struct.drm_mode_set** %6, align 8
  %29 = call i32 %27(%struct.drm_mode_set* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %13
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %7

37:                                               ; preds = %7
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
