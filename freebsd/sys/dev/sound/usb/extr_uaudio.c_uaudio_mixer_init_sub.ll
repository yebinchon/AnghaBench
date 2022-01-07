; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_init_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_init_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_softc = type { i32, i32, i32, i32, i32, i32, %struct.snd_mixer* }
%struct.snd_mixer = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@uaudio_mixer_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"could not allocate USB transfer for audio mixer!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@SOUND_MIXER_VOLUME = common dso_local global i32 0, align 4
@SOUND_MASK_PCM = common dso_local global i32 0, align 4
@SOUND_MIXER_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uaudio_mixer_init_sub(%struct.uaudio_softc* %0, %struct.snd_mixer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uaudio_softc*, align 8
  %5 = alloca %struct.snd_mixer*, align 8
  store %struct.uaudio_softc* %0, %struct.uaudio_softc** %4, align 8
  store %struct.snd_mixer* %1, %struct.snd_mixer** %5, align 8
  %6 = call i32 @DPRINTF(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %8 = call i32 @mixer_get_lock(%struct.snd_mixer* %7)
  %9 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %10 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %12 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %13 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %12, i32 0, i32 6
  store %struct.snd_mixer* %11, %struct.snd_mixer** %13, align 8
  %14 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %15 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %18 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %17, i32 0, i32 4
  %19 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %20 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @uaudio_mixer_config, align 4
  %23 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %24 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %25 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @usbd_transfer_setup(i32 %16, i32* %18, i32 %21, i32 %22, i32 1, %struct.uaudio_softc* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = call i32 @DPRINTFN(i32 0, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %2
  %33 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %34 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %41 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %42 = load i32, i32* @SOUND_MASK_PCM, align 4
  %43 = call i32 @mix_setparentchild(%struct.snd_mixer* %40, i32 %41, i32 %42)
  %44 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %45 = load i32, i32* @SOUND_MIXER_VOLUME, align 4
  %46 = load i32, i32* @SOUND_MIXER_NONE, align 4
  %47 = call i32 @mix_setrealdev(%struct.snd_mixer* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %32
  %49 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %50 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %51 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mix_setdevs(%struct.snd_mixer* %49, i32 %52)
  %54 = load %struct.snd_mixer*, %struct.snd_mixer** %5, align 8
  %55 = load %struct.uaudio_softc*, %struct.uaudio_softc** %4, align 8
  %56 = getelementptr inbounds %struct.uaudio_softc, %struct.uaudio_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @mix_setrecdevs(%struct.snd_mixer* %54, i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %48, %29
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mixer_get_lock(%struct.snd_mixer*) #1

declare dso_local i64 @usbd_transfer_setup(i32, i32*, i32, i32, i32, %struct.uaudio_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @mix_setparentchild(%struct.snd_mixer*, i32, i32) #1

declare dso_local i32 @mix_setrealdev(%struct.snd_mixer*, i32, i32) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

declare dso_local i32 @mix_setrecdevs(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
