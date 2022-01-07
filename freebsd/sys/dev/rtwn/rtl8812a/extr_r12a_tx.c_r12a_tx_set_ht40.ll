; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_set_ht40.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_set_ht40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_node = type { i64 }
%struct.r12a_tx_desc = type { i32 }

@IEEE80211_CHAN_ANYC = common dso_local global i64 0, align 8
@R12A_TXDW5_DATA_BW = common dso_local global i32 0, align 4
@R12A_TXDW5_DATA_BW40 = common dso_local global i32 0, align 4
@R12A_TXDW5_DATA_PRIM_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i8*, %struct.ieee80211_node*)* @r12a_tx_set_ht40 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12a_tx_set_ht40(%struct.rtwn_softc* %0, i8* %1, %struct.ieee80211_node* %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.r12a_tx_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.r12a_tx_desc*
  store %struct.r12a_tx_desc* %10, %struct.r12a_tx_desc** %7, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @IEEE80211_IS_CHAN_HT40(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %16
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @r12a_get_primary_channel(%struct.rtwn_softc* %23, i64 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @R12A_TXDW5_DATA_BW, align 4
  %29 = load i32, i32* @R12A_TXDW5_DATA_BW40, align 4
  %30 = call i32 @SM(i32 %28, i32 %29)
  %31 = call i32 @htole32(i32 %30)
  %32 = load %struct.r12a_tx_desc*, %struct.r12a_tx_desc** %7, align 8
  %33 = getelementptr inbounds %struct.r12a_tx_desc, %struct.r12a_tx_desc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @R12A_TXDW5_DATA_PRIM_CHAN, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @SM(i32 %36, i32 %37)
  %39 = call i32 @htole32(i32 %38)
  %40 = load %struct.r12a_tx_desc*, %struct.r12a_tx_desc** %7, align 8
  %41 = getelementptr inbounds %struct.r12a_tx_desc, %struct.r12a_tx_desc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %22, %16, %3
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(i64) #1

declare dso_local i32 @r12a_get_primary_channel(%struct.rtwn_softc*, i64) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @SM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
