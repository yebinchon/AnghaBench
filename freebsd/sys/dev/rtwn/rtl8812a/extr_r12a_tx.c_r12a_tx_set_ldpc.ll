; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_set_ldpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_set_ldpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.r12a_tx_desc = type { i32 }
%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@IEEE80211_FHT_LDPC_TX = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_LDPC = common dso_local global i32 0, align 4
@R12A_TXDW5_DATA_LDPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %struct.r12a_tx_desc*, %struct.ieee80211_node*)* @r12a_tx_set_ldpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12a_tx_set_ldpc(%struct.rtwn_softc* %0, %struct.r12a_tx_desc* %1, %struct.ieee80211_node* %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca %struct.r12a_tx_desc*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store %struct.r12a_tx_desc* %1, %struct.r12a_tx_desc** %5, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %6, align 8
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %9 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %8, i32 0, i32 1
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %9, align 8
  store %struct.ieee80211vap* %10, %struct.ieee80211vap** %7, align 8
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IEEE80211_FHT_LDPC_TX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_HTCAP_LDPC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* @R12A_TXDW5_DATA_LDPC, align 4
  %26 = call i32 @htole32(i32 %25)
  %27 = load %struct.r12a_tx_desc*, %struct.r12a_tx_desc** %5, align 8
  %28 = getelementptr inbounds %struct.r12a_tx_desc, %struct.r12a_tx_desc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %17, %3
  ret void
}

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
