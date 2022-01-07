; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_update_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_update_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@IEEE80211_MODE_11B = common dso_local global i64 0, align 8
@RAL_RXTX_TURNAROUND = common dso_local global i32 0, align 4
@RAL_MAC_CSR10 = common dso_local global i32 0, align 4
@RAL_MAC_CSR11 = common dso_local global i32 0, align 4
@RAL_MAC_CSR12 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*)* @ural_update_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_update_slot(%struct.ural_softc* %0) #0 {
  %2 = alloca %struct.ural_softc*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ural_softc* %0, %struct.ural_softc** %2, align 8
  %7 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %7, i32 0, i32 0
  store %struct.ieee80211com* %8, %struct.ieee80211com** %3, align 8
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = call i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_MODE_11B, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @RAL_RXTX_TURNAROUND, align 4
  %18 = sub nsw i32 16, %17
  store i32 %18, i32* %5, align 4
  store i32 364, i32* %6, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @RAL_RXTX_TURNAROUND, align 4
  %21 = sub nsw i32 10, %20
  store i32 %21, i32* %5, align 4
  store i32 64, i32* %6, align 4
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %24 = load i32, i32* @RAL_MAC_CSR10, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ural_write(%struct.ural_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %28 = load i32, i32* @RAL_MAC_CSR11, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ural_write(%struct.ural_softc* %27, i32 %28, i32 %29)
  %31 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %32 = load i32, i32* @RAL_MAC_CSR12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ural_write(%struct.ural_softc* %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com*) #1

declare dso_local i32 @ural_write(%struct.ural_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
