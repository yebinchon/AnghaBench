; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_chan_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_chan_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { %struct.hdaa_audio_as* }
%struct.hdaa_audio_as = type { i32* }
%struct.hdaa_widget = type { i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdaa_devinfo*, i32)* @hdaa_chan_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_chan_type(%struct.hdaa_devinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdaa_audio_as*, align 8
  %6 = alloca %struct.hdaa_widget*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %8, align 4
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %11 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %10, i32 0, i32 0
  %12 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %12, i64 %14
  store %struct.hdaa_audio_as* %15, %struct.hdaa_audio_as** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %61, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %64

19:                                               ; preds = %16
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %21 = load %struct.hdaa_audio_as*, %struct.hdaa_audio_as** %5, align 8
  %22 = getelementptr inbounds %struct.hdaa_audio_as, %struct.hdaa_audio_as* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %20, i32 %27)
  store %struct.hdaa_widget* %28, %struct.hdaa_widget** %6, align 8
  %29 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %30 = icmp eq %struct.hdaa_widget* %29, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %19
  %32 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %33 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %38 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %31, %19
  br label %61

43:                                               ; preds = %36
  %44 = load %struct.hdaa_widget*, %struct.hdaa_widget** %6, align 8
  %45 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @HDA_CONFIG_DEFAULTCONF_DEVICE(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %8, align 4
  br label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 -2, i32* %8, align 4
  br label %64

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %59, %52
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %16

64:                                               ; preds = %58, %16
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @HDA_CONFIG_DEFAULTCONF_DEVICE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
