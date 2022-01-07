; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mix_setdevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mix_setdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32*, i32*, i32, i32 }
%struct.snddev_info = type { i32 }

@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@SD_F_EQ = common dso_local global i32 0, align 4
@SOUND_MASK_TREBLE = common dso_local global i32 0, align 4
@SOUND_MASK_BASS = common dso_local global i32 0, align 4
@SOUND_MIXER_NRDEVICES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mix_setdevs(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snddev_info*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = icmp eq %struct.snd_mixer* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %87

10:                                               ; preds = %2
  %11 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %12 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.snddev_info* @device_get_softc(i32 %13)
  store %struct.snddev_info* %14, %struct.snddev_info** %5, align 8
  %15 = load %struct.snddev_info*, %struct.snddev_info** %5, align 8
  %16 = icmp ne %struct.snddev_info* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %10
  %18 = load %struct.snddev_info*, %struct.snddev_info** %5, align 8
  %19 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* @SOUND_MASK_PCM, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %17, %10
  %29 = load %struct.snddev_info*, %struct.snddev_info** %5, align 8
  %30 = icmp ne %struct.snddev_info* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.snddev_info*, %struct.snddev_info** %5, align 8
  %33 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SD_F_EQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @SOUND_MASK_TREBLE, align 4
  %40 = load i32, i32* @SOUND_MASK_BASS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %38, %31, %28
  store i32 0, i32* %6, align 4
  br label %45

45:                                               ; preds = %80, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %83

49:                                               ; preds = %45
  %50 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %51 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @SOUND_MIXER_NRDEVICES, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %49
  %60 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %61 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %59, %49
  %71 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %72 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %86 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %9
  ret void
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
