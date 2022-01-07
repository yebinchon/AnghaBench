; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_mcu_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_mcu_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32 }

@RT2661_MAC_CSR11 = common dso_local global i32 0, align 4
@RT2661_SOFT_RESET_CSR = common dso_local global i32 0, align 4
@RT2661_IO_CNTL_CSR = common dso_local global i32 0, align 4
@RT2661_PCI_USEC_CSR = common dso_local global i32 0, align 4
@RT2661_MCU_CMD_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2661_softc*)* @rt2661_mcu_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_mcu_wakeup(%struct.rt2661_softc* %0) #0 {
  %2 = alloca %struct.rt2661_softc*, align 8
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %2, align 8
  %3 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %4 = load i32, i32* @RT2661_MAC_CSR11, align 4
  %5 = call i32 @RAL_WRITE(%struct.rt2661_softc* %3, i32 %4, i32 327680)
  %6 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %7 = load i32, i32* @RT2661_SOFT_RESET_CSR, align 4
  %8 = call i32 @RAL_WRITE(%struct.rt2661_softc* %6, i32 %7, i32 7)
  %9 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %10 = load i32, i32* @RT2661_IO_CNTL_CSR, align 4
  %11 = call i32 @RAL_WRITE(%struct.rt2661_softc* %9, i32 %10, i32 24)
  %12 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %13 = load i32, i32* @RT2661_PCI_USEC_CSR, align 4
  %14 = call i32 @RAL_WRITE(%struct.rt2661_softc* %12, i32 %13, i32 32)
  %15 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %16 = load i32, i32* @RT2661_MCU_CMD_WAKEUP, align 4
  %17 = call i32 @rt2661_tx_cmd(%struct.rt2661_softc* %15, i32 %16, i32 0)
  ret void
}

declare dso_local i32 @RAL_WRITE(%struct.rt2661_softc*, i32, i32) #1

declare dso_local i32 @rt2661_tx_cmd(%struct.rt2661_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
