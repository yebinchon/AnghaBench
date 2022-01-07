; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_screamer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.davbus_softc = type { i32, i32, i32 (%struct.davbus_softc*, i32)*, i32 (%struct.davbus_softc*, i32)* }

@SCREAMER_CODEC_ADDR0 = common dso_local global i32 0, align 4
@SCREAMER_INPUT_CD = common dso_local global i32 0, align 4
@SCREAMER_DEFAULT_CD_GAIN = common dso_local global i32 0, align 4
@DAVBUS_CODEC_STATUS = common dso_local global i32 0, align 4
@SCREAMER_CODEC_ADDR2 = common dso_local global i32 0, align 4
@SCREAMER_CODEC_ADDR4 = common dso_local global i32 0, align 4
@SCREAMER_CODEC_ADDR5 = common dso_local global i32 0, align 4
@SCREAMER_CODEC_ADDR6 = common dso_local global i32 0, align 4
@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @screamer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @screamer_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.davbus_softc*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %4 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %5 = call %struct.davbus_softc* @mix_getdevinfo(%struct.snd_mixer* %4)
  store %struct.davbus_softc* %5, %struct.davbus_softc** %3, align 8
  %6 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %7 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %6, i32 0, i32 3
  store i32 (%struct.davbus_softc*, i32)* @screamer_read_status, i32 (%struct.davbus_softc*, i32)** %7, align 8
  %8 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %9 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %8, i32 0, i32 2
  store i32 (%struct.davbus_softc*, i32)* @screamer_set_outputs, i32 (%struct.davbus_softc*, i32)** %9, align 8
  %10 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %11 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %14 = load i32, i32* @SCREAMER_CODEC_ADDR0, align 4
  %15 = load i32, i32* @SCREAMER_INPUT_CD, align 4
  %16 = load i32, i32* @SCREAMER_DEFAULT_CD_GAIN, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @screamer_write_locked(%struct.davbus_softc* %13, i32 %14, i32 %17)
  %19 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %20 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %21 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %22 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DAVBUS_CODEC_STATUS, align 4
  %25 = call i32 @bus_read_4(i32 %23, i32 %24)
  %26 = call i32 @screamer_read_status(%struct.davbus_softc* %20, i32 %25)
  %27 = call i32 @screamer_set_outputs(%struct.davbus_softc* %19, i32 %26)
  %28 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %29 = load i32, i32* @SCREAMER_CODEC_ADDR2, align 4
  %30 = call i32 @screamer_write_locked(%struct.davbus_softc* %28, i32 %29, i32 0)
  %31 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %32 = load i32, i32* @SCREAMER_CODEC_ADDR4, align 4
  %33 = call i32 @screamer_write_locked(%struct.davbus_softc* %31, i32 %32, i32 0)
  %34 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %35 = load i32, i32* @SCREAMER_CODEC_ADDR5, align 4
  %36 = call i32 @screamer_write_locked(%struct.davbus_softc* %34, i32 %35, i32 0)
  %37 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %38 = load i32, i32* @SCREAMER_CODEC_ADDR6, align 4
  %39 = call i32 @screamer_write_locked(%struct.davbus_softc* %37, i32 %38, i32 0)
  %40 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %41 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %40, i32 0, i32 0
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %44 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %45 = call i32 @mix_setdevs(%struct.snd_mixer* %43, i32 %44)
  ret i32 0
}

declare dso_local %struct.davbus_softc* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @screamer_read_status(%struct.davbus_softc*, i32) #1

declare dso_local i32 @screamer_set_outputs(%struct.davbus_softc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @screamer_write_locked(%struct.davbus_softc*, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
