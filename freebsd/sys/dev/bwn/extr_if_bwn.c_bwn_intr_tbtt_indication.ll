; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_intr_tbtt_indication.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_intr_tbtt_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32, %struct.bwn_softc* }
%struct.bwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i64 }

@IEEE80211_M_HOSTAP = common dso_local global i64 0, align 8
@IEEE80211_M_IBSS = common dso_local global i64 0, align 8
@BWN_MAC_FLAG_DFQVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_intr_tbtt_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_intr_tbtt_indication(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 1
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %8, i32 0, i32 0
  store %struct.ieee80211com* %9, %struct.ieee80211com** %4, align 8
  %10 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_M_HOSTAP, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = call i32 @bwn_psctl(%struct.bwn_mac* %16, i32 0)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IEEE80211_M_IBSS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* @BWN_MAC_FLAG_DFQVALID, align 4
  %26 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %27 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %18
  ret void
}

declare dso_local i32 @bwn_psctl(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
