; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_vap_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_vap_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211com* }
%struct.ieee80211com = type { %struct.rum_softc* }
%struct.rum_softc = type { i32 }
%struct.rum_vap = type { i32, i32, i32 }

@IEEE80211_S_INIT = common dso_local global i32 0, align 4
@M_80211_VAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @rum_vap_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_vap_delete(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.rum_vap*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.rum_softc*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %7 = call %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap* %6)
  store %struct.rum_vap* %7, %struct.rum_vap** %3, align 8
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 1
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  store %struct.ieee80211com* %10, %struct.ieee80211com** %4, align 8
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load %struct.rum_softc*, %struct.rum_softc** %12, align 8
  store %struct.rum_softc* %13, %struct.rum_softc** %5, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %15 = load i32, i32* @IEEE80211_S_INIT, align 4
  %16 = call i32 @ieee80211_new_state(%struct.ieee80211vap* %14, i32 %15, i32 -1)
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = call i32 @ieee80211_draintask(%struct.ieee80211com* %17, i32* %19)
  %21 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %22 = call i32 @RUM_LOCK(%struct.rum_softc* %21)
  %23 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %25 = call i32 @rum_reset_tx_list(%struct.rum_softc* %23, %struct.ieee80211vap* %24)
  %26 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %27 = call i32 @RUM_UNLOCK(%struct.rum_softc* %26)
  %28 = load %struct.rum_vap*, %struct.rum_vap** %3, align 8
  %29 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %28, i32 0, i32 2
  %30 = call i32 @usb_callout_drain(i32* %29)
  %31 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %32 = load %struct.rum_vap*, %struct.rum_vap** %3, align 8
  %33 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %32, i32 0, i32 1
  %34 = call i32 @ieee80211_draintask(%struct.ieee80211com* %31, i32* %33)
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %36 = call i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap* %35)
  %37 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %38 = call i32 @ieee80211_vap_detach(%struct.ieee80211vap* %37)
  %39 = load %struct.rum_vap*, %struct.rum_vap** %3, align 8
  %40 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @m_freem(i32 %41)
  %43 = load %struct.rum_vap*, %struct.rum_vap** %3, align 8
  %44 = load i32, i32* @M_80211_VAP, align 4
  %45 = call i32 @free(%struct.rum_vap* %43, i32 %44)
  ret void
}

declare dso_local %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_new_state(%struct.ieee80211vap*, i32, i32) #1

declare dso_local i32 @ieee80211_draintask(%struct.ieee80211com*, i32*) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @rum_reset_tx_list(%struct.rum_softc*, %struct.ieee80211vap*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @usb_callout_drain(i32*) #1

declare dso_local i32 @ieee80211_ratectl_deinit(%struct.ieee80211vap*) #1

declare dso_local i32 @ieee80211_vap_detach(%struct.ieee80211vap*) #1

declare dso_local i32 @m_freem(i32) #1

declare dso_local i32 @free(%struct.rum_vap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
