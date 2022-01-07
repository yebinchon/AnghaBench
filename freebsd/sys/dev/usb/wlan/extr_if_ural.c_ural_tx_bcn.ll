; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_tx_bcn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_tx_bcn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i64, i32*, i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211com*, %struct.ieee80211vap* }
%struct.ieee80211com = type { i64 }
%struct.ieee80211vap = type { %struct.ieee80211_txparam* }
%struct.ieee80211_txparam = type { i32 }
%struct.ural_tx_data = type { i32, i32, %struct.ieee80211_node*, %struct.mbuf* }

@EIO = common dso_local global i32 0, align 4
@IEEE80211_CHAN_ANYC = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@RAL_TX_IFS_NEWBACKOFF = common dso_local global i32 0, align 4
@RAL_TX_TIMESTAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"sending beacon frame len=%u rate=%u\0A\00", align 1
@URAL_BULK_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*)* @ural_tx_bcn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ural_tx_bcn(%struct.ural_softc* %0, %struct.mbuf* %1, %struct.ieee80211_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ural_softc*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ieee80211_node*, align 8
  %8 = alloca %struct.ieee80211vap*, align 8
  %9 = alloca %struct.ieee80211com*, align 8
  %10 = alloca %struct.ieee80211_txparam*, align 8
  %11 = alloca %struct.ural_tx_data*, align 8
  store %struct.ural_softc* %0, %struct.ural_softc** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.ieee80211_node* %2, %struct.ieee80211_node** %7, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 1
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %8, align 8
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 0
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %16, align 8
  store %struct.ieee80211com* %17, %struct.ieee80211com** %9, align 8
  %18 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %24 = call i32 @m_freem(%struct.mbuf* %23)
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %26 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %25)
  %27 = load i32, i32* @EIO, align 4
  store i32 %27, i32* %4, align 4
  br label %105

28:                                               ; preds = %3
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %30 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_CHAN_ANYC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %38 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %37)
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %4, align 4
  br label %105

40:                                               ; preds = %28
  %41 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %41, i32 0, i32 3
  %43 = call %struct.ural_tx_data* @STAILQ_FIRST(i32* %42)
  store %struct.ural_tx_data* %43, %struct.ural_tx_data** %11, align 8
  %44 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %45 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %44, i32 0, i32 3
  %46 = load i32, i32* @next, align 4
  %47 = call i32 @STAILQ_REMOVE_HEAD(i32* %45, i32 %46)
  %48 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %49 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, -1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  %53 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %52, i32 0, i32 0
  %54 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %53, align 8
  %55 = load %struct.ieee80211com*, %struct.ieee80211com** %9, align 8
  %56 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ieee80211_chan2mode(i64 %57)
  %59 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %54, i64 %58
  store %struct.ieee80211_txparam* %59, %struct.ieee80211_txparam** %10, align 8
  %60 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %61 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %62 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %61, i32 0, i32 3
  store %struct.mbuf* %60, %struct.mbuf** %62, align 8
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %7, align 8
  %64 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %65 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %64, i32 0, i32 2
  store %struct.ieee80211_node* %63, %struct.ieee80211_node** %65, align 8
  %66 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %10, align 8
  %67 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %70 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %72 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %73 = getelementptr inbounds %struct.ural_tx_data, %struct.ural_tx_data* %72, i32 0, i32 0
  %74 = load i32, i32* @RAL_TX_IFS_NEWBACKOFF, align 4
  %75 = load i32, i32* @RAL_TX_TIMESTAMP, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %78 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %10, align 8
  %82 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ural_setup_tx_desc(%struct.ural_softc* %71, i32* %73, i32 %76, i32 %80, i32 %83)
  %85 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %10, align 8
  %90 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @DPRINTFN(i32 10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %94 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %93, i32 0, i32 2
  %95 = load %struct.ural_tx_data*, %struct.ural_tx_data** %11, align 8
  %96 = load i32, i32* @next, align 4
  %97 = call i32 @STAILQ_INSERT_TAIL(i32* %94, %struct.ural_tx_data* %95, i32 %96)
  %98 = load %struct.ural_softc*, %struct.ural_softc** %5, align 8
  %99 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @URAL_BULK_WR, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @usbd_transfer_start(i32 %103)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %40, %34, %22
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local %struct.ural_tx_data* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i64 @ieee80211_chan2mode(i64) #1

declare dso_local i32 @ural_setup_tx_desc(%struct.ural_softc*, i32*, i32, i32, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.ural_tx_data*, i32) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
