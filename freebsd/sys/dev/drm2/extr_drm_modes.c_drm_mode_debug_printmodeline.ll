; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_mode_debug_printmodeline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_mode_debug_printmodeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [58 x i8] c"Modeline %d:\22%s\22 %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_debug_printmodeline(%struct.drm_display_mode* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %2, align 8
  %3 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %4 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %3, i32 0, i32 13
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %8 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 10
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %33, i32 %36, i32 %39, i32 %42, i32 %45)
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
