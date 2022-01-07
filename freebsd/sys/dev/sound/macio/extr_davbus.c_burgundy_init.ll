; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/macio/extr_davbus.c_burgundy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_mixer = type { i32 }
%struct.davbus_softc = type { i32, i32, i32 (%struct.davbus_softc*, i32)*, i32 (%struct.davbus_softc*, i32)* }

@BURGUNDY_MIX0_REG = common dso_local global i32 0, align 4
@BURGUNDY_MIX1_REG = common dso_local global i32 0, align 4
@BURGUNDY_MIX2_REG = common dso_local global i32 0, align 4
@BURGUNDY_MIX_ISA = common dso_local global i32 0, align 4
@BURGUNDY_MIX3_REG = common dso_local global i32 0, align 4
@BURGUNDY_OS_REG = common dso_local global i32 0, align 4
@BURGUNDY_OS0_MIX2 = common dso_local global i32 0, align 4
@BURGUNDY_OS1_MIX2 = common dso_local global i32 0, align 4
@BURGUNDY_SDIN_REG = common dso_local global i32 0, align 4
@BURGUNDY_ISA_SF0 = common dso_local global i32 0, align 4
@BURGUNDY_MXS2L_REG = common dso_local global i32 0, align 4
@BURGUNDY_MXS_UNITY = common dso_local global i32 0, align 4
@BURGUNDY_MXS2R_REG = common dso_local global i32 0, align 4
@BURGUNDY_OSS0L_REG = common dso_local global i32 0, align 4
@BURGUNDY_OSS_UNITY = common dso_local global i32 0, align 4
@BURGUNDY_OSS0R_REG = common dso_local global i32 0, align 4
@BURGUNDY_OSS1L_REG = common dso_local global i32 0, align 4
@BURGUNDY_OSS1R_REG = common dso_local global i32 0, align 4
@BURGUNDY_ISSAL_REG = common dso_local global i32 0, align 4
@BURGUNDY_ISS_UNITY = common dso_local global i32 0, align 4
@BURGUNDY_ISSAR_REG = common dso_local global i32 0, align 4
@DAVBUS_CODEC_STATUS = common dso_local global i32 0, align 4
@SOUND_MASK_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_mixer*)* @burgundy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @burgundy_init(%struct.snd_mixer* %0) #0 {
  %2 = alloca %struct.snd_mixer*, align 8
  %3 = alloca %struct.davbus_softc*, align 8
  store %struct.snd_mixer* %0, %struct.snd_mixer** %2, align 8
  %4 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %5 = call %struct.davbus_softc* @mix_getdevinfo(%struct.snd_mixer* %4)
  store %struct.davbus_softc* %5, %struct.davbus_softc** %3, align 8
  %6 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %7 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %6, i32 0, i32 3
  store i32 (%struct.davbus_softc*, i32)* @burgundy_read_status, i32 (%struct.davbus_softc*, i32)** %7, align 8
  %8 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %9 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %8, i32 0, i32 2
  store i32 (%struct.davbus_softc*, i32)* @burgundy_set_outputs, i32 (%struct.davbus_softc*, i32)** %9, align 8
  %10 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %11 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %10, i32 0, i32 0
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %14 = call i32 @burgundy_write_locked(%struct.davbus_softc* %13, i32 91904, i32 64)
  %15 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %16 = load i32, i32* @BURGUNDY_MIX0_REG, align 4
  %17 = call i32 @burgundy_write_locked(%struct.davbus_softc* %15, i32 %16, i32 0)
  %18 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %19 = load i32, i32* @BURGUNDY_MIX1_REG, align 4
  %20 = call i32 @burgundy_write_locked(%struct.davbus_softc* %18, i32 %19, i32 0)
  %21 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %22 = load i32, i32* @BURGUNDY_MIX2_REG, align 4
  %23 = load i32, i32* @BURGUNDY_MIX_ISA, align 4
  %24 = call i32 @burgundy_write_locked(%struct.davbus_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %26 = load i32, i32* @BURGUNDY_MIX3_REG, align 4
  %27 = call i32 @burgundy_write_locked(%struct.davbus_softc* %25, i32 %26, i32 0)
  %28 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %29 = load i32, i32* @BURGUNDY_OS_REG, align 4
  %30 = load i32, i32* @BURGUNDY_OS0_MIX2, align 4
  %31 = load i32, i32* @BURGUNDY_OS1_MIX2, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @burgundy_write_locked(%struct.davbus_softc* %28, i32 %29, i32 %32)
  %34 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %35 = load i32, i32* @BURGUNDY_SDIN_REG, align 4
  %36 = load i32, i32* @BURGUNDY_ISA_SF0, align 4
  %37 = call i32 @burgundy_write_locked(%struct.davbus_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %39 = load i32, i32* @BURGUNDY_MXS2L_REG, align 4
  %40 = load i32, i32* @BURGUNDY_MXS_UNITY, align 4
  %41 = call i32 @burgundy_write_locked(%struct.davbus_softc* %38, i32 %39, i32 %40)
  %42 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %43 = load i32, i32* @BURGUNDY_MXS2R_REG, align 4
  %44 = load i32, i32* @BURGUNDY_MXS_UNITY, align 4
  %45 = call i32 @burgundy_write_locked(%struct.davbus_softc* %42, i32 %43, i32 %44)
  %46 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %47 = load i32, i32* @BURGUNDY_OSS0L_REG, align 4
  %48 = load i32, i32* @BURGUNDY_OSS_UNITY, align 4
  %49 = call i32 @burgundy_write_locked(%struct.davbus_softc* %46, i32 %47, i32 %48)
  %50 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %51 = load i32, i32* @BURGUNDY_OSS0R_REG, align 4
  %52 = load i32, i32* @BURGUNDY_OSS_UNITY, align 4
  %53 = call i32 @burgundy_write_locked(%struct.davbus_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %55 = load i32, i32* @BURGUNDY_OSS1L_REG, align 4
  %56 = load i32, i32* @BURGUNDY_OSS_UNITY, align 4
  %57 = call i32 @burgundy_write_locked(%struct.davbus_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %59 = load i32, i32* @BURGUNDY_OSS1R_REG, align 4
  %60 = load i32, i32* @BURGUNDY_OSS_UNITY, align 4
  %61 = call i32 @burgundy_write_locked(%struct.davbus_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %63 = load i32, i32* @BURGUNDY_ISSAL_REG, align 4
  %64 = load i32, i32* @BURGUNDY_ISS_UNITY, align 4
  %65 = call i32 @burgundy_write_locked(%struct.davbus_softc* %62, i32 %63, i32 %64)
  %66 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %67 = load i32, i32* @BURGUNDY_ISSAR_REG, align 4
  %68 = load i32, i32* @BURGUNDY_ISS_UNITY, align 4
  %69 = call i32 @burgundy_write_locked(%struct.davbus_softc* %66, i32 %67, i32 %68)
  %70 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %71 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %72 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %73 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DAVBUS_CODEC_STATUS, align 4
  %76 = call i32 @bus_read_4(i32 %74, i32 %75)
  %77 = call i32 @burgundy_read_status(%struct.davbus_softc* %71, i32 %76)
  %78 = call i32 @burgundy_set_outputs(%struct.davbus_softc* %70, i32 %77)
  %79 = load %struct.davbus_softc*, %struct.davbus_softc** %3, align 8
  %80 = getelementptr inbounds %struct.davbus_softc, %struct.davbus_softc* %79, i32 0, i32 0
  %81 = call i32 @mtx_unlock(i32* %80)
  %82 = load %struct.snd_mixer*, %struct.snd_mixer** %2, align 8
  %83 = load i32, i32* @SOUND_MASK_VOLUME, align 4
  %84 = call i32 @mix_setdevs(%struct.snd_mixer* %82, i32 %83)
  ret i32 0
}

declare dso_local %struct.davbus_softc* @mix_getdevinfo(%struct.snd_mixer*) #1

declare dso_local i32 @burgundy_read_status(%struct.davbus_softc*, i32) #1

declare dso_local i32 @burgundy_set_outputs(%struct.davbus_softc*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @burgundy_write_locked(%struct.davbus_softc*, i32, i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mix_setdevs(%struct.snd_mixer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
