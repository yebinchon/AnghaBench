; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_do_cea_modes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_edid.c_do_cea_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }

@drm_num_cea_modes = common dso_local global i32 0, align 4
@edid_cea_modes = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32*, i32)* @do_cea_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_cea_modes(%struct.drm_connector* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 0
  %14 = load %struct.drm_device*, %struct.drm_device** %13, align 8
  store %struct.drm_device* %14, %struct.drm_device** %7, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %8, align 8
  br label %16

16:                                               ; preds = %48, %3
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = icmp ult i32* %17, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %16
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 127
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @drm_num_cea_modes, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %23
  %32 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %33 = load i32*, i32** @edid_cea_modes, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %32, i32* %36)
  store %struct.drm_display_mode* %37, %struct.drm_display_mode** %11, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %39 = icmp ne %struct.drm_display_mode* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %43 = call i32 @drm_mode_probed_add(%struct.drm_connector* %41, %struct.drm_display_mode* %42)
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %40, %31
  br label %47

47:                                               ; preds = %46, %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  br label %16

51:                                               ; preds = %16
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
