; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_add_standard_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_add_standard_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.edid = type { i32, i32* }
%struct.detailed_mode_closure = type { i32, i32, i32, i32, %struct.edid*, %struct.drm_connector* }
%struct.drm_display_mode = type { i32 }

@EDID_STD_TIMINGS = common dso_local global i32 0, align 4
@do_standard_modes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.edid*)* @add_standard_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_standard_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.edid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.detailed_mode_closure, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store %struct.edid* %1, %struct.edid** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = bitcast %struct.detailed_mode_closure* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  %10 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 0
  %11 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %12 = ptrtoint %struct.drm_connector* %11 to i32
  store i32 %12, i32* %10, align 8
  %13 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 1
  %14 = load %struct.edid*, %struct.edid** %4, align 8
  %15 = ptrtoint %struct.edid* %14 to i32
  store i32 %15, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %42, %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @EDID_STD_TIMINGS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %16
  %21 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %22 = load %struct.edid*, %struct.edid** %4, align 8
  %23 = load %struct.edid*, %struct.edid** %4, align 8
  %24 = getelementptr inbounds %struct.edid, %struct.edid* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load %struct.edid*, %struct.edid** %4, align 8
  %30 = getelementptr inbounds %struct.edid, %struct.edid* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.drm_display_mode* @drm_mode_std(%struct.drm_connector* %21, %struct.edid* %22, i32* %28, i32 %31)
  store %struct.drm_display_mode* %32, %struct.drm_display_mode** %8, align 8
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %34 = icmp ne %struct.drm_display_mode* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %38 = call i32 @drm_mode_probed_add(%struct.drm_connector* %36, %struct.drm_display_mode* %37)
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %35, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load %struct.edid*, %struct.edid** %4, align 8
  %47 = call i64 @version_greater(%struct.edid* %46, i32 1, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load %struct.edid*, %struct.edid** %4, align 8
  %51 = bitcast %struct.edid* %50 to i32*
  %52 = load i32, i32* @do_standard_modes, align 4
  %53 = call i32 @drm_for_each_detailed_block(i32* %51, i32 %52, %struct.detailed_mode_closure* %7)
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds %struct.detailed_mode_closure, %struct.detailed_mode_closure* %7, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %55, %57
  ret i32 %58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.drm_display_mode* @drm_mode_std(%struct.drm_connector*, %struct.edid*, i32*, i32) #2

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
