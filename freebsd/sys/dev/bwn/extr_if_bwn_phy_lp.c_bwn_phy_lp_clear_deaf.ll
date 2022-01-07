; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_clear_deaf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_clear_deaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc*, %struct.TYPE_2__ }
%struct.bwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.TYPE_2__ = type { %struct.bwn_phy_lp }
%struct.bwn_phy_lp = type { i64, i64 }

@BWN_PHY_CRSGAIN_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, i64)* @bwn_phy_lp_clear_deaf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_clear_deaf(%struct.bwn_mac* %0, i64 %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bwn_phy_lp*, align 8
  %6 = alloca %struct.bwn_softc*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.bwn_phy_lp* %10, %struct.bwn_phy_lp** %5, align 8
  %11 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %12 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %11, i32 0, i32 0
  %13 = load %struct.bwn_softc*, %struct.bwn_softc** %12, align 8
  store %struct.bwn_softc* %13, %struct.bwn_softc** %6, align 8
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  %15 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %14, i32 0, i32 0
  store %struct.ieee80211com* %15, %struct.ieee80211com** %7, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %5, align 8
  %20 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %19, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %5, align 8
  %23 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %5, align 8
  %26 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.bwn_phy_lp*, %struct.bwn_phy_lp** %5, align 8
  %31 = getelementptr inbounds %struct.bwn_phy_lp, %struct.bwn_phy_lp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  br label %49

35:                                               ; preds = %29
  %36 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %37 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %43 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %44 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %42, i32 %43, i32 65311, i32 96)
  br label %49

45:                                               ; preds = %35
  %46 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %47 = load i32, i32* @BWN_PHY_CRSGAIN_CTL, align 4
  %48 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %46, i32 %47, i32 65311, i32 32)
  br label %49

49:                                               ; preds = %34, %45, %41
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #1

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
