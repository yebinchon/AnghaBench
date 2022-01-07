; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_crtc_convert_to_umode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_crtc.c_drm_crtc_convert_to_umode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mode_modeinfo = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64*, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@USHRT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"timing values too large for mode info\0A\00", align 1
@DRM_DISPLAY_MODE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mode_modeinfo*, %struct.drm_display_mode*)* @drm_crtc_convert_to_umode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_crtc_convert_to_umode(%struct.drm_mode_modeinfo* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_mode_modeinfo*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_mode_modeinfo* %0, %struct.drm_mode_modeinfo** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %6 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @USHRT_MAX, align 8
  %9 = icmp sgt i64 %7, %8
  br i1 %9, label %64, label %10

10:                                               ; preds = %2
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USHRT_MAX, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %64, label %16

16:                                               ; preds = %10
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @USHRT_MAX, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %64, label %22

22:                                               ; preds = %16
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @USHRT_MAX, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %64, label %28

28:                                               ; preds = %22
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @USHRT_MAX, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %64, label %34

34:                                               ; preds = %28
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USHRT_MAX, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %64, label %40

40:                                               ; preds = %34
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @USHRT_MAX, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %40
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USHRT_MAX, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %64, label %52

52:                                               ; preds = %46
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @USHRT_MAX, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @USHRT_MAX, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58, %52, %46, %40, %34, %28, %22, %16, %10, %2
  %65 = call i32 @DRM_WARNING(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %58
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 14
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %71 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %70, i32 0, i32 14
  store i32 %69, i32* %71, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %76 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %81 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %86 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %85, i32 0, i32 2
  store i64 %84, i64* %86, align 8
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %91 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %96 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %95, i32 0, i32 4
  store i64 %94, i64* %96, align 8
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %101 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %100, i32 0, i32 5
  store i64 %99, i64* %101, align 8
  %102 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %103 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %102, i32 0, i32 6
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %106 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %105, i32 0, i32 6
  store i64 %104, i64* %106, align 8
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %111 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %110, i32 0, i32 7
  store i64 %109, i64* %111, align 8
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %116 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %115, i32 0, i32 8
  store i64 %114, i64* %116, align 8
  %117 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %118 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %121 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %120, i32 0, i32 9
  store i64 %119, i64* %121, align 8
  %122 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %123 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %126 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %125, i32 0, i32 13
  store i32 %124, i32* %126, align 8
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %131 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %130, i32 0, i32 12
  store i32 %129, i32* %131, align 4
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %136 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %135, i32 0, i32 11
  store i32 %134, i32* %136, align 8
  %137 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %138 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %137, i32 0, i32 10
  %139 = load i64*, i64** %138, align 8
  %140 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %141 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %144 = call i32 @strncpy(i64* %139, i32 %142, i32 %143)
  %145 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %3, align 8
  %146 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %145, i32 0, i32 10
  %147 = load i64*, i64** %146, align 8
  %148 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %149 = sub nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %147, i64 %150
  store i64 0, i64* %151, align 8
  ret void
}

declare dso_local i32 @DRM_WARNING(i8*) #1

declare dso_local i32 @strncpy(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
