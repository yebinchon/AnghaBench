; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicmixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_aic.c_aicmixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sc_pcminfo = type { i32, %struct.aic_softc* }
%struct.aic_softc = type { i32 }

@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @aicmixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aicmixer_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca %struct.sc_pcminfo*, align 8
  %5 = alloca %struct.aic_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = call %struct.sc_pcminfo* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.sc_pcminfo* %8, %struct.sc_pcminfo** %4, align 8
  %9 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %10 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %9, i32 0, i32 1
  %11 = load %struct.aic_softc*, %struct.aic_softc** %10, align 8
  store %struct.aic_softc* %11, %struct.aic_softc** %5, align 8
  %12 = load %struct.aic_softc*, %struct.aic_softc** %5, align 8
  %13 = icmp eq %struct.aic_softc* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* @SOUND_MASK_PCM, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.aic_softc*, %struct.aic_softc** %5, align 8
  %18 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @snd_mtxlock(i32 %19)
  %21 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %22 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %25 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @pcm_getflags(i32 %26)
  %28 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @pcm_setflags(i32 %23, i32 %29)
  %31 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @mix_setdevs(%struct.snd_mixer* %31, i32 %32)
  %34 = load %struct.aic_softc*, %struct.aic_softc** %5, align 8
  %35 = getelementptr inbounds %struct.aic_softc, %struct.aic_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_mtxunlock(i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %15, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.sc_pcminfo* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @pcm_setflags(i32, i32) #1

declare dso_local i32 @pcm_getflags(i32) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
