; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_rx.c_rtwn_pci_rx_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_rx.c_rtwn_pci_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.rtwn_pci_softc = type { i32, %struct.rtwn_rx_ring }
%struct.rtwn_rx_ring = type { i64, i32, i32, %struct.rtwn_rx_data*, %struct.rtwn_rx_stat_pci* }
%struct.rtwn_rx_data = type { i32 }
%struct.rtwn_rx_stat_pci = type { i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@RTWN_RXDW0_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unknown Rx classification code\00", align 1
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@RTWN_RUNNING = common dso_local global i32 0, align 4
@RTWN_PCI_RX_LIST_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*)* @rtwn_pci_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_rx_done(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.rtwn_pci_softc*, align 8
  %4 = alloca %struct.rtwn_rx_ring*, align 8
  %5 = alloca %struct.rtwn_rx_stat_pci*, align 8
  %6 = alloca %struct.rtwn_rx_data*, align 8
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %9 = call %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc* %8)
  store %struct.rtwn_pci_softc* %9, %struct.rtwn_pci_softc** %3, align 8
  %10 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %10, i32 0, i32 1
  store %struct.rtwn_rx_ring* %11, %struct.rtwn_rx_ring** %4, align 8
  %12 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %19 = call i32 @bus_dmamap_sync(i32 %14, i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %109, %1
  %21 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %21, i32 0, i32 4
  %23 = load %struct.rtwn_rx_stat_pci*, %struct.rtwn_rx_stat_pci** %22, align 8
  %24 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %25 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.rtwn_rx_stat_pci, %struct.rtwn_rx_stat_pci* %23, i64 %26
  store %struct.rtwn_rx_stat_pci* %27, %struct.rtwn_rx_stat_pci** %5, align 8
  %28 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %29 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %28, i32 0, i32 3
  %30 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %29, align 8
  %31 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %32 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %30, i64 %33
  store %struct.rtwn_rx_data* %34, %struct.rtwn_rx_data** %6, align 8
  %35 = load %struct.rtwn_rx_stat_pci*, %struct.rtwn_rx_stat_pci** %5, align 8
  %36 = getelementptr inbounds %struct.rtwn_rx_stat_pci, %struct.rtwn_rx_stat_pci* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32toh(i32 %37)
  %39 = load i32, i32* @RTWN_RXDW0_OWN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %20
  br label %110

43:                                               ; preds = %20
  %44 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %45 = call i32 @rtwn_pci_rx_buf_copy(%struct.rtwn_pci_softc* %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %47 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %48 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rtwn_classify_intr(%struct.rtwn_softc* %46, i32 %49, i32 %50)
  switch i32 %51, label %63 [
    i32 130, label %52
    i32 128, label %55
    i32 129, label %59
  ]

52:                                               ; preds = %43
  %53 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %54 = call i32 @rtwn_pci_rx_frame(%struct.rtwn_pci_softc* %53)
  br label %65

55:                                               ; preds = %43
  %56 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @rtwn_pci_tx_report(%struct.rtwn_pci_softc* %56, i32 %57)
  br label %65

59:                                               ; preds = %43
  %60 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @rtwn_pci_c2h_report(%struct.rtwn_pci_softc* %60, i32 %61)
  br label %65

63:                                               ; preds = %43
  %64 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59, %55, %52
  %66 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %3, align 8
  %67 = load %struct.rtwn_rx_stat_pci*, %struct.rtwn_rx_stat_pci** %5, align 8
  %68 = load %struct.rtwn_rx_data*, %struct.rtwn_rx_data** %6, align 8
  %69 = getelementptr inbounds %struct.rtwn_rx_data, %struct.rtwn_rx_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @MJUMPAGESIZE, align 4
  %72 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @rtwn_pci_setup_rx_desc(%struct.rtwn_pci_softc* %66, %struct.rtwn_rx_stat_pci* %67, i32 %70, i32 %71, i64 %74)
  %76 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %77 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RTWN_RUNNING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %65
  br label %110

83:                                               ; preds = %65
  %84 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %85 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %88 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %91 = call i32 @bus_dmamap_sync(i32 %86, i32 %89, i32 %90)
  %92 = load %struct.rtwn_rx_stat_pci*, %struct.rtwn_rx_stat_pci** %5, align 8
  %93 = getelementptr inbounds %struct.rtwn_rx_stat_pci, %struct.rtwn_rx_stat_pci* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32toh(i32 %94)
  %96 = load i32, i32* @RTWN_RXDW0_OWN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %83
  %100 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %101 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, 1
  %104 = load i32, i32* @RTWN_PCI_RX_LIST_COUNT, align 4
  %105 = sext i32 %104 to i64
  %106 = urem i64 %103, %105
  %107 = load %struct.rtwn_rx_ring*, %struct.rtwn_rx_ring** %4, align 8
  %108 = getelementptr inbounds %struct.rtwn_rx_ring, %struct.rtwn_rx_ring* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %99, %83
  br label %20

110:                                              ; preds = %82, %42
  ret void
}

declare dso_local %struct.rtwn_pci_softc* @RTWN_PCI_SOFTC(%struct.rtwn_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @rtwn_pci_rx_buf_copy(%struct.rtwn_pci_softc*) #1

declare dso_local i32 @rtwn_classify_intr(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_pci_rx_frame(%struct.rtwn_pci_softc*) #1

declare dso_local i32 @rtwn_pci_tx_report(%struct.rtwn_pci_softc*, i32) #1

declare dso_local i32 @rtwn_pci_c2h_report(%struct.rtwn_pci_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rtwn_pci_setup_rx_desc(%struct.rtwn_pci_softc*, %struct.rtwn_rx_stat_pci*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
