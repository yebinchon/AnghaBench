; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_legacy_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/pci/extr_virtio_pci.c_vtpci_setup_legacy_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtpci_softc = type { i32, %struct.vtpci_interrupt }
%struct.vtpci_interrupt = type { i32, i32 }

@vtpci_legacy_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtpci_softc*, i32)* @vtpci_setup_legacy_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtpci_setup_legacy_interrupt(%struct.vtpci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.vtpci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vtpci_interrupt*, align 8
  %6 = alloca i32, align 4
  store %struct.vtpci_softc* %0, %struct.vtpci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %7, i32 0, i32 1
  store %struct.vtpci_interrupt* %8, %struct.vtpci_interrupt** %5, align 8
  %9 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtpci_softc, %struct.vtpci_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %5, align 8
  %13 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @vtpci_legacy_intr, align 4
  %17 = load %struct.vtpci_softc*, %struct.vtpci_softc** %3, align 8
  %18 = load %struct.vtpci_interrupt*, %struct.vtpci_interrupt** %5, align 8
  %19 = getelementptr inbounds %struct.vtpci_interrupt, %struct.vtpci_interrupt* %18, i32 0, i32 0
  %20 = call i32 @bus_setup_intr(i32 %11, i32 %14, i32 %15, i32* null, i32 %16, %struct.vtpci_softc* %17, i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  ret i32 %21
}

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32, %struct.vtpci_softc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
