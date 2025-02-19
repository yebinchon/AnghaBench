; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_spectral.c_ath_spectral_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_spectral.c_ath_spectral_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, %struct.ath_spectral_state* }
%struct.ath_spectral_state = type { i32, i64 }
%struct.ieee80211_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_spectral_enable(%struct.ath_softc* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ath_spectral_state*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %7, i32 0, i32 2
  %9 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %8, align 8
  store %struct.ath_spectral_state* %9, %struct.ath_spectral_state** %6, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %6, align 8
  %13 = icmp eq %struct.ath_spectral_state* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %6, align 8
  %17 = getelementptr inbounds %struct.ath_spectral_state, %struct.ath_spectral_state* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ath_spectral_state*, %struct.ath_spectral_state** %6, align 8
  %25 = getelementptr inbounds %struct.ath_spectral_state, %struct.ath_spectral_state* %24, i32 0, i32 0
  %26 = call i32 @ath_hal_spectral_configure(i32 %23, i32* %25)
  %27 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ath_hal_spectral_start(i32 %29)
  %31 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %20, %15
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %14
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ath_hal_spectral_configure(i32, i32*) #1

declare dso_local i32 @ath_hal_spectral_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
