; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/et/extr_if_et.c_et_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et_softc = type { i64, i32, i64, i64, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@ET_INTR_MASK = common dso_local global i32 0, align 4
@ET_MAC_CFG1 = common dso_local global i32 0, align 4
@ET_MAC_CFG1_TXEN = common dso_local global i32 0, align 4
@ET_MAC_CFG1_RXEN = common dso_local global i32 0, align 4
@ET_FLAG_TXRX_ENABLED = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et_softc*)* @et_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et_stop(%struct.et_softc* %0) #0 {
  %2 = alloca %struct.et_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.et_softc* %0, %struct.et_softc** %2, align 8
  %4 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %5 = call i32 @ET_LOCK_ASSERT(%struct.et_softc* %4)
  %6 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %7 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %6, i32 0, i32 5
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %10 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %9, i32 0, i32 4
  %11 = call i32 @callout_stop(i32* %10)
  %12 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %13 = load i32, i32* @ET_INTR_MASK, align 4
  %14 = call i32 @CSR_WRITE_4(%struct.et_softc* %12, i32 %13, i32 -1)
  %15 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %16 = load i32, i32* @ET_MAC_CFG1, align 4
  %17 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %18 = load i32, i32* @ET_MAC_CFG1, align 4
  %19 = call i32 @CSR_READ_4(%struct.et_softc* %17, i32 %18)
  %20 = load i32, i32* @ET_MAC_CFG1_TXEN, align 4
  %21 = load i32, i32* @ET_MAC_CFG1_RXEN, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  %25 = call i32 @CSR_WRITE_4(%struct.et_softc* %15, i32 %16, i32 %24)
  %26 = call i32 @DELAY(i32 100)
  %27 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %28 = call i32 @et_stop_rxdma(%struct.et_softc* %27)
  %29 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %30 = call i32 @et_stop_txdma(%struct.et_softc* %29)
  %31 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %32 = call i32 @et_stats_update(%struct.et_softc* %31)
  %33 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %34 = call i32 @et_free_tx_ring(%struct.et_softc* %33)
  %35 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %36 = call i32 @et_free_rx_ring(%struct.et_softc* %35)
  %37 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %38 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %40 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @ET_FLAG_TXRX_ENABLED, align 4
  %42 = xor i32 %41, -1
  %43 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %44 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.et_softc*, %struct.et_softc** %2, align 8
  %48 = getelementptr inbounds %struct.et_softc, %struct.et_softc* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %50 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %52
  store i32 %56, i32* %54, align 4
  ret void
}

declare dso_local i32 @ET_LOCK_ASSERT(%struct.et_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.et_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.et_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @et_stop_rxdma(%struct.et_softc*) #1

declare dso_local i32 @et_stop_txdma(%struct.et_softc*) #1

declare dso_local i32 @et_stats_update(%struct.et_softc*) #1

declare dso_local i32 @et_free_tx_ring(%struct.et_softc*) #1

declare dso_local i32 @et_free_rx_ring(%struct.et_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
