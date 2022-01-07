; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@IntrStatus = common dso_local global i32 0, align 4
@TX_CTL = common dso_local global i32 0, align 4
@RX_CTL = common dso_local global i32 0, align 4
@SGE_FLAG_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_softc*)* @sge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_stop(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %4 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %5 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %4, i32 0, i32 3
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %8 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %7)
  %9 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %11, i32 0, i32 1
  %13 = call i32 @callout_stop(i32* %12)
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %23 = load i32, i32* @IntrMask, align 4
  %24 = call i32 @CSR_WRITE_4(%struct.sge_softc* %22, i32 %23, i32 0)
  %25 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %26 = load i32, i32* @IntrMask, align 4
  %27 = call i32 @CSR_READ_4(%struct.sge_softc* %25, i32 %26)
  %28 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %29 = load i32, i32* @IntrStatus, align 4
  %30 = call i32 @CSR_WRITE_4(%struct.sge_softc* %28, i32 %29, i32 -1)
  %31 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %32 = load i32, i32* @TX_CTL, align 4
  %33 = call i32 @CSR_WRITE_4(%struct.sge_softc* %31, i32 %32, i32 6656)
  %34 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %35 = load i32, i32* @RX_CTL, align 4
  %36 = call i32 @CSR_WRITE_4(%struct.sge_softc* %34, i32 %35, i32 6656)
  %37 = call i32 @DELAY(i32 2000)
  %38 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %39 = load i32, i32* @IntrMask, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.sge_softc* %38, i32 %39, i32 0)
  %41 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %42 = load i32, i32* @IntrStatus, align 4
  %43 = call i32 @CSR_WRITE_4(%struct.sge_softc* %41, i32 %42, i32 -1)
  %44 = load i32, i32* @SGE_FLAG_LINK, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %47 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %51 = call i32 @sge_list_rx_free(%struct.sge_softc* %50)
  %52 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %53 = call i32 @sge_list_tx_free(%struct.sge_softc* %52)
  ret void
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.sge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @sge_list_rx_free(%struct.sge_softc*) #1

declare dso_local i32 @sge_list_tx_free(%struct.sge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
