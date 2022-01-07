; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_fixup_mode_1366x768.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_fixup_mode_1366x768.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_display_mode*)* @fixup_mode_1366x768 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_mode_1366x768(%struct.drm_display_mode* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %2, align 8
  %3 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %4 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 1368
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %9 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 768
  br i1 %11, label %12, label %25

12:                                               ; preds = %7
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  store i32 1366, i32* %14, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %24 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %23)
  br label %25

25:                                               ; preds = %12, %7, %1
  ret void
}

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
