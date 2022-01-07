; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_scan_curchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_scan_curchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.iwn_softc* }
%struct.iwn_softc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, i64)* @iwn_scan_curchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_scan_curchan(%struct.ieee80211_scan_state* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  %7 = alloca %struct.iwn_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %9, i32 0, i32 0
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %5, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 0
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %13, align 8
  store %struct.ieee80211com* %14, %struct.ieee80211com** %6, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 1
  %17 = load %struct.iwn_softc*, %struct.iwn_softc** %16, align 8
  store %struct.iwn_softc* %17, %struct.iwn_softc** %7, align 8
  %18 = load %struct.iwn_softc*, %struct.iwn_softc** %7, align 8
  %19 = call i32 @IWN_LOCK(%struct.iwn_softc* %18)
  %20 = load %struct.iwn_softc*, %struct.iwn_softc** %7, align 8
  %21 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %22 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %23 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %24 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iwn_scan(%struct.iwn_softc* %20, %struct.ieee80211vap* %21, %struct.ieee80211_scan_state* %22, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.iwn_softc*, %struct.iwn_softc** %7, align 8
  %28 = call i32 @IWN_UNLOCK(%struct.iwn_softc* %27)
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %33 = call i32 @ieee80211_cancel_scan(%struct.ieee80211vap* %32)
  br label %34

34:                                               ; preds = %31, %2
  ret void
}

declare dso_local i32 @IWN_LOCK(%struct.iwn_softc*) #1

declare dso_local i32 @iwn_scan(%struct.iwn_softc*, %struct.ieee80211vap*, %struct.ieee80211_scan_state*, i32) #1

declare dso_local i32 @IWN_UNLOCK(%struct.iwn_softc*) #1

declare dso_local i32 @ieee80211_cancel_scan(%struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
