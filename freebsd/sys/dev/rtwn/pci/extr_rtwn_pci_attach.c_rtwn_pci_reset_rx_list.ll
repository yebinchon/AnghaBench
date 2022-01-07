; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_rx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_reset_rx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_pci_softc = type { %struct.rtwn_rx_ring }
%struct.rtwn_rx_ring = type { i64, i32*, %struct.rtwn_rx_data* }
%struct.rtwn_rx_data = type { i32 }

@RTWN_PCI_RX_LIST_COUNT = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_pci_reset_rx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_reset_rx_list(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_pci_softc*, align 8
  %4 = alloca %struct.rtwn_rx_ring*, align 8
  %5 = alloca %struct.rtwn_rx_data*, align 8
  %6 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %7)
  store %struct.rtwn_pci_softc* %8, %struct.rtwn_pci_softc** %3, align 8
  %9 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %10 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %9, i32 0, i32 0
  store %struct.rtwn_rx_ring* %10, %struct.rtwn_rx_ring** %4, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %35, %1
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @RTWN_PCI_RX_LIST_COUNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %11
  %16 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %17 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %16, i32 0, i32 2
  %18 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %18, i64 %20
  store %struct.rtwn_rx_data* %21, %struct.rtwn_rx_data** %5, align 8
  %22 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %23 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %24 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %5, align 8
  %30 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MJUMPAGESIZE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rtwn_pci_setup_rx_desc(%struct.rtwn_pci_softc* %22, i32* %28, i32 %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %15
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %11

38:                                               ; preds = %11
  %39 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %40 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  ret void
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_pci_setup_rx_desc(%struct.rtwn_pci_softc*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
