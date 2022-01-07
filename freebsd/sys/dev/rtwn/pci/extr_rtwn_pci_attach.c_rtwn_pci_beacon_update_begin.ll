; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_beacon_update_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/pci/extr_rtwn_pci_attach.c_rtwn_pci_beacon_update_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211vap = type { i32 }
%struct.rtwn_vap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.ieee80211vap*)* @rtwn_pci_beacon_update_begin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_pci_beacon_update_begin(%struct.rtwn_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.rtwn_vap*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %7 = call %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap* %6)
  store %struct.rtwn_vap* %7, %struct.rtwn_vap** %5, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %9 = call i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc* %8)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %11 = load %struct.rtwn_vap*, %struct.rtwn_vap** %5, align 8
  %12 = getelementptr inbounds %struct.rtwn_vap, %struct.rtwn_vap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rtwn_beacon_enable(%struct.rtwn_softc* %10, i32 %13, i32 0)
  ret void
}

declare dso_local %struct.rtwn_vap* @RTWN_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @RTWN_ASSERT_LOCKED(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_beacon_enable(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
