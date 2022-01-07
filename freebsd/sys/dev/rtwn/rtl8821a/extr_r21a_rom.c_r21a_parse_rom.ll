; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_rom.c_r21a_parse_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_rom.c_r21a_parse_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.TYPE_2__, %struct.r12a_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.r12a_softc = type { i32, i32, i8*, i8*, i32, i32 }
%struct.r12a_rom = type { i32, i32, i32, i32, i32 }

@R92C_MULTI_FUNC_CTRL = common dso_local global i32 0, align 4
@R92C_MULTI_BT_FUNC_EN = common dso_local global i32 0, align 4
@R12A_RF_BT_OPT_ANT_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r21a_parse_rom(%struct.rtwn_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.r12a_softc*, align 8
  %6 = alloca %struct.r12a_rom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 1
  %12 = load %struct.r12a_softc*, %struct.r12a_softc** %11, align 8
  store %struct.r12a_softc* %12, %struct.r12a_softc** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = bitcast i32* %13 to %struct.r12a_rom*
  store %struct.r12a_rom* %14, %struct.r12a_rom** %6, align 8
  %15 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %16 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @RTWN_GET_ROM_VAR(i32 %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %20 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @RTWN_GET_ROM_VAR(i32 %21, i32 0)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %24 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RTWN_GET_ROM_VAR(i32 %25, i32 0)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @R21A_ROM_IS_PA_EXT_2GHZ(i32 %27)
  %29 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %30 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @R21A_ROM_IS_PA_EXT_5GHZ(i32 %31)
  %33 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %34 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i8* @R21A_ROM_IS_LNA_EXT(i32 %35)
  %37 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %38 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i8* @R21A_ROM_IS_LNA_EXT(i32 %39)
  %41 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %42 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %44 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %43)
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %46 = load i32, i32* @R92C_MULTI_FUNC_CTRL, align 4
  %47 = call i32 @rtwn_read_4(%struct.rtwn_softc* %45, i32 %46)
  %48 = load i32, i32* @R92C_MULTI_BT_FUNC_EN, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %55 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %57 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %56)
  %58 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %59 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @R12A_RF_BT_OPT_ANT_NUM, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %64 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %66 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.r12a_rom*, %struct.r12a_rom** %6, align 8
  %70 = getelementptr inbounds %struct.r12a_rom, %struct.r12a_rom* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @IEEE80211_ADDR_COPY(i32 %68, i32 %71)
  %73 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @r12a_parse_rom_common(%struct.rtwn_softc* %73, i32* %74)
  ret void
}

declare dso_local i32 @RTWN_GET_ROM_VAR(i32, i32) #1

declare dso_local i32 @R21A_ROM_IS_PA_EXT_2GHZ(i32) #1

declare dso_local i32 @R21A_ROM_IS_PA_EXT_5GHZ(i32) #1

declare dso_local i8* @R21A_ROM_IS_LNA_EXT(i32) #1

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_read_4(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i32) #1

declare dso_local i32 @r12a_parse_rom_common(%struct.rtwn_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
