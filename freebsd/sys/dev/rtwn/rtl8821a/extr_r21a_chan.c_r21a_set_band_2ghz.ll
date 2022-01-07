; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_chan.c_r21a_set_band_2ghz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8821a/extr_r21a_chan.c_r21a_set_band_2ghz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc* }
%struct.r12a_softc = type { i64 }

@R12A_OFDMCCK_EN = common dso_local global i32 0, align 4
@R12A_OFDMCCK_EN_CCK = common dso_local global i32 0, align 4
@R12A_OFDMCCK_EN_OFDM = common dso_local global i32 0, align 4
@R12A_RFE_PINMUX_LNA_MASK = common dso_local global i32 0, align 4
@R12A_RFE_PINMUX_PA_A_MASK = common dso_local global i32 0, align 4
@R12A_TX_PATH = common dso_local global i32 0, align 4
@R12A_CCK_RX_PATH = common dso_local global i32 0, align 4
@R12A_CCK_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r21a_set_band_2ghz(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r12a_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 0
  %8 = load %struct.r12a_softc*, %struct.r12a_softc** %7, align 8
  store %struct.r12a_softc* %8, %struct.r12a_softc** %5, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = load i32, i32* @R12A_OFDMCCK_EN, align 4
  %11 = load i32, i32* @R12A_OFDMCCK_EN_CCK, align 4
  %12 = load i32, i32* @R12A_OFDMCCK_EN_OFDM, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %9, i32 %10, i32 0, i32 %13)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %16 = call i32 @R12A_RFE_PINMUX(i32 0)
  %17 = load i32, i32* @R12A_RFE_PINMUX_LNA_MASK, align 4
  %18 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %15, i32 %16, i32 %17, i32 28672)
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %20 = call i32 @R12A_RFE_PINMUX(i32 0)
  %21 = load i32, i32* @R12A_RFE_PINMUX_PA_A_MASK, align 4
  %22 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %19, i32 %20, i32 %21, i32 112)
  %23 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %24 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %29 = call i32 @R12A_RFE_INV(i32 0)
  %30 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %28, i32 %29, i32 0, i32 1048576)
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %32 = call i32 @R12A_RFE_INV(i32 0)
  %33 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %31, i32 %32, i32 4194304, i32 0)
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %35 = call i32 @R12A_RFE_PINMUX(i32 0)
  %36 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %34, i32 %35, i32 5, i32 2)
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %38 = call i32 @R12A_RFE_PINMUX(i32 0)
  %39 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %37, i32 %38, i32 1280, i32 512)
  br label %43

40:                                               ; preds = %2
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %42 = call i32 @r21a_bypass_ext_lna_2ghz(%struct.rtwn_softc* %41)
  br label %43

43:                                               ; preds = %40, %27
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %45 = call i32 @R12A_TX_SCALE(i32 0)
  %46 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %44, i32 %45, i32 3840, i32 0)
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %48 = load i32, i32* @R12A_TX_PATH, align 4
  %49 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %47, i32 %48, i32 240, i32 16)
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %51 = load i32, i32* @R12A_CCK_RX_PATH, align 4
  %52 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %50, i32 %51, i32 251658240, i32 16777216)
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @rtwn_set_basicrates(%struct.rtwn_softc* %53, i32 %54)
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %57 = load i32, i32* @R12A_CCK_CHECK, align 4
  %58 = call i32 @rtwn_write_1(%struct.rtwn_softc* %56, i32 %57, i32 0)
  ret void
}

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R12A_RFE_PINMUX(i32) #1

declare dso_local i32 @R12A_RFE_INV(i32) #1

declare dso_local i32 @r21a_bypass_ext_lna_2ghz(%struct.rtwn_softc*) #1

declare dso_local i32 @R12A_TX_SCALE(i32) #1

declare dso_local i32 @rtwn_set_basicrates(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
