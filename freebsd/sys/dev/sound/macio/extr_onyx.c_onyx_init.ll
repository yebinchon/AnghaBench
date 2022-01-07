; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_onyx.c_onyx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_onyx.c_onyx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_mixer = type { i32 }
%struct.onyx_softc = type { i32 }

@PCM3052_REG_LEFT_ATTN = common dso_local global i32 0, align 4
@onyx_initdata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@PCM3052_REG_RIGHT_ATTN = common dso_local global i32 0, align 4
@PCM3052_REG_CONTROL = common dso_local global i32 0, align 4
@PCM3052_REG_DAC_CONTROL = common dso_local global i32 0, align 4
@PCM3052_REG_DAC_DEEMPH = common dso_local global i32 0, align 4
@PCM3052_REG_DAC_FILTER = common dso_local global i32 0, align 4
@PCM3052_REG_OUT_PHASE = common dso_local global i32 0, align 4
@PCM3052_REG_ADC_CONTROL = common dso_local global i32 0, align 4
@PCM3052_REG_ADC_HPF_BP = common dso_local global i32 0, align 4
@PCM3052_REG_INFO_1 = common dso_local global i32 0, align 4
@PCM3052_REG_INFO_2 = common dso_local global i32 0, align 4
@PCM3052_REG_INFO_3 = common dso_local global i32 0, align 4
@PCM3052_REG_INFO_4 = common dso_local global i32 0, align 4
@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @onyx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onyx_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.onyx_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %6 = call i32 @mix_getdevinfo(%struct.snd_mixer* %5)
  %7 = call %struct.onyx_softc* @device_get_softc(i32 %6)
  store %struct.onyx_softc* %7, %struct.onyx_softc** %3, align 8
  %8 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %9 = load i32, i32* @PCM3052_REG_LEFT_ATTN, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 12), align 4
  %11 = call i32 @onyx_write(%struct.onyx_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %13 = load i32, i32* @PCM3052_REG_RIGHT_ATTN, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 11), align 4
  %15 = call i32 @onyx_write(%struct.onyx_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %17 = load i32, i32* @PCM3052_REG_CONTROL, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 10), align 4
  %19 = call i32 @onyx_write(%struct.onyx_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %21 = load i32, i32* @PCM3052_REG_DAC_CONTROL, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 9), align 4
  %23 = call i32 @onyx_write(%struct.onyx_softc* %20, i32 %21, i32 %22)
  %24 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %25 = load i32, i32* @PCM3052_REG_DAC_DEEMPH, align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 8), align 4
  %27 = call i32 @onyx_write(%struct.onyx_softc* %24, i32 %25, i32 %26)
  %28 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %29 = load i32, i32* @PCM3052_REG_DAC_FILTER, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 7), align 4
  %31 = call i32 @onyx_write(%struct.onyx_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %33 = load i32, i32* @PCM3052_REG_OUT_PHASE, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 6), align 4
  %35 = call i32 @onyx_write(%struct.onyx_softc* %32, i32 %33, i32 %34)
  %36 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %37 = load i32, i32* @PCM3052_REG_ADC_CONTROL, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 5), align 4
  %39 = call i32 @onyx_write(%struct.onyx_softc* %36, i32 %37, i32 %38)
  %40 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %41 = load i32, i32* @PCM3052_REG_ADC_HPF_BP, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 4), align 4
  %43 = call i32 @onyx_write(%struct.onyx_softc* %40, i32 %41, i32 %42)
  %44 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %45 = load i32, i32* @PCM3052_REG_INFO_1, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 3), align 4
  %47 = call i32 @onyx_write(%struct.onyx_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %49 = load i32, i32* @PCM3052_REG_INFO_2, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 2), align 4
  %51 = call i32 @onyx_write(%struct.onyx_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %53 = load i32, i32* @PCM3052_REG_INFO_3, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 1), align 4
  %55 = call i32 @onyx_write(%struct.onyx_softc* %52, i32 %53, i32 %54)
  %56 = load %struct.onyx_softc*, %struct.onyx_softc** %3, align 8
  %57 = load i32, i32* @PCM3052_REG_INFO_4, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @onyx_initdata, i32 0, i32 0), align 4
  %59 = call i32 @onyx_write(%struct.onyx_softc* %56, i32 %57, i32 %58)
  %60 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @mix_setdevs(%struct.snd_mixer* %63, i32 %64)
  ret i32 0
}

declare dso_local %struct.onyx_softc* @device_get_softc(i32) #1

declare dso_local i32 @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @onyx_write(%struct.onyx_softc*, i32, i32) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
