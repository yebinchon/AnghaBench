; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_initial_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_fb_helper.c_drm_fb_helper_initial_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"No connectors reported connected with modes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_fb_helper_initial_config(%struct.drm_fb_helper* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %8 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %7, i32 0, i32 0
  %9 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  store %struct.drm_device* %9, %struct.drm_device** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %11 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %13 = call i32 @drm_helper_disable_unused_functions(%struct.drm_device* %12)
  %14 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %15 = call i32 @drm_fb_helper_parse_command_line(%struct.drm_fb_helper* %14)
  %16 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @drm_fb_helper_probe_connector_modes(%struct.drm_fb_helper* %16, i32 %20, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %30 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %29, i32 0, i32 0
  %31 = load %struct.drm_device*, %struct.drm_device** %30, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_info(i32 %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %2
  %36 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %37 = call i32 @drm_setup_crtcs(%struct.drm_fb_helper* %36)
  %38 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @drm_fb_helper_single_fb_probe(%struct.drm_fb_helper* %38, i32 %39)
  ret i32 %40
}

declare dso_local i32 @drm_helper_disable_unused_functions(%struct.drm_device*) #1

declare dso_local i32 @drm_fb_helper_parse_command_line(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_probe_connector_modes(%struct.drm_fb_helper*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @drm_setup_crtcs(%struct.drm_fb_helper*) #1

declare dso_local i32 @drm_fb_helper_single_fb_probe(%struct.drm_fb_helper*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
