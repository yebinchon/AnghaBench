; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32, %struct.hdaa_widget* }
%struct.hdaa_widget = type { i32, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDA_INVALID = common dso_local global i64 0, align 8
@HDAA_QUIRK_EAPDINV = common dso_local global i32 0, align 4
@HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_audio_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_commit(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca %struct.hdaa_widget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %6 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %7 = call i32 @hdaa_audio_ctl_commit(%struct.hdaa_devinfo* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %101, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %11 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %104

14:                                               ; preds = %8
  %15 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %16 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %15, i32 0, i32 3
  %17 = load %struct.hdaa_widget*, %struct.hdaa_widget** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %17, i64 %19
  store %struct.hdaa_widget* %20, %struct.hdaa_widget** %3, align 8
  %21 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %22 = icmp eq %struct.hdaa_widget* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %101

24:                                               ; preds = %14
  %25 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %26 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %31 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %34 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %39 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %40 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hdaa_widget_connection_select(%struct.hdaa_widget* %38, i32 %41)
  br label %43

43:                                               ; preds = %37, %32
  %44 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %45 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %51 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %68

54:                                               ; preds = %49, %43
  %55 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %56 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %59 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %62 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @HDA_CMD_SET_PIN_WIDGET_CTRL(i32 0, i32 %60, i32 %65)
  %67 = call i32 @hda_command(i32 %57, i32 %66)
  br label %68

68:                                               ; preds = %54, %49
  %69 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %70 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @HDA_INVALID, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %100

75:                                               ; preds = %68
  %76 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %77 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %5, align 8
  %80 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %81 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HDAA_QUIRK_EAPDINV, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %75
  %87 = load i64, i64* @HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD, align 8
  %88 = load i64, i64* %5, align 8
  %89 = xor i64 %88, %87
  store i64 %89, i64* %5, align 8
  br label %90

90:                                               ; preds = %86, %75
  %91 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %92 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.hdaa_widget*, %struct.hdaa_widget** %3, align 8
  %95 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @HDA_CMD_SET_EAPD_BTL_ENABLE(i32 0, i32 %96, i64 %97)
  %99 = call i32 @hda_command(i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %90, %68
  br label %101

101:                                              ; preds = %100, %23
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %4, align 4
  br label %8

104:                                              ; preds = %8
  %105 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %106 = call i32 @hdaa_gpio_commit(%struct.hdaa_devinfo* %105)
  %107 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %108 = call i32 @hdaa_gpo_commit(%struct.hdaa_devinfo* %107)
  ret void
}

declare dso_local i32 @hdaa_audio_ctl_commit(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_widget_connection_select(%struct.hdaa_widget*, i32) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_PIN_WIDGET_CTRL(i32, i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_EAPD_BTL_ENABLE(i32, i32, i64) #1

declare dso_local i32 @hdaa_gpio_commit(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hdaa_gpo_commit(%struct.hdaa_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
