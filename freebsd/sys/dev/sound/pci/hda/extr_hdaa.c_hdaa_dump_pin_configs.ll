; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin_configs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_pin_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32 }
%struct.hdaa_widget = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [71 x i8] c"nid   0x    as seq device       conn  jack    loc        color   misc\0A\00", align 1
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_dump_pin_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_pin_configs(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_widget*, align 8
  %4 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %5 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %6 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @device_printf(i32 %7, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %10 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %15 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %43

18:                                               ; preds = %12
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %19, i32 %20)
  store %struct.hdaa_widget* %21, %struct.hdaa_widget** %3, align 8
  %22 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %23 = icmp eq %struct.hdaa_widget* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %40

25:                                               ; preds = %18
  %26 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %27 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %40

32:                                               ; preds = %25
  %33 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %34 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %35 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @hdaa_dump_pin_config(%struct.hdaa_widget* %33, i32 %38)
  br label %40

40:                                               ; preds = %32, %31, %24
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %12

43:                                               ; preds = %12
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_dump_pin_config(%struct.hdaa_widget*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
