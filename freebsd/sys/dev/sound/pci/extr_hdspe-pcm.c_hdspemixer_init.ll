; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspemixer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspemixer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sc_pcminfo = type { i32, %struct.TYPE_2__*, %struct.sc_info* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sc_info = type { i32 }

@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@SOUND_MASK_RECLEV = common dso_local global i32 0, align 4
@SD_F_SOFTPCMVOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @hdspemixer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspemixer_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_mixer*, align 8
  %4 = alloca %struct.sc_pcminfo*, align 8
  %5 = alloca %struct.sc_info*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %3, align 8
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %8 = call %struct.sc_pcminfo* @mix_getdevinfo(%struct.snd_mixer* %7)
  store %struct.sc_pcminfo* %8, %struct.sc_pcminfo** %4, align 8
  %9 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %10 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %9, i32 0, i32 2
  %11 = load %struct.sc_info*, %struct.sc_info** %10, align 8
  store %struct.sc_info* %11, %struct.sc_info** %5, align 8
  %12 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %13 = icmp eq %struct.sc_info* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32, i32* @SOUND_MASK_PCM, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %18 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %15
  %28 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %29 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @SOUND_MASK_RECLEV, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %40 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @snd_mtxlock(i32 %41)
  %43 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %44 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %4, align 8
  %47 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @pcm_getflags(i32 %48)
  %50 = load i32, i32* @SD_F_SOFTPCMVOL, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @pcm_setflags(i32 %45, i32 %51)
  %53 = load %struct.snd_mixer*, %struct.snd_mixer** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @mix_setdevs(%struct.snd_mixer* %53, i32 %54)
  %56 = load %struct.sc_info*, %struct.sc_info** %5, align 8
  %57 = getelementptr inbounds %struct.sc_info, %struct.sc_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @snd_mtxunlock(i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %38, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
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
