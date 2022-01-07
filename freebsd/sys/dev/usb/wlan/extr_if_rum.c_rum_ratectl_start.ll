; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_ratectl_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_ratectl_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }
%struct.rum_vap = type { i32 }

@RT2573_STA_CSR0 = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@rum_ratectl_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, %struct.ieee80211_node*)* @rum_ratectl_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_ratectl_start(%struct.rum_softc* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.rum_softc*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.rum_vap*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 0
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %11 = call %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap* %10)
  store %struct.rum_vap* %11, %struct.rum_vap** %6, align 8
  %12 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %13 = load i32, i32* @RT2573_STA_CSR0, align 4
  %14 = load %struct.rum_softc*, %struct.rum_softc** %3, align 8
  %15 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rum_read_multi(%struct.rum_softc* %12, i32 %13, i32 %16, i32 4)
  %18 = load %struct.rum_vap*, %struct.rum_vap** %6, align 8
  %19 = getelementptr inbounds %struct.rum_vap, %struct.rum_vap* %18, i32 0, i32 0
  %20 = load i32, i32* @hz, align 4
  %21 = load i32, i32* @rum_ratectl_timeout, align 4
  %22 = load %struct.rum_vap*, %struct.rum_vap** %6, align 8
  %23 = call i32 @usb_callout_reset(i32* %19, i32 %20, i32 %21, %struct.rum_vap* %22)
  ret void
}

declare dso_local %struct.rum_vap* @RUM_VAP(%struct.ieee80211vap*) #1

declare dso_local i32 @rum_read_multi(%struct.rum_softc*, i32, i32, i32) #1

declare dso_local i32 @usb_callout_reset(i32*, i32, i32, %struct.rum_vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
