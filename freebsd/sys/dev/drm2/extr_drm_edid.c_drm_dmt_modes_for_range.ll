; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_dmt_modes_for_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_dmt_modes_for_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.edid = type { i32 }
%struct.detailed_timing = type { i32 }
%struct.drm_display_mode = type { i32 }

@drm_num_dmt_modes = common dso_local global i32 0, align 4
@drm_dmt_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*, %struct.detailed_timing*)* @drm_dmt_modes_for_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_dmt_modes_for_range(%struct.drm_connector* %0, %struct.edid* %1, %struct.detailed_timing* %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca %struct.detailed_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.drm_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  store %struct.detailed_timing* %2, %struct.detailed_timing** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %10, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %52, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @drm_num_dmt_modes, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load i32*, i32** @drm_dmt_modes, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.edid*, %struct.edid** %5, align 8
  %24 = load %struct.detailed_timing*, %struct.detailed_timing** %6, align 8
  %25 = call i64 @mode_in_range(i32* %22, %struct.edid* %23, %struct.detailed_timing* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %18
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = load i32*, i32** @drm_dmt_modes, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i64 @valid_inferred_mode(%struct.drm_connector* %28, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %37 = load i32*, i32** @drm_dmt_modes, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %36, i32* %40)
  store %struct.drm_display_mode* %41, %struct.drm_display_mode** %9, align 8
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %43 = icmp ne %struct.drm_display_mode* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %47 = call i32 @drm_mode_probed_add(%struct.drm_connector* %45, %struct.drm_display_mode* %46)
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %35
  br label %51

51:                                               ; preds = %50, %27, %18
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %14

55:                                               ; preds = %14
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local i64 @mode_in_range(i32*, %struct.edid*, %struct.detailed_timing*) #1

declare dso_local i64 @valid_inferred_mode(%struct.drm_connector*, i32*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
