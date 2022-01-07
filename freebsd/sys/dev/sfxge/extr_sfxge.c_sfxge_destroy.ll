; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge.c_sfxge_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, i32, i32* }

@taskqueue_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*)* @sfxge_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_destroy(%struct.sfxge_softc* %0) #0 {
  %2 = alloca %struct.sfxge_softc*, align 8
  %3 = alloca i32*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %2, align 8
  %4 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %5 = call i32 @sfxge_tx_fini(%struct.sfxge_softc* %4)
  %6 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %7 = call i32 @sfxge_rx_fini(%struct.sfxge_softc* %6)
  %8 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %9 = call i32 @sfxge_port_fini(%struct.sfxge_softc* %8)
  %10 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %11 = call i32 @sfxge_ev_fini(%struct.sfxge_softc* %10)
  %12 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %13 = call i32 @sfxge_intr_fini(%struct.sfxge_softc* %12)
  %14 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %15 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @efx_nic_reset(i32* %16)
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @efx_vpd_fini(i32* %20)
  %22 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @efx_nvram_fini(i32* %24)
  %26 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %27 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @efx_nic_unprobe(i32* %28)
  %30 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %31 = call i32 @sfxge_mcdi_fini(%struct.sfxge_softc* %30)
  %32 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %33 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %3, align 8
  %35 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %36 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @efx_nic_destroy(i32* %37)
  %39 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %40 = call i32 @sfxge_dma_fini(%struct.sfxge_softc* %39)
  %41 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %42 = call i32 @sfxge_bar_fini(%struct.sfxge_softc* %41)
  %43 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %44 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @pci_disable_busmaster(i32 %45)
  %47 = load i32, i32* @taskqueue_thread, align 4
  %48 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %49 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %48, i32 0, i32 0
  %50 = call i32 @taskqueue_drain(i32 %47, i32* %49)
  %51 = load %struct.sfxge_softc*, %struct.sfxge_softc** %2, align 8
  %52 = call i32 @SFXGE_ADAPTER_LOCK_DESTROY(%struct.sfxge_softc* %51)
  ret void
}

declare dso_local i32 @sfxge_tx_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_rx_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_port_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_ev_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_intr_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_reset(i32*) #1

declare dso_local i32 @efx_vpd_fini(i32*) #1

declare dso_local i32 @efx_nvram_fini(i32*) #1

declare dso_local i32 @efx_nic_unprobe(i32*) #1

declare dso_local i32 @sfxge_mcdi_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @efx_nic_destroy(i32*) #1

declare dso_local i32 @sfxge_dma_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @sfxge_bar_fini(%struct.sfxge_softc*) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @SFXGE_ADAPTER_LOCK_DESTROY(%struct.sfxge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
