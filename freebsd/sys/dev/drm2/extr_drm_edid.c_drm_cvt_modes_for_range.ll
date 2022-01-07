; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_cvt_modes_for_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_cvt_modes_for_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.minimode = type { i32, i32, i32 }
%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_timing = type { i32 }
%struct.drm_display_mode = type { i32 }

@num_extra_modes = common dso_local global i32 0, align 4
@extra_modes = common dso_local global %struct.minimode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*, %struct.detailed_timing*)* @drm_cvt_modes_for_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_cvt_modes_for_range(%struct.drm_connector* %0, %struct.edid* %1, %struct.detailed_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca %struct.detailed_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.minimode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.edid* %1, %struct.edid** %6, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %7, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %15 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %11, align 8
  %17 = load %struct.edid*, %struct.edid** %6, align 8
  %18 = call i32 @drm_monitor_supports_rb(%struct.edid* %17)
  store i32 %18, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %67, %3
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @num_extra_modes, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %19
  %24 = load %struct.minimode*, %struct.minimode** @extra_modes, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.minimode, %struct.minimode* %24, i64 %26
  store %struct.minimode* %27, %struct.minimode** %13, align 8
  %28 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %29 = load %struct.minimode*, %struct.minimode** %13, align 8
  %30 = getelementptr inbounds %struct.minimode, %struct.minimode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.minimode*, %struct.minimode** %13, align 8
  %33 = getelementptr inbounds %struct.minimode, %struct.minimode* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.minimode*, %struct.minimode** %13, align 8
  %36 = getelementptr inbounds %struct.minimode, %struct.minimode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device* %28, i32 %31, i32 %34, i32 %37, i32 %38, i32 0, i32 0)
  store %struct.drm_display_mode* %39, %struct.drm_display_mode** %10, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %41 = icmp ne %struct.drm_display_mode* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %72

44:                                               ; preds = %23
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %46 = call i32 @fixup_mode_1366x768(%struct.drm_display_mode* %45)
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %48 = load %struct.edid*, %struct.edid** %6, align 8
  %49 = load %struct.detailed_timing*, %struct.detailed_timing** %7, align 8
  %50 = call i32 @mode_in_range(%struct.drm_display_mode* %47, %struct.edid* %48, %struct.detailed_timing* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %55 = call i32 @valid_inferred_mode(%struct.drm_connector* %53, %struct.drm_display_mode* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52, %44
  %58 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %60 = call i32 @drm_mode_destroy(%struct.drm_device* %58, %struct.drm_display_mode* %59)
  br label %67

61:                                               ; preds = %52
  %62 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %64 = call i32 @drm_mode_probed_add(%struct.drm_connector* %62, %struct.drm_display_mode* %63)
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %61, %57
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %19

70:                                               ; preds = %19
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %42
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @drm_monitor_supports_rb(%struct.edid*) #1

declare dso_local %struct.drm_display_mode* @drm_cvt_mode(%struct.drm_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @fixup_mode_1366x768(%struct.drm_display_mode*) #1

declare dso_local i32 @mode_in_range(%struct.drm_display_mode*, %struct.edid*, %struct.detailed_timing*) #1

declare dso_local i32 @valid_inferred_mode(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_destroy(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
