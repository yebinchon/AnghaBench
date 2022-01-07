; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_updateslot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_updateslot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32, i64 }
%struct.bwn_mac = type { i32 }

@BWN_FLAG_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211com*)* @bwn_updateslot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_updateslot(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211com*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.bwn_mac*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %2, align 8
  %5 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %5, i32 0, i32 0
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %9 = call i32 @BWN_LOCK(%struct.bwn_softc* %8)
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BWN_FLAG_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %18 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.bwn_mac*
  store %struct.bwn_mac* %20, %struct.bwn_mac** %4, align 8
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %4, align 8
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %2, align 8
  %23 = call i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com* %22)
  %24 = call i32 @bwn_set_slot_time(%struct.bwn_mac* %21, i32 %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %27 = call i32 @BWN_UNLOCK(%struct.bwn_softc* %26)
  ret void
}

declare dso_local i32 @BWN_LOCK(%struct.bwn_softc*) #1

declare dso_local i32 @bwn_set_slot_time(%struct.bwn_mac*, i32) #1

declare dso_local i32 @IEEE80211_GET_SLOTTIME(%struct.ieee80211com*) #1

declare dso_local i32 @BWN_UNLOCK(%struct.bwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
