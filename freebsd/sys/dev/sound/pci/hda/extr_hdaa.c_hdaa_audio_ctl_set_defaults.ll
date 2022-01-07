; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_set_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_pcm_devinfo = type { i32, i32*, i32*, i32, i32, i32 }

@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4
@ossnames = common dso_local global i32* null, align 8
@SOUND_MIXER_OGAIN = common dso_local global i32 0, align 4
@SOUND_MIXER_IGAIN = common dso_local global i32 0, align 4
@SOUND_MIXER_MIC = common dso_local global i32 0, align 4
@SOUND_MIXER_MONITOR = common dso_local global i32 0, align 4
@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_pcm_devinfo*)* @hdaa_audio_ctl_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_audio_ctl_set_defaults(%struct.hdaa_pcm_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdaa_pcm_devinfo* %0, %struct.hdaa_pcm_devinfo** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %149, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %152

10:                                               ; preds = %6
  %11 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %12 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %149

19:                                               ; preds = %10
  %20 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %21 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @device_get_name(i32 %22)
  %24 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %25 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @device_get_unit(i32 %26)
  %28 = load i32*, i32** @ossnames, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @resource_int_value(i32 %23, i32 %27, i32 %32, i32* %4)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %149

36:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SOUND_MIXER_OGAIN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 100, i32* %4, align 4
  br label %69

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @SOUND_MIXER_IGAIN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %68

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @SOUND_MIXER_MIC, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SOUND_MIXER_MONITOR, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  store i32 80, i32* %3, align 4
  br label %67

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %61 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 -40, i32* %3, align 4
  br label %66

65:                                               ; preds = %59, %55
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64
  br label %67

67:                                               ; preds = %66, %54
  br label %68

68:                                               ; preds = %67, %45
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %74 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %81 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %79, %86
  %88 = icmp sle i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %72
  store i32 100, i32* %4, align 4
  br label %141

90:                                               ; preds = %72, %69
  %91 = load i32, i32* %4, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %140

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %96 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %94, %101
  %103 = mul nsw i32 %102, 100
  %104 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %105 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %112 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = sub nsw i32 %110, %117
  %119 = sdiv i32 %118, 2
  %120 = add nsw i32 %103, %119
  %121 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %122 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %129 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sub nsw i32 %127, %134
  %136 = sdiv i32 %120, %135
  store i32 %136, i32* %4, align 4
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @imax(i32 %137, i32 1)
  %139 = call i32 @imin(i32 %138, i32 100)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %93, %90
  br label %141

141:                                              ; preds = %140, %89
  %142 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %2, align 8
  %143 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @mix_set(i32 %144, i32 %145, i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %141, %35, %18
  %150 = load i32, i32* %5, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %5, align 4
  br label %6

152:                                              ; preds = %6
  ret void
}

declare dso_local i64 @resource_int_value(i32, i32, i32, i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @mix_set(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
