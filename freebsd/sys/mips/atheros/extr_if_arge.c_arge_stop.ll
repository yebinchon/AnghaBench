; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/extr_if_arge.c_arge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arge_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@AR71XX_DMA_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arge_softc*)* @arge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arge_stop(%struct.arge_softc* %0) #0 {
  %2 = alloca %struct.arge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.arge_softc* %0, %struct.arge_softc** %2, align 8
  %4 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %5 = call i32 @ARGE_LOCK_ASSERT(%struct.arge_softc* %4)
  %6 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %6, i32 0, i32 2
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %10 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.arge_softc, %struct.arge_softc* %22, i32 0, i32 0
  %24 = call i32 @callout_stop(i32* %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %27 = load i32, i32* @AR71XX_DMA_INTR, align 4
  %28 = call i32 @ARGE_WRITE(%struct.arge_softc* %26, i32 %27, i32 0)
  %29 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %30 = call i32 @arge_reset_dma(%struct.arge_softc* %29)
  %31 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %32 = call i32 @arge_flush_ddr(%struct.arge_softc* %31)
  %33 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %34 = call i32 @arge_rx_ring_free(%struct.arge_softc* %33)
  %35 = load %struct.arge_softc*, %struct.arge_softc** %2, align 8
  %36 = call i32 @arge_tx_ring_free(%struct.arge_softc* %35)
  ret void
}

declare dso_local i32 @ARGE_LOCK_ASSERT(%struct.arge_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @ARGE_WRITE(%struct.arge_softc*, i32, i32) #1

declare dso_local i32 @arge_reset_dma(%struct.arge_softc*) #1

declare dso_local i32 @arge_flush_ddr(%struct.arge_softc*) #1

declare dso_local i32 @arge_rx_ring_free(%struct.arge_softc*) #1

declare dso_local i32 @arge_tx_ring_free(%struct.arge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
