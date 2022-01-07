; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_mode_cea_vic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_mode_cea_vic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }

@drm_num_cea_modes = common dso_local global i64 0, align 8
@edid_cea_modes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @drm_mode_cea_vic(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @drm_num_cea_modes, align 8
  %8 = icmp ult i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %11 = load i32*, i32** @edid_cea_modes, align 8
  %12 = load i64, i64* %4, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i64 @drm_mode_equal(%struct.drm_display_mode* %10, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %2, align 8
  br label %24

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  br label %5

23:                                               ; preds = %5
  store i64 0, i64* %2, align 8
  br label %24

24:                                               ; preds = %23, %16
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

declare dso_local i64 @drm_mode_equal(%struct.drm_display_mode*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
