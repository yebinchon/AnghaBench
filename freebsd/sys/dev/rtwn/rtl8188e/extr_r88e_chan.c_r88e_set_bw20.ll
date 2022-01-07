; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_chan.c_r88e_set_bw20.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_chan.c_r88e_set_bw20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32* }

@R92C_BWOPMODE = common dso_local global i32 0, align 4
@R92C_BWOPMODE_20MHZ = common dso_local global i32 0, align 4
@R92C_FPGA0_RFMOD = common dso_local global i32 0, align 4
@R92C_RFMOD_40MHZ = common dso_local global i32 0, align 4
@R92C_FPGA1_RFMOD = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW = common dso_local global i32 0, align 4
@R88E_RF_CHNLBW_BW20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r88e_set_bw20(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 0
  %8 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  store %struct.r92c_softc* %8, %struct.r92c_softc** %5, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = load i32, i32* @R92C_BWOPMODE, align 4
  %11 = load i32, i32* @R92C_BWOPMODE_20MHZ, align 4
  %12 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %9, i32 %10, i32 0, i32 %11)
  %13 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %14 = load i32, i32* @R92C_FPGA0_RFMOD, align 4
  %15 = load i32, i32* @R92C_RFMOD_40MHZ, align 4
  %16 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %18 = load i32, i32* @R92C_FPGA1_RFMOD, align 4
  %19 = load i32, i32* @R92C_RFMOD_40MHZ, align 4
  %20 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %17, i32 %18, i32 %19, i32 0)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %22 = load i32, i32* @R92C_RF_CHNLBW, align 4
  %23 = load %struct.r92c_softc*, %struct.r92c_softc** %5, align 8
  %24 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, -4096
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @R88E_RF_CHNLBW_BW20, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %21, i32 0, i32 %22, i32 %32)
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
