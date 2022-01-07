; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_add_display_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_add_display_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32, i32, i32, i32, i32 }
%struct.drm_display_info = type { i32, i32, i32, i32, i32 }

@DRM_EDID_INPUT_DIGITAL = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_RGB444 = common dso_local global i32 0, align 4
@EDID_CEA_YCRCB444 = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB444 = common dso_local global i32 0, align 4
@EDID_CEA_YCRCB422 = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB422 = common dso_local global i32 0, align 4
@DRM_EDID_DIGITAL_DEPTH_MASK = common dso_local global i32 0, align 4
@DRM_EDID_FEATURE_RGB_YCRCB444 = common dso_local global i32 0, align 4
@DRM_EDID_FEATURE_RGB_YCRCB422 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edid*, %struct.drm_display_info*)* @drm_add_display_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_add_display_info(%struct.edid* %0, %struct.drm_display_info* %1) #0 {
  %3 = alloca %struct.edid*, align 8
  %4 = alloca %struct.drm_display_info*, align 8
  %5 = alloca i32*, align 8
  store %struct.edid* %0, %struct.edid** %3, align 8
  store %struct.drm_display_info* %1, %struct.drm_display_info** %4, align 8
  %6 = load %struct.edid*, %struct.edid** %3, align 8
  %7 = getelementptr inbounds %struct.edid, %struct.edid* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = mul nsw i32 %8, 10
  %10 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %11 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.edid*, %struct.edid** %3, align 8
  %13 = getelementptr inbounds %struct.edid, %struct.edid* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %14, 10
  %16 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %17 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %19 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %18, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %20, i32 0, i32 4
  store i32 0, i32* %21, align 4
  %22 = load %struct.edid*, %struct.edid** %3, align 8
  %23 = getelementptr inbounds %struct.edid, %struct.edid* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %140

27:                                               ; preds = %2
  %28 = load %struct.edid*, %struct.edid** %3, align 8
  %29 = getelementptr inbounds %struct.edid, %struct.edid* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DRM_EDID_INPUT_DIGITAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %140

35:                                               ; preds = %27
  %36 = load %struct.edid*, %struct.edid** %3, align 8
  %37 = call i32* @drm_find_cea_extension(%struct.edid* %36)
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %45 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @DRM_COLOR_FORMAT_RGB444, align 4
  %47 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EDID_CEA_YCRCB444, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %40
  %56 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB444, align 4
  %57 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %58 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %40
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EDID_CEA_YCRCB422, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB422, align 4
  %70 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %71 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %61
  br label %75

75:                                               ; preds = %74, %35
  %76 = load %struct.edid*, %struct.edid** %3, align 8
  %77 = getelementptr inbounds %struct.edid, %struct.edid* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %140

81:                                               ; preds = %75
  %82 = load %struct.edid*, %struct.edid** %3, align 8
  %83 = getelementptr inbounds %struct.edid, %struct.edid* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @DRM_EDID_DIGITAL_DEPTH_MASK, align 4
  %86 = and i32 %84, %85
  switch i32 %86, label %106 [
    i32 130, label %87
    i32 129, label %90
    i32 134, label %93
    i32 133, label %96
    i32 132, label %99
    i32 131, label %102
    i32 128, label %105
  ]

87:                                               ; preds = %81
  %88 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %89 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %88, i32 0, i32 2
  store i32 6, i32* %89, align 4
  br label %109

90:                                               ; preds = %81
  %91 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %92 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %91, i32 0, i32 2
  store i32 8, i32* %92, align 4
  br label %109

93:                                               ; preds = %81
  %94 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %95 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %94, i32 0, i32 2
  store i32 10, i32* %95, align 4
  br label %109

96:                                               ; preds = %81
  %97 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %98 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %97, i32 0, i32 2
  store i32 12, i32* %98, align 4
  br label %109

99:                                               ; preds = %81
  %100 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %101 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %100, i32 0, i32 2
  store i32 14, i32* %101, align 4
  br label %109

102:                                              ; preds = %81
  %103 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %104 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %103, i32 0, i32 2
  store i32 16, i32* %104, align 4
  br label %109

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %81, %105
  %107 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %108 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %107, i32 0, i32 2
  store i32 0, i32* %108, align 4
  br label %109

109:                                              ; preds = %106, %102, %99, %96, %93, %90, %87
  %110 = load i32, i32* @DRM_COLOR_FORMAT_RGB444, align 4
  %111 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %112 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  %115 = load %struct.edid*, %struct.edid** %3, align 8
  %116 = getelementptr inbounds %struct.edid, %struct.edid* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @DRM_EDID_FEATURE_RGB_YCRCB444, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %109
  %122 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB444, align 4
  %123 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %124 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %109
  %128 = load %struct.edid*, %struct.edid** %3, align 8
  %129 = getelementptr inbounds %struct.edid, %struct.edid* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DRM_EDID_FEATURE_RGB_YCRCB422, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB422, align 4
  %136 = load %struct.drm_display_info*, %struct.drm_display_info** %4, align 8
  %137 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %135
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %26, %34, %80, %134, %127
  ret void
}

declare dso_local i32* @drm_find_cea_extension(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
