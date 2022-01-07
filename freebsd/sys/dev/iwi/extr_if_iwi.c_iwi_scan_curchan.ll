; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_scan_curchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_scan_curchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iwi_softc* }
%struct.iwi_softc = type { i32 }

@IWI_LOCK_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, i64)* @iwi_scan_curchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_scan_curchan(%struct.ieee80211_scan_state* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_scan_state*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.iwi_softc*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %7, i32 0, i32 0
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.iwi_softc*, %struct.iwi_softc** %13, align 8
  store %struct.iwi_softc* %14, %struct.iwi_softc** %6, align 8
  %15 = load i32, i32* @IWI_LOCK_DECL, align 4
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %17 = call i32 @IWI_LOCK(%struct.iwi_softc* %16)
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i64 @iwi_scanchan(%struct.iwi_softc* %18, i64 %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = call i32 @ieee80211_cancel_scan(%struct.ieee80211vap* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.iwi_softc*, %struct.iwi_softc** %6, align 8
  %27 = call i32 @IWI_UNLOCK(%struct.iwi_softc* %26)
  ret void
}

declare dso_local i32 @IWI_LOCK(%struct.iwi_softc*) #1

declare dso_local i64 @iwi_scanchan(%struct.iwi_softc*, i64, i32) #1

declare dso_local i32 @ieee80211_cancel_scan(%struct.ieee80211vap*) #1

declare dso_local i32 @IWI_UNLOCK(%struct.iwi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
