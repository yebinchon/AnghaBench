; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_legacy_fb_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_mode_legacy_fb_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DRM_FORMAT_C8 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB1555 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB565 = common dso_local global i32 0, align 4
@DRM_FORMAT_RGB888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB8888 = common dso_local global i32 0, align 4
@DRM_FORMAT_XRGB2101010 = common dso_local global i32 0, align 4
@DRM_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"bad bpp, assuming x8r8g8b8 pixel format\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_legacy_fb_format(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %33 [
    i32 8, label %7
    i32 16, label %9
    i32 24, label %17
    i32 32, label %19
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @DRM_FORMAT_C8, align 4
  store i32 %8, i32* %5, align 4
  br label %36

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 15
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @DRM_FORMAT_XRGB1555, align 4
  store i32 %13, i32* %5, align 4
  br label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @DRM_FORMAT_RGB565, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %12
  br label %36

17:                                               ; preds = %2
  %18 = load i32, i32* @DRM_FORMAT_RGB888, align 4
  store i32 %18, i32* %5, align 4
  br label %36

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 24
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  store i32 %23, i32* %5, align 4
  br label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 30
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @DRM_FORMAT_XRGB2101010, align 4
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @DRM_FORMAT_ARGB8888, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %27
  br label %32

32:                                               ; preds = %31, %22
  br label %36

33:                                               ; preds = %2
  %34 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @DRM_FORMAT_XRGB8888, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %32, %17, %16, %7
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
