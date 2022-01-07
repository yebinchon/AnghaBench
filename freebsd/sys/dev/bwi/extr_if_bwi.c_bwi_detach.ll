; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32, i32, i32, i32*, i32, i32, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_detach(%struct.bwi_softc* %0) #0 {
  %2 = alloca %struct.bwi_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %2, align 8
  %5 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %5, i32 0, i32 7
  store %struct.ieee80211com* %6, %struct.ieee80211com** %3, align 8
  %7 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %8 = call i32 @bwi_stop(%struct.bwi_softc* %7, i32 1)
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %9, i32 0, i32 6
  %11 = call i32 @callout_drain(i32* %10)
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %12, i32 0, i32 5
  %14 = call i32 @callout_drain(i32* %13)
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %15, i32 0, i32 4
  %17 = call i32 @callout_drain(i32* %16)
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %19 = call i32 @ieee80211_ifdetach(%struct.ieee80211com* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %34, %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %28 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @bwi_mac_detach(i32* %32)
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %20

37:                                               ; preds = %20
  %38 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %39 = call i32 @bwi_dma_free(%struct.bwi_softc* %38)
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %41 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @taskqueue_free(i32 %42)
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %45 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %44, i32 0, i32 1
  %46 = call i32 @mbufq_drain(i32* %45)
  %47 = load %struct.bwi_softc*, %struct.bwi_softc** %2, align 8
  %48 = call i32 @BWI_LOCK_DESTROY(%struct.bwi_softc* %47)
  ret i32 0
}

declare dso_local i32 @bwi_stop(%struct.bwi_softc*, i32) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ieee80211_ifdetach(%struct.ieee80211com*) #1

declare dso_local i32 @bwi_mac_detach(i32*) #1

declare dso_local i32 @bwi_dma_free(%struct.bwi_softc*) #1

declare dso_local i32 @taskqueue_free(i32) #1

declare dso_local i32 @mbufq_drain(i32*) #1

declare dso_local i32 @BWI_LOCK_DESTROY(%struct.bwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
