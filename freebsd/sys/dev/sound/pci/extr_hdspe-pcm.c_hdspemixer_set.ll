; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspemixer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_hdspe-pcm.c_hdspemixer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.sc_pcminfo = type { i32, %struct.sc_chinfo*, i32 }
%struct.sc_chinfo = type { i64, i32, i32, i64 }

@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@SOUND_MIXER_RECLEV = common dso_local global i32 0, align 4
@PCMDIR_REC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*, i32, i32, i32)* @hdspemixer_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdspemixer_set(%struct.snd_mixer* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_mixer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sc_pcminfo*, align 8
  %10 = alloca %struct.sc_chinfo*, align 8
  %11 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %13 = call %struct.sc_pcminfo* @mix_getdevinfo(%struct.snd_mixer* %12)
  store %struct.sc_pcminfo* %13, %struct.sc_pcminfo** %9, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %62, %4
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %9, align 8
  %17 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %14
  %21 = load %struct.sc_pcminfo*, %struct.sc_pcminfo** %9, align 8
  %22 = getelementptr inbounds %struct.sc_pcminfo, %struct.sc_pcminfo* %21, i32 0, i32 1
  %23 = load %struct.sc_chinfo*, %struct.sc_chinfo** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %23, i64 %25
  store %struct.sc_chinfo* %26, %struct.sc_chinfo** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.sc_chinfo*, %struct.sc_chinfo** %10, align 8
  %32 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PCMDIR_PLAY, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %30, %20
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @SOUND_MIXER_RECLEV, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load %struct.sc_chinfo*, %struct.sc_chinfo** %10, align 8
  %42 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PCMDIR_REC, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40, %30
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.sc_chinfo*, %struct.sc_chinfo** %10, align 8
  %49 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.sc_chinfo*, %struct.sc_chinfo** %10, align 8
  %52 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.sc_chinfo*, %struct.sc_chinfo** %10, align 8
  %54 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = load %struct.sc_chinfo*, %struct.sc_chinfo** %10, align 8
  %59 = call i32 @hdspechan_setgain(%struct.sc_chinfo* %58)
  br label %60

60:                                               ; preds = %57, %46
  br label %61

61:                                               ; preds = %60, %40, %36
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %11, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %14

65:                                               ; preds = %14
  ret i32 0
}

declare dso_local %struct.sc_pcminfo* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @hdspechan_setgain(%struct.sc_chinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
