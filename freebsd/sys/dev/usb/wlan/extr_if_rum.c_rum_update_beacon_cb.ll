; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_update_beacon_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_update_beacon_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i32 }
%union.sec_param = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*, %union.sec_param*, i32)* @rum_update_beacon_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_update_beacon_cb(%struct.rum_softc* %0, %union.sec_param* %1, i32 %2) #0 {
  %4 = alloca %struct.rum_softc*, align 8
  %5 = alloca %union.sec_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211vap*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %4, align 8
  store %union.sec_param* %1, %union.sec_param** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %union.sec_param*, %union.sec_param** %5, align 8
  %9 = bitcast %union.sec_param* %8 to %struct.ieee80211vap**
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %7, align 8
  %11 = load %struct.rum_softc*, %struct.rum_softc** %4, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %13 = call i32 @rum_set_beacon(%struct.rum_softc* %11, %struct.ieee80211vap* %12)
  ret void
}

declare dso_local i32 @rum_set_beacon(%struct.rum_softc*, %struct.ieee80211vap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
