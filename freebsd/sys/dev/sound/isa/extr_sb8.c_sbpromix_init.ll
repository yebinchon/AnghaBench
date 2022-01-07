; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbpromix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sb8.c_sbpromix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sb_info = type { i32 }

@SOUND_MASK_SYNTH = common dso_local global i32 0, align 4
@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@SOUND_MASK_LINE = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@SOUND_MASK_CD = common dso_local global i32 0, align 4
@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @sbpromix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbpromix_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.sb_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %4 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %5 = call %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer* %4)
  store %struct.sb_info* %5, %struct.sb_info** %3, align 8
  %6 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %7 = load i32, i32* @SOUND_MASK_SYNTH, align 4
  %8 = load i32, i32* @SOUND_MASK_PCM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @SOUND_MASK_LINE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SOUND_MASK_MIC, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @SOUND_MASK_CD, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @mix_setdevs(%struct.snd_mixer* %6, i32 %17)
  %19 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %20 = load i32, i32* @SOUND_MASK_LINE, align 4
  %21 = load i32, i32* @SOUND_MASK_MIC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SOUND_MASK_CD, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mix_setrecdevs(%struct.snd_mixer* %19, i32 %24)
  %26 = load %struct.sb_info*, %struct.sb_info** %3, align 8
  %27 = call i32 @sb_setmixer(%struct.sb_info* %26, i32 0, i32 1)
  ret i32 0
}

declare dso_local %struct.sb_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @sb_setmixer(%struct.sb_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
