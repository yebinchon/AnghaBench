; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2560_detach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt2560_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.rt2560_softc*
  store %struct.rt2560_softc* %6, %struct.rt2560_softc** %3, align 8
  %7 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %7, i32 0, i32 7
  store %struct.ieee80211com* %8, %struct.ieee80211com** %4, align 8
  %9 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %10 = call i32 @rt2560_stop(%struct.rt2560_softc* %9)
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %12 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %11)
  %13 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %14 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %13, i32 0, i32 6
  %15 = call i32 @mbufq_drain(i32* %14)
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %17 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %18 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %17, i32 0, i32 5
  %19 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %16, i32* %18)
  %20 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %21 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %21, i32 0, i32 4
  %23 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %20, i32* %22)
  %24 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %25 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %26 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %25, i32 0, i32 3
  %27 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %24, i32* %26)
  %28 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %29 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %29, i32 0, i32 2
  %31 = call i32 @rt2560_free_tx_ring(%struct.rt2560_softc* %28, i32* %30)
  %32 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %33 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %33, i32 0, i32 1
  %35 = call i32 @rt2560_free_rx_ring(%struct.rt2560_softc* %32, i32* %34)
  %36 = load %struct.rt2560_softc*, %struct.rt2560_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %36, i32 0, i32 0
  %38 = call i32 @mtx_destroy(i32* %37)
  ret i32 0
}

declare dso_local i32 @rt2560_stop(%struct.rt2560_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @rt2560_free_tx_ring(%struct.rt2560_softc*, i32*) #1

declare dso_local i32 @rt2560_free_rx_ring(%struct.rt2560_softc*, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
