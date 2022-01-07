; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwl_detach(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %4 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %4, i32 0, i32 3
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %7 = call i32 @MWL_LOCK(%struct.mwl_softc* %6)
  %8 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %9 = call i32 @mwl_stop(%struct.mwl_softc* %8)
  %10 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %11 = call i32 @MWL_UNLOCK(%struct.mwl_softc* %10)
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %13 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %12)
  %14 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %15 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %14, i32 0, i32 2
  %16 = call i32 @callout_drain(i32* %15)
  %17 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %18 = call i32 @mwl_dma_cleanup(%struct.mwl_softc* %17)
  %19 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %20 = call i32 @MWL_RXFREE_DESTROY(%struct.mwl_softc* %19)
  %21 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %22 = call i32 @mwl_tx_cleanup(%struct.mwl_softc* %21)
  %23 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mwl_hal_detach(i32 %25)
  %27 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %28 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %27, i32 0, i32 0
  %29 = call i32 @mbufq_drain(i32* %28)
  ret i32 0
}

declare dso_local i32 @MWL_LOCK(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_stop(%struct.mwl_softc*) #1

declare dso_local i32 @MWL_UNLOCK(%struct.mwl_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mwl_dma_cleanup(%struct.mwl_softc*) #1

declare dso_local i32 @MWL_RXFREE_DESTROY(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_tx_cleanup(%struct.mwl_softc*) #1

declare dso_local i32 @mwl_hal_detach(i32) #1

declare dso_local i32 @mbufq_drain(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
