; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_set_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, i64, %struct.ath_softc* }
%struct.ath_softc = type { i32, i32 }

@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @ath_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_set_channel(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %4 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %4, i32 0, i32 2
  %6 = load %struct.ath_softc*, %struct.ath_softc** %5, align 8
  store %struct.ath_softc* %6, %struct.ath_softc** %3, align 8
  %7 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %8 = call i32 @ATH_LOCK(%struct.ath_softc* %7)
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = load i32, i32* @HAL_PM_AWAKE, align 4
  %11 = call i32 @ath_power_set_power_state(%struct.ath_softc* %9, i32 %10)
  %12 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %13 = call i32 @ATH_UNLOCK(%struct.ath_softc* %12)
  %14 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @ath_chan_set(%struct.ath_softc* %14, i64 %17)
  %19 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %20 = call i32 @ATH_LOCK(%struct.ath_softc* %19)
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %1
  %26 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %35 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %25, %1
  %37 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %38 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %37)
  %39 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %40 = call i32 @ATH_UNLOCK(%struct.ath_softc* %39)
  ret void
}

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_chan_set(%struct.ath_softc*, i64) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
