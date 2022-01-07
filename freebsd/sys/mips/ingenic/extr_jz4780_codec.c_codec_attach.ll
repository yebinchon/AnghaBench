; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_codec.c_codec_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_codec.c_codec_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codec_softc = type { i32*, i32, i32, i32, i32 }

@codec_spec = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"could not allocate resources for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"i2s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"could not get i2s clock\0A\00", align 1
@CR_VIC = common dso_local global i32 0, align 4
@VIC_SB_SLEEP = common dso_local global i32 0, align 4
@VIC_SB = common dso_local global i32 0, align 4
@CR_DAC = common dso_local global i32 0, align 4
@DAC_SB = common dso_local global i32 0, align 4
@DAC_MUTE = common dso_local global i32 0, align 4
@AICR_DAC = common dso_local global i32 0, align 4
@AICR_DAC_SB = common dso_local global i32 0, align 4
@DAC_ADWL_M = common dso_local global i32 0, align 4
@DAC_ADWL_16 = common dso_local global i32 0, align 4
@AUDIOIF_M = common dso_local global i32 0, align 4
@AUDIOIF_I2S = common dso_local global i32 0, align 4
@FCR_DAC_48 = common dso_local global i32 0, align 4
@FCR_DAC = common dso_local global i32 0, align 4
@CR_HP = common dso_local global i32 0, align 4
@HP_SB = common dso_local global i32 0, align 4
@HP_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @codec_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @codec_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.codec_softc*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.codec_softc* @device_get_softc(i32 %6)
  store %struct.codec_softc* %7, %struct.codec_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %10 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @codec_spec, align 4
  %13 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %14 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i64 @bus_alloc_resources(i32 %11, i32 %12, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %128

22:                                               ; preds = %1
  %23 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %24 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rman_get_bustag(i32 %27)
  %29 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %30 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %32 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @rman_get_bushandle(i32 %35)
  %37 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %38 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %41 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %40, i32 0, i32 1
  %42 = call i64 @clk_get_by_ofw_name(i32 %39, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %22
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @codec_spec, align 4
  %49 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %50 = getelementptr inbounds %struct.codec_softc, %struct.codec_softc* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @bus_release_resources(i32 %47, i32 %48, i32* %51)
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %128

54:                                               ; preds = %22
  %55 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %56 = load i32, i32* @CR_VIC, align 4
  %57 = call i32 @codec_read(%struct.codec_softc* %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @VIC_SB_SLEEP, align 4
  %59 = load i32, i32* @VIC_SB, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %5, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %65 = load i32, i32* @CR_VIC, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @codec_write(%struct.codec_softc* %64, i32 %65, i32 %66)
  %68 = call i32 @DELAY(i32 20000)
  %69 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %70 = load i32, i32* @CR_DAC, align 4
  %71 = call i32 @codec_read(%struct.codec_softc* %69, i32 %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @DAC_SB, align 4
  %73 = load i32, i32* @DAC_MUTE, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %5, align 4
  %78 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %79 = load i32, i32* @CR_DAC, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @codec_write(%struct.codec_softc* %78, i32 %79, i32 %80)
  %82 = call i32 @DELAY(i32 10000)
  %83 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %84 = load i32, i32* @AICR_DAC, align 4
  %85 = call i32 @codec_read(%struct.codec_softc* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* @AICR_DAC_SB, align 4
  %87 = load i32, i32* @DAC_ADWL_M, align 4
  %88 = or i32 %86, %87
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @DAC_ADWL_16, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @AUDIOIF_M, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @AUDIOIF_I2S, align 4
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %5, align 4
  %102 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %103 = load i32, i32* @AICR_DAC, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @codec_write(%struct.codec_softc* %102, i32 %103, i32 %104)
  %106 = call i32 @DELAY(i32 10000)
  %107 = load i32, i32* @FCR_DAC_48, align 4
  store i32 %107, i32* %5, align 4
  %108 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %109 = load i32, i32* @FCR_DAC, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @codec_write(%struct.codec_softc* %108, i32 %109, i32 %110)
  %112 = call i32 @DELAY(i32 10000)
  %113 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %114 = load i32, i32* @CR_HP, align 4
  %115 = call i32 @codec_read(%struct.codec_softc* %113, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @HP_SB, align 4
  %117 = load i32, i32* @HP_MUTE, align 4
  %118 = or i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %123 = load i32, i32* @CR_HP, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @codec_write(%struct.codec_softc* %122, i32 %123, i32 %124)
  %126 = load %struct.codec_softc*, %struct.codec_softc** %4, align 8
  %127 = call i32 @ci20_hp_unmute(%struct.codec_softc* %126)
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %54, %44, %18
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.codec_softc* @device_get_softc(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i64 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

declare dso_local i32 @codec_read(%struct.codec_softc*, i32) #1

declare dso_local i32 @codec_write(%struct.codec_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ci20_hp_unmute(%struct.codec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
