; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymmix_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_ymmix_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.mss_info = type { i32 }

@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@SOUND_MASK_MIC = common dso_local global i32 0, align 4
@SOUND_MASK_BASS = common dso_local global i32 0, align 4
@SOUND_MASK_TREBLE = common dso_local global i32 0, align 4
@OPL3SAx_VOLUMEL = common dso_local global i32 0, align 4
@OPL3SAx_VOLUMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @ymmix_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ymmix_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.mss_info*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %4 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %5 = call %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer* %4)
  store %struct.mss_info* %5, %struct.mss_info** %3, align 8
  %6 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %7 = call i32 @mssmix_init(%struct.snd_mixer* %6)
  %8 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %9 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %10 = call i32 @mix_getdevs(%struct.snd_mixer* %9)
  %11 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SOUND_MASK_MIC, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SOUND_MASK_BASS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SOUND_MASK_TREBLE, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @mix_setdevs(%struct.snd_mixer* %8, i32 %18)
  %20 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %21 = call i32 @mss_lock(%struct.mss_info* %20)
  %22 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %23 = load i32, i32* @OPL3SAx_VOLUMEL, align 4
  %24 = call i32 @conf_wr(%struct.mss_info* %22, i32 %23, i32 7)
  %25 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %26 = load i32, i32* @OPL3SAx_VOLUMER, align 4
  %27 = call i32 @conf_wr(%struct.mss_info* %25, i32 %26, i32 7)
  %28 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %29 = call i32 @mss_unlock(%struct.mss_info* %28)
  ret i32 0
}

declare dso_local %struct.mss_info* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @mssmix_init(%struct.snd_mixer*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mix_getdevs(%struct.snd_mixer*) #1

declare dso_local i32 @mss_lock(%struct.mss_info*) #1

declare dso_local i32 @conf_wr(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @mss_unlock(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
