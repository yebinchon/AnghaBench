; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_txpctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_txpctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_txgain = type { i32, i32, i32, i32 }
%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }

@__const.bwn_phy_lp_txpctl_init.gain_2ghz = private unnamed_addr constant %struct.bwn_txgain { i32 4, i32 12, i32 12, i32 0 }, align 4
@__const.bwn_phy_lp_txpctl_init.gain_5ghz = private unnamed_addr constant %struct.bwn_txgain { i32 7, i32 15, i32 14, i32 0 }, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_phy_lp_txpctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_phy_lp_txpctl_init(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_txgain, align 4
  %4 = alloca %struct.bwn_txgain, align 4
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.ieee80211com*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %7 = bitcast %struct.bwn_txgain* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.bwn_txgain* @__const.bwn_phy_lp_txpctl_init.gain_2ghz to i8*), i64 16, i1 false)
  %8 = bitcast %struct.bwn_txgain* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.bwn_txgain* @__const.bwn_phy_lp_txpctl_init.gain_5ghz to i8*), i64 16, i1 false)
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %10, align 8
  store %struct.bwn_softc* %11, %struct.bwn_softc** %5, align 8
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %13 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %12, i32 0, i32 0
  store %struct.ieee80211com* %13, %struct.ieee80211com** %6, align 8
  %14 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IEEE80211_IS_CHAN_2GHZ(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi %struct.bwn_txgain* [ %3, %20 ], [ %4, %21 ]
  %24 = call i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac* %14, %struct.bwn_txgain* %23)
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %26 = call i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac* %25, i32 150)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bwn_phy_lp_set_txgain(%struct.bwn_mac*, %struct.bwn_txgain*) #2

declare dso_local i64 @IEEE80211_IS_CHAN_2GHZ(i32) #2

declare dso_local i32 @bwn_phy_lp_set_bbmult(%struct.bwn_mac*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
