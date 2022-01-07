; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_mode_set_crtcinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_modes.c_drm_mode_set_crtcinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }

@DRM_MODE_TYPE_CRTC_C = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_BUILTIN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_DBLSCAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_set_crtcinfo(%struct.drm_display_mode* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %6 = icmp eq %struct.drm_display_mode* %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %9 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @DRM_MODE_TYPE_CRTC_C, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @DRM_MODE_TYPE_BUILTIN, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %7, %2
  br label %186

16:                                               ; preds = %7
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %38 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %37, i32 0, i32 23
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 24
  store i32 %39, i32* %41, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 11
  store i32 %49, i32* %51, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 14
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 13
  store i32 %54, i32* %56, align 4
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %58 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 15
  store i32 %59, i32* %61, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 17
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %91

68:                                               ; preds = %16
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %90

73:                                               ; preds = %68
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %75, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 11
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 2
  store i32 %81, i32* %79, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %84, 2
  store i32 %85, i32* %83, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 15
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %88, 2
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %73, %68
  br label %91

91:                                               ; preds = %90, %16
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 17
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DRM_MODE_FLAG_DBLSCAN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %91
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 9
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %101, 2
  store i32 %102, i32* %100, align 4
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 11
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 2
  store i32 %106, i32* %104, align 4
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %109, 2
  store i32 %110, i32* %108, align 4
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %112 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %111, i32 0, i32 15
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 2
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %98, %91
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %117 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %116, i32 0, i32 18
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %149

120:                                              ; preds = %115
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 18
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 9
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %129 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %128, i32 0, i32 18
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 11
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 18
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 13
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %143 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %142, i32 0, i32 18
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %146 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %145, i32 0, i32 15
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %120, %115
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @min(i32 %152, i32 %155)
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 22
  store i8* %156, i8** %158, align 8
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 13
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %163 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %162, i32 0, i32 15
  %164 = load i32, i32* %163, align 4
  %165 = call i8* @max(i32 %161, i32 %164)
  %166 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %167 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %166, i32 0, i32 21
  store i8* %165, i8** %167, align 8
  %168 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %169 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %172 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @min(i32 %170, i32 %173)
  %175 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %176 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %175, i32 0, i32 20
  store i8* %174, i8** %176, align 8
  %177 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %178 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %181 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = call i8* @max(i32 %179, i32 %182)
  %184 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %185 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %184, i32 0, i32 19
  store i8* %183, i8** %185, align 8
  br label %186

186:                                              ; preds = %149, %15
  ret void
}

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
