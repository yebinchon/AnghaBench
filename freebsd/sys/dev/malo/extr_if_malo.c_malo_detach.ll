; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i32, i32, i32, i32*, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malo_detach(%struct.malo_softc* %0) #0 {
  %2 = alloca %struct.malo_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  store %struct.malo_softc* %0, %struct.malo_softc** %2, align 8
  %4 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %5 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %4, i32 0, i32 6
  store %struct.ieee80211com* %5, %struct.ieee80211com** %3, align 8
  %6 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %7 = call i32 @malo_stop(%struct.malo_softc* %6)
  %8 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %9 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %14 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %17 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %16, i32 0, i32 5
  %18 = call i32 @taskqueue_drain(i32* %15, i32* %17)
  %19 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %20 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %23 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %22, i32 0, i32 4
  %24 = call i32 @taskqueue_drain(i32* %21, i32* %23)
  %25 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %26 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @taskqueue_free(i32* %27)
  %29 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %30 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %12, %1
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %33 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %32)
  %34 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %35 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %34, i32 0, i32 2
  %36 = call i32 @callout_drain(i32* %35)
  %37 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %38 = call i32 @malo_dma_cleanup(%struct.malo_softc* %37)
  %39 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %40 = call i32 @malo_tx_cleanup(%struct.malo_softc* %39)
  %41 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %42 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @malo_hal_detach(i32 %43)
  %45 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %46 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %45, i32 0, i32 0
  %47 = call i32 @mbufq_drain(i32* %46)
  %48 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %49 = call i32 @MALO_LOCK_DESTROY(%struct.malo_softc* %48)
  ret i32 0
}

declare dso_local i32 @malo_stop(%struct.malo_softc*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @malo_dma_cleanup(%struct.malo_softc*) #1

declare dso_local i32 @malo_tx_cleanup(%struct.malo_softc*) #1

declare dso_local i32 @malo_hal_detach(i32) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @MALO_LOCK_DESTROY(%struct.malo_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
