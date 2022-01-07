; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_mode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_mode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_hal*, %struct.ieee80211com }
%struct.ath_hal = type { i32 }
%struct.ieee80211com = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath_mode_init(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 1
  store %struct.ieee80211com* %7, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 0
  %10 = load %struct.ath_hal*, %struct.ath_hal** %9, align 8
  store %struct.ath_hal* %10, %struct.ath_hal** %4, align 8
  %11 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %12 = call i32 @ath_calcrxfilter(%struct.ath_softc* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ath_hal_setrxfilter(%struct.ath_hal* %13, i32 %14)
  %16 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %17 = call i32 @ath_hal_setopmode(%struct.ath_hal* %16)
  %18 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ath_hal_setmac(%struct.ath_hal* %18, i32 %21)
  %23 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %24 = call i32 @ath_update_mcast_hw(%struct.ath_softc* %23)
  ret void
}

declare dso_local i32 @ath_calcrxfilter(%struct.ath_softc*) #1

declare dso_local i32 @ath_hal_setrxfilter(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_hal_setopmode(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_setmac(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_update_mcast_hw(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
