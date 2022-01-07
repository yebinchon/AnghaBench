; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_rx.c_r92ce_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_rx.c_r92ce_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_pci_softc = type { %struct.rtwn_softc }
%struct.rtwn_softc = type { i32 }

@R92C_HIMR = common dso_local global i32 0, align 4
@R92C_INT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92ce_enable_intr(%struct.rtwn_pci_softc* %0) #0 {
  %2 = alloca %struct.rtwn_pci_softc*, align 8
  %3 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_pci_softc* %0, %struct.rtwn_pci_softc** %2, align 8
  %4 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %4, i32 0, i32 0
  store %struct.rtwn_softc* %5, %struct.rtwn_softc** %3, align 8
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = load i32, i32* @R92C_HIMR, align 4
  %8 = load i32, i32* @R92C_INT_ENABLE, align 4
  %9 = call i32 @rtwn_write_4(%struct.rtwn_softc* %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
