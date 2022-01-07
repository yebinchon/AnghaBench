; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_mode_create_from_cmdline_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_mode_create_from_cmdline_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_cmdline_mode = type { i32, i32, i32, i64, i32, i32, i32, i64 }

@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_mode_create_from_cmdline_mode(%struct.drm_device* %0, %struct.drm_cmdline_mode* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_cmdline_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_cmdline_mode* %1, %struct.drm_cmdline_mode** %5, align 8
  %7 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %8 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %2
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %14 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %17 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %11
  %24 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %25 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  br label %28

27:                                               ; preds = %11
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 60, %27 ]
  %30 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %31 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %12, i32 %15, i32 %18, i32 %29, i32 %32, i32 %35, i32 %38)
  store %struct.drm_display_mode* %39, %struct.drm_display_mode** %6, align 8
  br label %66

40:                                               ; preds = %2
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %43 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %46 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %40
  %53 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %54 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  br label %57

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32 [ %55, %52 ], [ 60, %56 ]
  %59 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %5, align 8
  %63 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.drm_display_mode* @drm_gtf_mode(%struct.drm_device* %41, i32 %44, i32 %47, i32 %58, i32 %61, i32 %64)
  store %struct.drm_display_mode* %65, %struct.drm_display_mode** %6, align 8
  br label %66

66:                                               ; preds = %57, %28
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %68 = icmp ne %struct.drm_display_mode* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  br label %75

70:                                               ; preds = %66
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %72 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %73 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %71, i32 %72)
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %74, %struct.drm_display_mode** %3, align 8
  br label %75

75:                                               ; preds = %70, %69
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  ret %struct.drm_display_mode* %76
}

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_gtf_mode(%struct.drm_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
