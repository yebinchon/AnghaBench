; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i32, i32*, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2860_detach(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rt2860_softc*
  store %struct.rt2860_softc* %7, %struct.rt2860_softc** %3, align 8
  %8 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %9 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %8, i32 0, i32 4
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %11 = call i32 @RAL_LOCK(%struct.rt2860_softc* %10)
  %12 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %13 = call i32 @rt2860_stop_locked(%struct.rt2860_softc* %12)
  %14 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %15 = call i32 @RAL_UNLOCK(%struct.rt2860_softc* %14)
  %16 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %17 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %16)
  %18 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %18, i32 0, i32 3
  %20 = call i32 @mbufq_drain(i32* %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %33, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %27 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = call i32 @rt2860_free_tx_ring(%struct.rt2860_softc* %25, i32* %31)
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %39 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %38, i32 0, i32 1
  %40 = call i32 @rt2860_free_rx_ring(%struct.rt2860_softc* %37, i32* %39)
  %41 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %42 = call i32 @rt2860_free_tx_pool(%struct.rt2860_softc* %41)
  %43 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %44 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %43, i32 0, i32 0
  %45 = call i32 @mtx_destroy(i32* %44)
  ret i32 0
}

declare dso_local i32 @RAL_LOCK(%struct.rt2860_softc*) #1

declare dso_local i32 @rt2860_stop_locked(%struct.rt2860_softc*) #1

declare dso_local i32 @RAL_UNLOCK(%struct.rt2860_softc*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @rt2860_free_tx_ring(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @rt2860_free_rx_ring(%struct.rt2860_softc*, i32*) #1

declare dso_local i32 @rt2860_free_tx_pool(%struct.rt2860_softc*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
