; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_mode_in_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_mode_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i64, i32 }
%struct.edid = type { i32 }
%struct.detailed_timing = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_display_mode*, %struct.edid*, %struct.detailed_timing*)* @mode_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_in_range(%struct.drm_display_mode* %0, %struct.edid* %1, %struct.detailed_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca %struct.detailed_timing*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %5, align 8
  store %struct.edid* %1, %struct.edid** %6, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %7, align 8
  %10 = load %struct.detailed_timing*, %struct.detailed_timing** %7, align 8
  %11 = bitcast %struct.detailed_timing* %10 to i32*
  store i32* %11, i32** %9, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = load %struct.edid*, %struct.edid** %6, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @mode_in_hsync_range(%struct.drm_display_mode* %12, %struct.edid* %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %80

18:                                               ; preds = %3
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = load %struct.edid*, %struct.edid** %6, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @mode_in_vsync_range(%struct.drm_display_mode* %19, %struct.edid* %20, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %80

25:                                               ; preds = %18
  %26 = load %struct.edid*, %struct.edid** %6, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @range_pixel_clock(%struct.edid* %26, i32* %27)
  store i64 %28, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %80

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %25
  %39 = load %struct.edid*, %struct.edid** %6, align 8
  %40 = getelementptr inbounds %struct.edid, %struct.edid* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 4
  br i1 %42, label %43, label %70

43:                                               ; preds = %38
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 10
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 4
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 13
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %55 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 13
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 12
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 3
  %64 = mul nsw i32 256, %63
  %65 = add nsw i32 %59, %64
  %66 = mul nsw i32 8, %65
  %67 = icmp sgt i32 %56, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %80

69:                                               ; preds = %53, %48
  br label %70

70:                                               ; preds = %69, %43, %38
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %72 = call i64 @mode_is_rb(%struct.drm_display_mode* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.edid*, %struct.edid** %6, align 8
  %76 = call i32 @drm_monitor_supports_rb(%struct.edid* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %80

79:                                               ; preds = %74, %70
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78, %68, %36, %24, %17
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mode_in_hsync_range(%struct.drm_display_mode*, %struct.edid*, i32*) #1

declare dso_local i32 @mode_in_vsync_range(%struct.drm_display_mode*, %struct.edid*, i32*) #1

declare dso_local i64 @range_pixel_clock(%struct.edid*, i32*) #1

declare dso_local i64 @mode_is_rb(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_monitor_supports_rb(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
