; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_init.c_r12a_rf_init_workaround.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_init.c_r12a_rf_init_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_RF_CTRL = common dso_local global i32 0, align 4
@R92C_RF_CTRL_EN = common dso_local global i32 0, align 4
@R92C_RF_CTRL_SDMRSTB = common dso_local global i32 0, align 4
@R92C_RF_CTRL_RSTB = common dso_local global i32 0, align 4
@R12A_RF_B_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @r12a_rf_init_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12a_rf_init_workaround(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R92C_RF_CTRL, align 4
  %5 = load i32, i32* @R92C_RF_CTRL_EN, align 4
  %6 = load i32, i32* @R92C_RF_CTRL_SDMRSTB, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @rtwn_write_1(%struct.rtwn_softc* %3, i32 %4, i32 %7)
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %10 = load i32, i32* @R92C_RF_CTRL, align 4
  %11 = load i32, i32* @R92C_RF_CTRL_EN, align 4
  %12 = load i32, i32* @R92C_RF_CTRL_RSTB, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @R92C_RF_CTRL_SDMRSTB, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @rtwn_write_1(%struct.rtwn_softc* %9, i32 %10, i32 %15)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %18 = load i32, i32* @R12A_RF_B_CTRL, align 4
  %19 = load i32, i32* @R92C_RF_CTRL_EN, align 4
  %20 = load i32, i32* @R92C_RF_CTRL_SDMRSTB, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @rtwn_write_1(%struct.rtwn_softc* %17, i32 %18, i32 %21)
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %24 = load i32, i32* @R12A_RF_B_CTRL, align 4
  %25 = load i32, i32* @R92C_RF_CTRL_EN, align 4
  %26 = load i32, i32* @R92C_RF_CTRL_RSTB, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @R92C_RF_CTRL_SDMRSTB, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @rtwn_write_1(%struct.rtwn_softc* %23, i32 %24, i32 %29)
  ret void
}

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
