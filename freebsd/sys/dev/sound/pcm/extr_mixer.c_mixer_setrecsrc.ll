; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_setrecsrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_mixer.c_mixer_setrecsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32, i32, i32, i32 }
%struct.snddev_info = type { i32 }

@SD_F_MPSAFE = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@SOUND_MASK_MONITOR = common dso_local global i32 0, align 4
@SOUND_MASK_LINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32)* @mixer_setrecsrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_setrecsrc(%struct.snd_mixer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_mixer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snddev_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %10 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.snddev_info* @device_get_softc(i32 %11)
  store %struct.snddev_info* %12, %struct.snddev_info** %6, align 8
  %13 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %14 = icmp eq %struct.snddev_info* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %91

16:                                               ; preds = %2
  %17 = load %struct.snddev_info*, %struct.snddev_info** %6, align 8
  %18 = getelementptr inbounds %struct.snddev_info, %struct.snddev_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SD_F_MPSAFE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %25 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @mtx_owned(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %8, align 4
  br label %31

30:                                               ; preds = %23, %16
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %33 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %41 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SOUND_MASK_MIC, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %39, %31
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %50 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SOUND_MASK_MONITOR, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %45
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %59 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SOUND_MASK_LINE, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %57, %54
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %63
  %67 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %68 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %66
  %72 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %73 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ffs(i32 %74)
  %76 = sub nsw i32 %75, 1
  %77 = shl i32 1, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %71, %66, %63
  %79 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @MIXER_SET_UNLOCK(%struct.snd_mixer* %79, i32 %80)
  %82 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @MIXER_SETRECSRC(%struct.snd_mixer* %82, i32 %83)
  store i32 %84, i32* %7, align 4
  %85 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @MIXER_SET_LOCK(%struct.snd_mixer* %85, i32 %86)
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.snd_mixer*, %struct.snd_mixer** %4, align 8
  %90 = getelementptr inbounds %struct.snd_mixer, %struct.snd_mixer* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %78, %15
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.snddev_info* @device_get_softc(i32) #1

declare dso_local i64 @mtx_owned(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @MIXER_SET_UNLOCK(%struct.snd_mixer*, i32) #1

declare dso_local i32 @MIXER_SETRECSRC(%struct.snd_mixer*, i32) #1

declare dso_local i32 @MIXER_SET_LOCK(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
