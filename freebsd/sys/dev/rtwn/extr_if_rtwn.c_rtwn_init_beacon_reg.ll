; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_init_beacon_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_init_beacon_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_BCN_CTRL_DIS_TSF_UDT0 = common dso_local global i32 0, align 4
@R92C_TBTT_PROHIBIT = common dso_local global i32 0, align 4
@R92C_DRVERLYINT = common dso_local global i32 0, align 4
@R92C_BCNDMATIM = common dso_local global i32 0, align 4
@R92C_BCNTCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_init_beacon_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_init_beacon_reg(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = call i32 @R92C_BCN_CTRL(i32 0)
  %5 = load i32, i32* @R92C_BCN_CTRL_DIS_TSF_UDT0, align 4
  %6 = call i32 @rtwn_write_1(%struct.rtwn_softc* %3, i32 %4, i32 %5)
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = call i32 @R92C_BCN_CTRL(i32 1)
  %9 = load i32, i32* @R92C_BCN_CTRL_DIS_TSF_UDT0, align 4
  %10 = call i32 @rtwn_write_1(%struct.rtwn_softc* %7, i32 %8, i32 %9)
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %12 = load i32, i32* @R92C_TBTT_PROHIBIT, align 4
  %13 = call i32 @rtwn_write_2(%struct.rtwn_softc* %11, i32 %12, i32 25604)
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = load i32, i32* @R92C_DRVERLYINT, align 4
  %16 = call i32 @rtwn_write_1(%struct.rtwn_softc* %14, i32 %15, i32 5)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %18 = load i32, i32* @R92C_BCNDMATIM, align 4
  %19 = call i32 @rtwn_write_1(%struct.rtwn_softc* %17, i32 %18, i32 2)
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %21 = load i32, i32* @R92C_BCNTCFG, align 4
  %22 = call i32 @rtwn_write_2(%struct.rtwn_softc* %20, i32 %21, i32 26127)
  ret void
}

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @R92C_BCN_CTRL(i32) #1

declare dso_local i32 @rtwn_write_2(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
