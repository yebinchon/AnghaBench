; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_parent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i64, %struct.ath_softc* }
%struct.ath_softc = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@EDOOFUS = common dso_local global i32 0, align 4
@HAL_PM_AWAKE = common dso_local global i32 0, align 4
@HAL_PM_FULL_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @ath_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_parent(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.ath_softc*, %struct.ath_softc** %6, align 8
  store %struct.ath_softc* %7, %struct.ath_softc** %3, align 8
  %8 = load i32, i32* @EDOOFUS, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %10 = call i32 @ATH_LOCK(%struct.ath_softc* %9)
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %17 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %22 = load i32, i32* @HAL_PM_AWAKE, align 4
  %23 = call i32 @ath_power_set_power_state(%struct.ath_softc* %21, i32 %22)
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = call i32 @ath_mode_init(%struct.ath_softc* %24)
  %26 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %27 = call i32 @ath_power_restore_power_state(%struct.ath_softc* %26)
  br label %37

28:                                               ; preds = %15
  %29 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %35 = call i32 @ath_init(%struct.ath_softc* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %20
  br label %50

38:                                               ; preds = %1
  %39 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %40 = call i32 @ath_stop(%struct.ath_softc* %39)
  %41 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %47 = load i32, i32* @HAL_PM_FULL_SLEEP, align 4
  %48 = call i32 @ath_power_setpower(%struct.ath_softc* %46, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %37
  %51 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %52 = call i32 @ATH_UNLOCK(%struct.ath_softc* %51)
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %57 = call i32 @ieee80211_start_all(%struct.ieee80211com* %56)
  br label %58

58:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @ATH_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_set_power_state(%struct.ath_softc*, i32) #1

declare dso_local i32 @ath_mode_init(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_restore_power_state(%struct.ath_softc*) #1

declare dso_local i32 @ath_init(%struct.ath_softc*) #1

declare dso_local i32 @ath_stop(%struct.ath_softc*) #1

declare dso_local i32 @ath_power_setpower(%struct.ath_softc*, i32, i32) #1

declare dso_local i32 @ATH_UNLOCK(%struct.ath_softc*) #1

declare dso_local i32 @ieee80211_start_all(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
