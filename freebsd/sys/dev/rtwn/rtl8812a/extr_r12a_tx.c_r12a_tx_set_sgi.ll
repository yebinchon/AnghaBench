; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_set_sgi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_tx.c_r12a_tx_set_sgi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }
%struct.ieee80211_node = type { i32, i64, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }
%struct.r12a_tx_desc = type { i32 }

@IEEE80211_FHT_SHORTGI20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_SHORTGI20 = common dso_local global i32 0, align 4
@R12A_TXDW5_DATA_SHORT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global i64 0, align 8
@IEEE80211_HTCAP_SHORTGI40 = common dso_local global i32 0, align 4
@IEEE80211_FHT_SHORTGI40 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i8*, %struct.ieee80211_node*)* @r12a_tx_set_sgi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r12a_tx_set_sgi(%struct.rtwn_softc* %0, i8* %1, %struct.ieee80211_node* %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_node*, align 8
  %7 = alloca %struct.r12a_tx_desc*, align 8
  %8 = alloca %struct.ieee80211vap*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.r12a_tx_desc*
  store %struct.r12a_tx_desc* %10, %struct.r12a_tx_desc** %7, align 8
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 2
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %12, align 8
  store %struct.ieee80211vap* %13, %struct.ieee80211vap** %8, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IEEE80211_FHT_SHORTGI20, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IEEE80211_HTCAP_SHORTGI20, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i32, i32* @R12A_TXDW5_DATA_SHORT, align 4
  %29 = call i32 @htole32(i32 %28)
  %30 = load %struct.r12a_tx_desc*, %struct.r12a_tx_desc** %7, align 8
  %31 = getelementptr inbounds %struct.r12a_tx_desc, %struct.r12a_tx_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %68

34:                                               ; preds = %20, %3
  %35 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @IEEE80211_IS_CHAN_HT40(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %40
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IEEE80211_HTCAP_SHORTGI40, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_FHT_SHORTGI40, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load i32, i32* @R12A_TXDW5_DATA_SHORT, align 4
  %62 = call i32 @htole32(i32 %61)
  %63 = load %struct.r12a_tx_desc*, %struct.r12a_tx_desc** %7, align 8
  %64 = getelementptr inbounds %struct.r12a_tx_desc, %struct.r12a_tx_desc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %60, %53, %46, %40, %34
  br label %68

68:                                               ; preds = %67, %27
  ret void
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
