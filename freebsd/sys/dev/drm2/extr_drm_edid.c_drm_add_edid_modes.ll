; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_add_edid_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_drm_add_edid_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: EDID invalid.\0A\00", align 1
@DRM_EDID_FEATURE_DEFAULT_GTF = common dso_local global i32 0, align 4
@EDID_QUIRK_PREFER_LARGE_60 = common dso_local global i32 0, align 4
@EDID_QUIRK_PREFER_LARGE_75 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_add_edid_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.edid*, %struct.edid** %5, align 8
  %9 = icmp eq %struct.edid* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

11:                                               ; preds = %2
  %12 = load %struct.edid*, %struct.edid** %5, align 8
  %13 = call i32 @drm_edid_is_valid(%struct.edid* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %22 = call i32 @drm_get_connector_name(%struct.drm_connector* %21)
  %23 = call i32 @dev_warn(i32 %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %3, align 4
  br label %94

24:                                               ; preds = %11
  %25 = load %struct.edid*, %struct.edid** %5, align 8
  %26 = call i32 @edid_get_quirks(%struct.edid* %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %28 = load %struct.edid*, %struct.edid** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @add_detailed_modes(%struct.drm_connector* %27, %struct.edid* %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %36 = load %struct.edid*, %struct.edid** %5, align 8
  %37 = call i64 @add_cvt_modes(%struct.drm_connector* %35, %struct.edid* %36)
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %43 = load %struct.edid*, %struct.edid** %5, align 8
  %44 = call i64 @add_standard_modes(%struct.drm_connector* %42, %struct.edid* %43)
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %50 = load %struct.edid*, %struct.edid** %5, align 8
  %51 = call i64 @add_established_modes(%struct.drm_connector* %49, %struct.edid* %50)
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load %struct.edid*, %struct.edid** %5, align 8
  %57 = getelementptr inbounds %struct.edid, %struct.edid* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DRM_EDID_FEATURE_DEFAULT_GTF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %24
  %63 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %64 = load %struct.edid*, %struct.edid** %5, align 8
  %65 = call i64 @add_inferred_modes(%struct.drm_connector* %63, %struct.edid* %64)
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %62, %24
  %71 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %72 = load %struct.edid*, %struct.edid** %5, align 8
  %73 = call i64 @add_cea_modes(%struct.drm_connector* %71, %struct.edid* %72)
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @EDID_QUIRK_PREFER_LARGE_60, align 4
  %80 = load i32, i32* @EDID_QUIRK_PREFER_LARGE_75, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %70
  %85 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @edid_fixup_preferred(%struct.drm_connector* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %70
  %89 = load %struct.edid*, %struct.edid** %5, align 8
  %90 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %91 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %90, i32 0, i32 0
  %92 = call i32 @drm_add_display_info(%struct.edid* %89, i32* %91)
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %15, %10
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @drm_edid_is_valid(%struct.edid*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @drm_get_connector_name(%struct.drm_connector*) #1

declare dso_local i32 @edid_get_quirks(%struct.edid*) #1

declare dso_local i64 @add_detailed_modes(%struct.drm_connector*, %struct.edid*, i32) #1

declare dso_local i64 @add_cvt_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_standard_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_established_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_inferred_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_cea_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @edid_fixup_preferred(%struct.drm_connector*, i32) #1

declare dso_local i32 @drm_add_display_info(%struct.edid*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
