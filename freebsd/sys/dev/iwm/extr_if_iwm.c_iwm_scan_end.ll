; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_scan_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.iwm_softc*, i32 }
%struct.iwm_softc = type { i32, i32 }
%struct.ieee80211vap = type { i64 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IWM_FLAG_SCAN_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @iwm_scan_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwm_scan_end(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca %struct.iwm_softc*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 2
  %7 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %6)
  store %struct.ieee80211vap* %7, %struct.ieee80211vap** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 1
  %10 = load %struct.iwm_softc*, %struct.iwm_softc** %9, align 8
  store %struct.iwm_softc* %10, %struct.iwm_softc** %4, align 8
  %11 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %12 = call i32 @IWM_LOCK(%struct.iwm_softc* %11)
  %13 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %14 = call i32 @iwm_led_blink_stop(%struct.iwm_softc* %13)
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IEEE80211_S_RUN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %22 = call i32 @iwm_mvm_led_enable(%struct.iwm_softc* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %25 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IWM_FLAG_SCAN_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %23
  %31 = load i32, i32* @IWM_FLAG_SCAN_RUNNING, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %34 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %38 = call i32 @iwm_mvm_scan_stop_wait(%struct.iwm_softc* %37)
  br label %39

39:                                               ; preds = %30, %23
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %41 = call i32 @IWM_UNLOCK(%struct.iwm_softc* %40)
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %46 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %45, i32 0, i32 1
  %47 = call i32 @taskqueue_cancel(i32 %44, i32* %46, i32* null)
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @IWM_LOCK(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_led_blink_stop(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_led_enable(%struct.iwm_softc*) #1

declare dso_local i32 @iwm_mvm_scan_stop_wait(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_UNLOCK(%struct.iwm_softc*) #1

declare dso_local i32 @taskqueue_cancel(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
