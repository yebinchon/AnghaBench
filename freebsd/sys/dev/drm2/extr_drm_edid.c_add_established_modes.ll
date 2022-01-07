; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_add_established_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_add_established_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.edid = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.detailed_mode_closure = type { i32, i32, i32, i32, %struct.edid*, %struct.drm_connector* }
%struct.drm_display_mode = type { i32 }

@EDID_EST_TIMINGS = common dso_local global i32 0, align 4
@edid_est_modes = common dso_local global i32* null, align 8
@do_established_modes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*)* @add_established_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_established_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.detailed_mode_closure, align 8
  %10 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.edid*, %struct.edid** %4, align 8
  %15 = getelementptr inbounds %struct.edid, %struct.edid* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.edid*, %struct.edid** %4, align 8
  %19 = getelementptr inbounds %struct.edid, %struct.edid* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  %24 = load %struct.edid*, %struct.edid** %4, align 8
  %25 = getelementptr inbounds %struct.edid, %struct.edid* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 128
  %29 = shl i32 %28, 9
  %30 = or i32 %23, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %32 = bitcast %struct.detailed_mode_closure* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 32, i1 false)
  %33 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %9, i32 0, i32 0
  %34 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %35 = ptrtoint %struct.drm_connector* %34 to i32
  store i32 %35, i32* %33, align 8
  %36 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %9, i32 0, i32 1
  %37 = load %struct.edid*, %struct.edid** %4, align 8
  %38 = ptrtoint %struct.edid* %37 to i32
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %67, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @EDID_EST_TIMINGS, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = shl i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %43
  %51 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %52 = load i32*, i32** @edid_est_modes, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %51, i32* %55)
  store %struct.drm_display_mode* %56, %struct.drm_display_mode** %10, align 8
  %57 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %58 = icmp ne %struct.drm_display_mode* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %10, align 8
  %62 = call i32 @drm_mode_probed_add(%struct.drm_connector* %60, %struct.drm_display_mode* %61)
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %59, %50
  br label %66

66:                                               ; preds = %65, %43
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %39

70:                                               ; preds = %39
  %71 = load %struct.edid*, %struct.edid** %4, align 8
  %72 = call i64 @version_greater(%struct.edid* %71, i32 1, i32 0)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.edid*, %struct.edid** %4, align 8
  %76 = bitcast %struct.edid* %75 to i32*
  %77 = load i32, i32* @do_established_modes, align 4
  %78 = call i32 @drm_for_each_detailed_block(i32* %76, i32 %77, %struct.detailed_mode_closure* %9)
  br label %79

79:                                               ; preds = %74, %70
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %80, %82
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #2

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #2

declare dso_local i64 @version_greater(%struct.edid*, i32, i32) #2

declare dso_local i32 @drm_for_each_detailed_block(i32*, i32, %struct.detailed_mode_closure*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
