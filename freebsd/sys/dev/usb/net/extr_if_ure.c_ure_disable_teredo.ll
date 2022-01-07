; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_disable_teredo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_ure.c_ure_disable_teredo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ure_softc = type { i32 }

@URE_PLA_TEREDO_CFG = common dso_local global i32 0, align 4
@URE_MCU_TYPE_PLA = common dso_local global i32 0, align 4
@URE_TEREDO_SEL = common dso_local global i32 0, align 4
@URE_TEREDO_RS_EVENT_MASK = common dso_local global i32 0, align 4
@URE_OOB_TEREDO_EN = common dso_local global i32 0, align 4
@URE_PLA_WDT6_CTRL = common dso_local global i32 0, align 4
@URE_WDT6_SET_MODE = common dso_local global i32 0, align 4
@URE_PLA_REALWOW_TIMER = common dso_local global i32 0, align 4
@URE_PLA_TEREDO_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ure_softc*)* @ure_disable_teredo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ure_disable_teredo(%struct.ure_softc* %0) #0 {
  %2 = alloca %struct.ure_softc*, align 8
  store %struct.ure_softc* %0, %struct.ure_softc** %2, align 8
  %3 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %4 = load i32, i32* @URE_PLA_TEREDO_CFG, align 4
  %5 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %6 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %7 = load i32, i32* @URE_PLA_TEREDO_CFG, align 4
  %8 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %9 = call i32 @ure_read_4(%struct.ure_softc* %6, i32 %7, i32 %8)
  %10 = load i32, i32* @URE_TEREDO_SEL, align 4
  %11 = load i32, i32* @URE_TEREDO_RS_EVENT_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @URE_OOB_TEREDO_EN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = and i32 %9, %15
  %17 = call i32 @ure_write_4(%struct.ure_softc* %3, i32 %4, i32 %5, i32 %16)
  %18 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %19 = load i32, i32* @URE_PLA_WDT6_CTRL, align 4
  %20 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %21 = load i32, i32* @URE_WDT6_SET_MODE, align 4
  %22 = call i32 @ure_write_2(%struct.ure_softc* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %24 = load i32, i32* @URE_PLA_REALWOW_TIMER, align 4
  %25 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %26 = call i32 @ure_write_2(%struct.ure_softc* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.ure_softc*, %struct.ure_softc** %2, align 8
  %28 = load i32, i32* @URE_PLA_TEREDO_TIMER, align 4
  %29 = load i32, i32* @URE_MCU_TYPE_PLA, align 4
  %30 = call i32 @ure_write_4(%struct.ure_softc* %27, i32 %28, i32 %29, i32 0)
  ret void
}

declare dso_local i32 @ure_write_4(%struct.ure_softc*, i32, i32, i32) #1

declare dso_local i32 @ure_read_4(%struct.ure_softc*, i32, i32) #1

declare dso_local i32 @ure_write_2(%struct.ure_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
