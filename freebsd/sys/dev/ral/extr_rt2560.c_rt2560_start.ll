; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2560.c_rt2560_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2560_softc = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@RT2560_TX_RING_COUNT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2560_softc*)* @rt2560_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2560_start(%struct.rt2560_softc* %0) #0 {
  %2 = alloca %struct.rt2560_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.rt2560_softc* %0, %struct.rt2560_softc** %2, align 8
  %5 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %6 = call i32 @RAL_LOCK_ASSERT(%struct.rt2560_softc* %5)
  br label %7

7:                                                ; preds = %43, %1
  %8 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %9 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RT2560_TX_RING_COUNT, align 4
  %13 = sub nsw i32 %12, 1
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %16, i32 0, i32 1
  %18 = call %struct.mbuf* @mbufq_dequeue(i32* %17)
  store %struct.mbuf* %18, %struct.mbuf** %4, align 8
  %19 = icmp ne %struct.mbuf* %18, null
  br label %20

20:                                               ; preds = %15, %7
  %21 = phi i1 [ false, %7 ], [ %19, %15 ]
  br i1 %21, label %22, label %46

22:                                               ; preds = %20
  %23 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %24 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %27, %struct.ieee80211_node** %3, align 8
  %28 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %31 = call i64 @rt2560_tx_data(%struct.rt2560_softc* %28, %struct.mbuf* %29, %struct.ieee80211_node* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %22
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %40 = call i32 @if_inc_counter(i32 %38, i32 %39, i32 1)
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %42 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %41)
  br label %46

43:                                               ; preds = %22
  %44 = load %struct.rt2560_softc*, %struct.rt2560_softc** %2, align 8
  %45 = getelementptr inbounds %struct.rt2560_softc, %struct.rt2560_softc* %44, i32 0, i32 0
  store i32 5, i32* %45, align 4
  br label %7

46:                                               ; preds = %33, %20
  ret void
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.rt2560_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i64 @rt2560_tx_data(%struct.rt2560_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
