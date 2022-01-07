; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_drain_stats_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_drain_stats_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { %struct.ieee80211_node**, %struct.ieee80211_ratectl_tx_status }
%struct.ieee80211_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_ratectl_tx_status = type { i32, i32, i32 }

@IEEE80211_RATECTL_STATUS_LONG_RETRY = common dso_local global i32 0, align 4
@RT2860_TX_STAT_FIFO = common dso_local global i32 0, align 4
@RT2860_TXQ_VLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tx stat 0x%08x\0A\00", align 1
@RT2860_TXQ_WCID_SHIFT = common dso_local global i32 0, align 4
@RT2860_WCID_MAX = common dso_local global i64 0, align 8
@RT2860_TXQ_ACKREQ = common dso_local global i32 0, align 4
@RT2860_TXQ_OK = common dso_local global i32 0, align 4
@RT2860_TXQ_MCS_SHIFT = common dso_local global i32 0, align 4
@RT2860_TXQ_PID_SHIFT = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_SUCCESS = common dso_local global i32 0, align 4
@IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt2860_drain_stats_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_drain_stats_fifo(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca %struct.ieee80211_ratectl_tx_status*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %9 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %9, i32 0, i32 1
  store %struct.ieee80211_ratectl_tx_status* %10, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %11 = load i32, i32* @IEEE80211_RATECTL_STATUS_LONG_RETRY, align 4
  %12 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %99, %49, %34, %1
  %15 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %16 = load i32, i32* @RT2860_TX_STAT_FIFO, align 4
  %17 = call i32 @RAL_READ(%struct.rt2860_softc* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @RT2860_TXQ_VLD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %100

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DPRINTFN(i32 4, i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @RT2860_TXQ_WCID_SHIFT, align 4
  %28 = ashr i32 %26, %27
  %29 = and i32 %28, 255
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @RT2860_WCID_MAX, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %14

35:                                               ; preds = %21
  %36 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %37 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %36, i32 0, i32 0
  %38 = load %struct.ieee80211_node**, %struct.ieee80211_node*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node*, %struct.ieee80211_node** %38, i64 %39
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %40, align 8
  store %struct.ieee80211_node* %41, %struct.ieee80211_node** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @RT2860_TXQ_ACKREQ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %48 = icmp eq %struct.ieee80211_node* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %35
  br label %14

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RT2860_TXQ_OK, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @RT2860_TXQ_MCS_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = and i32 %58, 127
  %60 = sext i32 %59 to i64
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @RT2860_TXQ_PID_SHIFT, align 4
  %63 = ashr i32 %61, %62
  %64 = and i32 %63, 15
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %8, align 8
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  %68 = load i64, i64* %8, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %55
  %71 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %72 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %76

73:                                               ; preds = %55
  %74 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %75 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @IEEE80211_RATECTL_TX_SUCCESS, align 4
  %78 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %81 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %82 = call i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node* %80, %struct.ieee80211_ratectl_tx_status* %81)
  br label %99

83:                                               ; preds = %50
  %84 = load i32, i32* @IEEE80211_RATECTL_TX_FAIL_UNSPECIFIED, align 4
  %85 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %88 = getelementptr inbounds %struct.ieee80211_ratectl_tx_status, %struct.ieee80211_ratectl_tx_status* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %90 = load %struct.ieee80211_ratectl_tx_status*, %struct.ieee80211_ratectl_tx_status** %3, align 8
  %91 = call i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node* %89, %struct.ieee80211_ratectl_tx_status* %90)
  %92 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %93 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %98 = call i32 @if_inc_counter(i32 %96, i32 %97, i32 1)
  br label %99

99:                                               ; preds = %83, %76
  br label %14

100:                                              ; preds = %14
  ret void
}

declare dso_local i32 @RAL_READ(%struct.rt2860_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @ieee80211_ratectl_tx_complete(%struct.ieee80211_node*, %struct.ieee80211_ratectl_tx_status*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
