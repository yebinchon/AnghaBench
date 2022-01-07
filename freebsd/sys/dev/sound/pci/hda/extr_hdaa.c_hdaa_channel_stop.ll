; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_channel_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_chan = type { i32, i64, i32*, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32 }
%struct.hdaa_widget = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDAA_CHN_RUNNING = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_chan*)* @hdaa_channel_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_channel_stop(%struct.hdaa_chan* %0) #0 {
  %2 = alloca %struct.hdaa_chan*, align 8
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca %struct.hdaa_widget*, align 8
  %5 = alloca i32, align 4
  store %struct.hdaa_chan* %0, %struct.hdaa_chan** %2, align 8
  %6 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %7 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %6, i32 0, i32 4
  %8 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %7, align 8
  store %struct.hdaa_devinfo* %8, %struct.hdaa_devinfo** %3, align 8
  %9 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %10 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HDAA_CHN_RUNNING, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %120

16:                                               ; preds = %1
  %17 = load i32, i32* @HDAA_CHN_RUNNING, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %20 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %24 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @device_get_parent(i32 %25)
  %27 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %28 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %31 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCMDIR_PLAY, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %38 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @HDAC_STREAM_STOP(i32 %26, i32 %29, i32 %36, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %98, %16
  %42 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %43 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %101

50:                                               ; preds = %41
  %51 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %52 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %51, i32 0, i32 4
  %53 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %52, align 8
  %54 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %55 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %53, i32 %60)
  store %struct.hdaa_widget* %61, %struct.hdaa_widget** %4, align 8
  %62 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %63 = icmp eq %struct.hdaa_widget* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %98

65:                                               ; preds = %50
  %66 = load %struct.hdaa_widget*, %struct.hdaa_widget** %4, align 8
  %67 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %65
  %73 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %74 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %77 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @HDA_CMD_SET_DIGITAL_CONV_FMT1(i32 0, i32 %82, i32 0)
  %84 = call i32 @hda_command(i32 %75, i32 %83)
  br label %85

85:                                               ; preds = %72, %65
  %86 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %87 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %90 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @HDA_CMD_SET_CONV_STREAM_CHAN(i32 0, i32 %95, i32 0)
  %97 = call i32 @hda_command(i32 %88, i32 %96)
  br label %98

98:                                               ; preds = %85, %64
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %41

101:                                              ; preds = %41
  %102 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %103 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @device_get_parent(i32 %104)
  %106 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %107 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %110 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @PCMDIR_PLAY, align 8
  %113 = icmp eq i64 %111, %112
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.hdaa_chan*, %struct.hdaa_chan** %2, align 8
  %117 = getelementptr inbounds %struct.hdaa_chan, %struct.hdaa_chan* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @HDAC_STREAM_FREE(i32 %105, i32 %108, i32 %115, i32 %118)
  br label %120

120:                                              ; preds = %101, %15
  ret void
}

declare dso_local i32 @HDAC_STREAM_STOP(i32, i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i64 @HDA_PARAM_AUDIO_WIDGET_CAP_DIGITAL(i32) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_DIGITAL_CONV_FMT1(i32, i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_CONV_STREAM_CHAN(i32, i32, i32) #1

declare dso_local i32 @HDAC_STREAM_FREE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
