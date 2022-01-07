; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_mode_find_dmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_mode_find_dmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32 }
%struct.drm_device = type { i32 }

@drm_num_dmt_modes = common dso_local global i32 0, align 4
@drm_dmt_modes = common dso_local global %struct.drm_display_mode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @drm_mode_find_dmt(%struct.drm_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %52, %5
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @drm_num_dmt_modes, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %14
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** @drm_dmt_modes, align 8
  %20 = load i32, i32* %12, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i64 %21
  store %struct.drm_display_mode* %22, %struct.drm_display_mode** %13, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %52

29:                                               ; preds = %18
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %52

36:                                               ; preds = %29
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %39 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %38)
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %52

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %45 = call i32 @mode_is_rb(%struct.drm_display_mode* %44)
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %52

48:                                               ; preds = %42
  %49 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %13, align 8
  %51 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %49, %struct.drm_display_mode* %50)
  store %struct.drm_display_mode* %51, %struct.drm_display_mode** %6, align 8
  br label %56

52:                                               ; preds = %47, %41, %35, %28
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %14

55:                                               ; preds = %14
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %6, align 8
  br label %56

56:                                               ; preds = %55, %48
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  ret %struct.drm_display_mode* %57
}

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @mode_is_rb(%struct.drm_display_mode*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
