; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_ossmixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_audio_ctl_ossmixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.hdaa_pcm_devinfo = type { i32*, i32*, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32, i32, i32, i32 }
%struct.hdaa_widget = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SOUND_MIXER_OGAIN = common dso_local global i32 0, align 4
@HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX = common dso_local global i64 0, align 8
@HDA_INVALID = common dso_local global i32 0, align 4
@HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD = common dso_local global i32 0, align 4
@HDAA_QUIRK_EAPDINV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @hdaa_audio_ctl_ossmixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdaa_audio_ctl_ossmixer_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_mixer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hdaa_pcm_devinfo*, align 8
  %11 = alloca %struct.hdaa_devinfo*, align 8
  %12 = alloca %struct.hdaa_widget*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.snd_mixer*, %struct.snd_mixer** %6, align 8
  %17 = call %struct.hdaa_pcm_devinfo* @mix_getdevinfo(%struct.snd_mixer* %16)
  store %struct.hdaa_pcm_devinfo* %17, %struct.hdaa_pcm_devinfo** %10, align 8
  %18 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %19 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %18, i32 0, i32 2
  %20 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %19, align 8
  store %struct.hdaa_devinfo* %20, %struct.hdaa_devinfo** %11, align 8
  %21 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %22 = call i32 @hdaa_lock(%struct.hdaa_devinfo* %21)
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %25 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %32 = getelementptr inbounds %struct.hdaa_pcm_devinfo, %struct.hdaa_pcm_devinfo* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %30, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @SOUND_MIXER_OGAIN, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %150

40:                                               ; preds = %4
  store %struct.hdaa_widget* null, %struct.hdaa_widget** %12, align 8
  %41 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %42 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  br label %44

44:                                               ; preds = %77, %40
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %47 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %44
  %51 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %52 = load i32, i32* %13, align 4
  %53 = call %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo* %51, i32 %52)
  store %struct.hdaa_widget* %53, %struct.hdaa_widget** %12, align 8
  %54 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %55 = icmp eq %struct.hdaa_widget* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %58 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %50
  br label %77

62:                                               ; preds = %56
  %63 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %64 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @HDA_PARAM_AUDIO_WIDGET_CAP_TYPE_PIN_COMPLEX, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %62
  %69 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %70 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HDA_INVALID, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %62
  br label %77

76:                                               ; preds = %68
  br label %80

77:                                               ; preds = %75, %61
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %13, align 4
  br label %44

80:                                               ; preds = %76, %44
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %83 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sge i32 %81, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %88 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %87)
  store i32 -1, i32* %5, align 4
  br label %160

89:                                               ; preds = %80
  %90 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %91 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %90, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %89
  %97 = load i32, i32* @HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD, align 4
  %98 = xor i32 %97, -1
  %99 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %100 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %98
  store i32 %103, i32* %101, align 4
  br label %111

104:                                              ; preds = %89
  %105 = load i32, i32* @HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD, align 4
  %106 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %107 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %104, %96
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %114 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %112, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %111
  %119 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %120 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %15, align 4
  %123 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %124 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @HDAA_QUIRK_EAPDINV, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %118
  %130 = load i32, i32* @HDA_CMD_SET_EAPD_BTL_ENABLE_EAPD, align 4
  %131 = load i32, i32* %15, align 4
  %132 = xor i32 %131, %130
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %129, %118
  %134 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %135 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.hdaa_widget*, %struct.hdaa_widget** %12, align 8
  %138 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @HDA_CMD_SET_EAPD_BTL_ENABLE(i32 0, i32 %139, i32 %140)
  %142 = call i32 @hda_command(i32 %136, i32 %141)
  br label %143

143:                                              ; preds = %133, %111
  %144 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %145 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %144)
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = shl i32 %147, 8
  %149 = or i32 %146, %148
  store i32 %149, i32* %5, align 4
  br label %160

150:                                              ; preds = %4
  %151 = load %struct.hdaa_pcm_devinfo*, %struct.hdaa_pcm_devinfo** %10, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @hdaa_audio_ctl_dev_volume(%struct.hdaa_pcm_devinfo* %151, i32 %152)
  %154 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %11, align 8
  %155 = call i32 @hdaa_unlock(%struct.hdaa_devinfo* %154)
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = shl i32 %157, 8
  %159 = or i32 %156, %158
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %150, %143, %86
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.hdaa_pcm_devinfo* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @hdaa_lock(%struct.hdaa_devinfo*) #1

declare dso_local %struct.hdaa_widget* @hdaa_widget_get(%struct.hdaa_devinfo*, i32) #1

declare dso_local i32 @hdaa_unlock(%struct.hdaa_devinfo*) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_SET_EAPD_BTL_ENABLE(i32, i32, i32) #1

declare dso_local i32 @hdaa_audio_ctl_dev_volume(%struct.hdaa_pcm_devinfo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
