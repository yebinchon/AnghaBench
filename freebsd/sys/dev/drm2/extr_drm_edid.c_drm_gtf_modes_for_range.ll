; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_gtf_modes_for_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_gtf_modes_for_range.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*, %struct.detailed_timing*)* @drm_gtf_modes_for_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_gtf_modes_for_range(%struct.drm_connector* %0, %struct.edid* %1, %struct.detailed_timing* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.edid*, align 8
  %7 = alloca %struct.detailed_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.minimode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store %struct.edid* %1, %struct.edid** %6, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %11, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %63, %3
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @num_extra_modes, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %16
  %21 = load %struct.minimode*, %struct.minimode** @extra_modes, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.minimode, %struct.minimode* %21, i64 %23
  store %struct.minimode* %24, %struct.minimode** %12, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %26 = load %struct.minimode*, %struct.minimode** %12, align 8
  %27 = getelementptr inbounds %struct.minimode, %struct.minimode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.minimode*, %struct.minimode** %12, align 8
  %30 = getelementptr inbounds %struct.minimode, %struct.minimode* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.minimode*, %struct.minimode** %12, align 8
  %33 = getelementptr inbounds %struct.minimode, %struct.minimode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.drm_display_mode* @drm_gtf_mode(%struct.drm_device* %25, i32 %28, i32 %31, i32 %34, i32 0, i32 0)
  store %struct.drm_display_mode* %35, %struct.drm_display_mode** %10, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %37 = icmp ne %struct.drm_display_mode* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %20
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %68

40:                                               ; preds = %20
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %42 = call i32 @fixup_mode_1366x768(%struct.drm_display_mode* %41)
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %44 = load %struct.edid*, %struct.edid** %6, align 8
  %45 = load %struct.detailed_timing*, %struct.detailed_timing** %7, align 8
  %46 = call i32 @mode_in_range(%struct.drm_display_mode* %43, %struct.edid* %44, %struct.detailed_timing* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %51 = call i32 @valid_inferred_mode(%struct.drm_connector* %49, %struct.drm_display_mode* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %48, %40
  %54 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %56 = call i32 @drm_mode_destroy(%struct.drm_device* %54, %struct.drm_display_mode* %55)
  br label %63

57:                                               ; preds = %48
  %58 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %60 = call i32 @drm_mode_probed_add(%struct.drm_connector* %58, %struct.drm_display_mode* %59)
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %57, %53
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %16

66:                                               ; preds = %16
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %66, %38
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.drm_display_mode* @drm_gtf_mode(%struct.drm_device*, i32, i32, i32, i32, i32) #1

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
