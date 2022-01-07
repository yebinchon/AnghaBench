; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2661.c_rt2661_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2661_softc = type { i32, i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_node = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@RAL_RUNNING = common dso_local global i32 0, align 4
@RT2661_TX_RING_COUNT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2661_softc*)* @rt2661_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2661_start(%struct.rt2661_softc* %0) #0 {
  %2 = alloca %struct.rt2661_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32, align 4
  store %struct.rt2661_softc* %0, %struct.rt2661_softc** %2, align 8
  %6 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %7 = call i32 @RAL_LOCK_ASSERT(%struct.rt2661_softc* %6)
  %8 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @RAL_RUNNING, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %1
  br label %70

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %67, %20
  %22 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %22, i32 0, i32 2
  %24 = call %struct.mbuf* @mbufq_dequeue(i32* %23)
  store %struct.mbuf* %24, %struct.mbuf** %3, align 8
  %25 = icmp ne %struct.mbuf* %24, null
  br i1 %25, label %26, label %70

26:                                               ; preds = %21
  %27 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %28 = call i32 @M_WME_GETAC(%struct.mbuf* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %30 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @RT2661_TX_RING_COUNT, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sge i32 %36, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %26
  %41 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %42 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %41, i32 0, i32 2
  %43 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %44 = call i32 @mbufq_prepend(i32* %42, %struct.mbuf* %43)
  br label %70

45:                                               ; preds = %26
  %46 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %50, %struct.ieee80211_node** %4, align 8
  %51 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i64 @rt2661_tx_data(%struct.rt2661_softc* %51, %struct.mbuf* %52, %struct.ieee80211_node* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %45
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %64 = call i32 @if_inc_counter(i32 %62, i32 %63, i32 1)
  %65 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %66 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %65)
  br label %70

67:                                               ; preds = %45
  %68 = load %struct.rt2661_softc*, %struct.rt2661_softc** %2, align 8
  %69 = getelementptr inbounds %struct.rt2661_softc, %struct.rt2661_softc* %68, i32 0, i32 1
  store i32 5, i32* %69, align 4
  br label %21

70:                                               ; preds = %19, %57, %40, %21
  ret void
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.rt2661_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i32 @M_WME_GETAC(%struct.mbuf*) #1

declare dso_local i32 @mbufq_prepend(i32*, %struct.mbuf*) #1

declare dso_local i64 @rt2661_tx_data(%struct.rt2661_softc*, %struct.mbuf*, %struct.ieee80211_node*, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
