; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_power_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32 }

@R92S_RF_CTRL = common dso_local global i64 0, align 8
@R92S_SYS_CLKR = common dso_local global i64 0, align 8
@R92S_SYS_FUNC_EN = common dso_local global i64 0, align 8
@R92S_PMC_FSM = common dso_local global i64 0, align 8
@R92S_SYS_ISO_CTRL = common dso_local global i64 0, align 8
@R92S_AFE_PLL_CTRL = common dso_local global i64 0, align 8
@R92S_LDOA15_CTRL = common dso_local global i64 0, align 8
@R92S_LDOV12D_CTRL = common dso_local global i64 0, align 8
@R92S_AFE_MISC = common dso_local global i64 0, align 8
@R92S_SPS0_CTRL = common dso_local global i64 0, align 8
@RSU_PWR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsu_softc*)* @rsu_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsu_power_off(%struct.rsu_softc* %0) #0 {
  %2 = alloca %struct.rsu_softc*, align 8
  store %struct.rsu_softc* %0, %struct.rsu_softc** %2, align 8
  %3 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %4 = load i64, i64* @R92S_RF_CTRL, align 8
  %5 = call i32 @rsu_write_1(%struct.rsu_softc* %3, i64 %4, i32 0)
  %6 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %7 = call i32 @rsu_ms_delay(%struct.rsu_softc* %6, i32 5)
  %8 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %9 = load i64, i64* @R92S_SYS_CLKR, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @rsu_write_1(%struct.rsu_softc* %8, i64 %10, i32 56)
  %12 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %13 = load i64, i64* @R92S_SYS_FUNC_EN, align 8
  %14 = add nsw i64 %13, 1
  %15 = call i32 @rsu_write_1(%struct.rsu_softc* %12, i64 %14, i32 112)
  %16 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %17 = load i64, i64* @R92S_PMC_FSM, align 8
  %18 = call i32 @rsu_write_1(%struct.rsu_softc* %16, i64 %17, i32 6)
  %19 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %20 = load i64, i64* @R92S_SYS_ISO_CTRL, align 8
  %21 = add nsw i64 %20, 0
  %22 = call i32 @rsu_write_1(%struct.rsu_softc* %19, i64 %21, i32 249)
  %23 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %24 = load i64, i64* @R92S_SYS_ISO_CTRL, align 8
  %25 = add nsw i64 %24, 1
  %26 = call i32 @rsu_write_1(%struct.rsu_softc* %23, i64 %25, i32 232)
  %27 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %28 = load i64, i64* @R92S_AFE_PLL_CTRL, align 8
  %29 = call i32 @rsu_write_1(%struct.rsu_softc* %27, i64 %28, i32 0)
  %30 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %31 = load i64, i64* @R92S_LDOA15_CTRL, align 8
  %32 = call i32 @rsu_write_1(%struct.rsu_softc* %30, i64 %31, i32 84)
  %33 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %34 = load i64, i64* @R92S_SYS_FUNC_EN, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @rsu_write_1(%struct.rsu_softc* %33, i64 %35, i32 80)
  %37 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %38 = load i64, i64* @R92S_LDOV12D_CTRL, align 8
  %39 = call i32 @rsu_write_1(%struct.rsu_softc* %37, i64 %38, i32 36)
  %40 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %41 = load i64, i64* @R92S_AFE_MISC, align 8
  %42 = call i32 @rsu_write_1(%struct.rsu_softc* %40, i64 %41, i32 48)
  %43 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %44 = load i64, i64* @R92S_SPS0_CTRL, align 8
  %45 = add nsw i64 %44, 0
  %46 = call i32 @rsu_write_1(%struct.rsu_softc* %43, i64 %45, i32 86)
  %47 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %48 = load i64, i64* @R92S_SPS0_CTRL, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @rsu_write_1(%struct.rsu_softc* %47, i64 %49, i32 67)
  %51 = load %struct.rsu_softc*, %struct.rsu_softc** %2, align 8
  %52 = load i32, i32* @RSU_PWR_OFF, align 4
  %53 = call i32 @rsu_set_fw_power_state(%struct.rsu_softc* %51, i32 %52)
  ret void
}

declare dso_local i32 @rsu_write_1(%struct.rsu_softc*, i64, i32) #1

declare dso_local i32 @rsu_ms_delay(%struct.rsu_softc*, i32) #1

declare dso_local i32 @rsu_set_fw_power_state(%struct.rsu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
