; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_rxfilter_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_rx.c_rtwn_rxfilter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_RXFLTMAP1 = common dso_local global i32 0, align 4
@R92C_RXFLTMAP2 = common dso_local global i32 0, align 4
@R92C_RCR_AM = common dso_local global i32 0, align 4
@R92C_RCR_AB = common dso_local global i32 0, align 4
@R92C_RCR_APM = common dso_local global i32 0, align 4
@R92C_RCR_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@R92C_RCR_APP_PHYSTS = common dso_local global i32 0, align 4
@R92C_RCR_APP_ICV = common dso_local global i32 0, align 4
@R92C_RCR_APP_MIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtwn_rxfilter_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %3)
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %6 = call i32 @rtwn_set_multi(%struct.rtwn_softc* %5)
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = load i32, i32* @R92C_RXFLTMAP1, align 4
  %9 = call i32 @rtwn_write_2(%struct.rtwn_softc* %7, i32 %8, i32 0)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = load i32, i32* @R92C_RXFLTMAP2, align 4
  %12 = call i32 @rtwn_write_2(%struct.rtwn_softc* %10, i32 %11, i32 0)
  %13 = load i32, i32* @R92C_RCR_AM, align 4
  %14 = load i32, i32* @R92C_RCR_AB, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @R92C_RCR_APM, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @R92C_RCR_HTC_LOC_CTRL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @R92C_RCR_APP_PHYSTS, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @R92C_RCR_APP_ICV, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @R92C_RCR_APP_MIC, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %31 = call i32 @rtwn_rxfilter_update(%struct.rtwn_softc* %30)
  ret void
}

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_set_multi(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_rxfilter_update(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
