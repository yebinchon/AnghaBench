; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/malo/extr_if_malo.c_malo_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malo_softc = type { i32, %struct.TYPE_5__, i32, i64, i32, %struct.malo_txq* }
%struct.TYPE_5__ = type { i32 }
%struct.malo_txq = type { i32 }
%struct.ieee80211_node = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.malo_txbuf = type { i32*, i32* }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@bf_list = common dso_local global i32 0, align 4
@malo_txcoalesce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malo_softc*)* @malo_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malo_start(%struct.malo_softc* %0) #0 {
  %2 = alloca %struct.malo_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.malo_txq*, align 8
  %5 = alloca %struct.malo_txbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  store %struct.malo_softc* %0, %struct.malo_softc** %2, align 8
  %8 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %9 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %8, i32 0, i32 5
  %10 = load %struct.malo_txq*, %struct.malo_txq** %9, align 8
  %11 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %10, i64 0
  store %struct.malo_txq* %11, %struct.malo_txq** %4, align 8
  store %struct.malo_txbuf* null, %struct.malo_txbuf** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %13 = call i32 @MALO_LOCK_ASSERT(%struct.malo_softc* %12)
  %14 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %15 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %20 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %1
  br label %105

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %96, %82, %24
  %26 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %27 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %26, i32 0, i32 2
  %28 = call %struct.mbuf* @mbufq_dequeue(i32* %27)
  store %struct.mbuf* %28, %struct.mbuf** %6, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br i1 %29, label %30, label %97

30:                                               ; preds = %25
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %35, %struct.ieee80211_node** %3, align 8
  %36 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %37 = load %struct.malo_txq*, %struct.malo_txq** %4, align 8
  %38 = call %struct.malo_txbuf* @malo_getbuf(%struct.malo_softc* %36, %struct.malo_txq* %37)
  store %struct.malo_txbuf* %38, %struct.malo_txbuf** %5, align 8
  %39 = load %struct.malo_txbuf*, %struct.malo_txbuf** %5, align 8
  %40 = icmp eq %struct.malo_txbuf* %39, null
  br i1 %40, label %41, label %51

41:                                               ; preds = %30
  %42 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %43 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %42, i32 0, i32 2
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = call i32 @mbufq_prepend(i32* %43, %struct.mbuf* %44)
  %46 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %47 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %97

51:                                               ; preds = %30
  %52 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %54 = load %struct.malo_txbuf*, %struct.malo_txbuf** %5, align 8
  %55 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %56 = call i64 @malo_tx_start(%struct.malo_softc* %52, %struct.ieee80211_node* %53, %struct.malo_txbuf* %54, %struct.mbuf* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %85

58:                                               ; preds = %51
  %59 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %65 = call i32 @if_inc_counter(i32 %63, i32 %64, i32 1)
  %66 = load %struct.malo_txbuf*, %struct.malo_txbuf** %5, align 8
  %67 = icmp ne %struct.malo_txbuf* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %58
  %69 = load %struct.malo_txbuf*, %struct.malo_txbuf** %5, align 8
  %70 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %69, i32 0, i32 1
  store i32* null, i32** %70, align 8
  %71 = load %struct.malo_txbuf*, %struct.malo_txbuf** %5, align 8
  %72 = getelementptr inbounds %struct.malo_txbuf, %struct.malo_txbuf* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  %73 = load %struct.malo_txq*, %struct.malo_txq** %4, align 8
  %74 = call i32 @MALO_TXQ_LOCK(%struct.malo_txq* %73)
  %75 = load %struct.malo_txq*, %struct.malo_txq** %4, align 8
  %76 = getelementptr inbounds %struct.malo_txq, %struct.malo_txq* %75, i32 0, i32 0
  %77 = load %struct.malo_txbuf*, %struct.malo_txbuf** %5, align 8
  %78 = load i32, i32* @bf_list, align 4
  %79 = call i32 @STAILQ_INSERT_HEAD(i32* %76, %struct.malo_txbuf* %77, i32 %78)
  %80 = load %struct.malo_txq*, %struct.malo_txq** %4, align 8
  %81 = call i32 @MALO_TXQ_UNLOCK(%struct.malo_txq* %80)
  br label %82

82:                                               ; preds = %68, %58
  %83 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %84 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %83)
  br label %25

85:                                               ; preds = %51
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @malo_txcoalesce, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  %92 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %93 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @malo_hal_txstart(i32 %94, i32 0)
  br label %96

96:                                               ; preds = %91, %85
  br label %25

97:                                               ; preds = %41, %25
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.malo_softc*, %struct.malo_softc** %2, align 8
  %102 = getelementptr inbounds %struct.malo_softc, %struct.malo_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @malo_hal_txstart(i32 %103, i32 0)
  br label %105

105:                                              ; preds = %23, %100, %97
  ret void
}

declare dso_local i32 @MALO_LOCK_ASSERT(%struct.malo_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local %struct.malo_txbuf* @malo_getbuf(%struct.malo_softc*, %struct.malo_txq*) #1

declare dso_local i32 @mbufq_prepend(i32*, %struct.mbuf*) #1

declare dso_local i64 @malo_tx_start(%struct.malo_softc*, %struct.ieee80211_node*, %struct.malo_txbuf*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @MALO_TXQ_LOCK(%struct.malo_txq*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.malo_txbuf*, i32) #1

declare dso_local i32 @MALO_TXQ_UNLOCK(%struct.malo_txq*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @malo_hal_txstart(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
