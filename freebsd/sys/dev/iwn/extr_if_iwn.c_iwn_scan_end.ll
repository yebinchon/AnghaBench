; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_scan_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_scan_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32, %struct.iwn_softc* }
%struct.iwn_softc = type { i32 }
%struct.ieee80211vap = type { i64 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IWN_LED_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @iwn_scan_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_scan_end(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.iwn_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 1
  %7 = load %struct.iwn_softc*, %struct.iwn_softc** %6, align 8
  store %struct.iwn_softc* %7, %struct.iwn_softc** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 0
  %10 = call %struct.ieee80211vap* @TAILQ_FIRST(i32* %9)
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %4, align 8
  %11 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %12 = call i32 @IWN_LOCK(%struct.iwn_softc* %11)
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @IEEE80211_S_RUN, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %20 = load i32, i32* @IWN_LED_LINK, align 4
  %21 = call i32 @iwn_set_led(%struct.iwn_softc* %19, i32 %20, i32 0, i32 1)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.iwn_softc*, %struct.iwn_softc** %3, align 8
  %24 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %23)
  ret void
}

declare dso_local %struct.ieee80211vap* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @IWN_LOCK(%struct.iwn_softc*) #1

declare dso_local i32 @iwn_set_led(%struct.iwn_softc*, i32, i32, i32) #1

declare dso_local i32 @IWN_UNLOCK(%struct.iwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
