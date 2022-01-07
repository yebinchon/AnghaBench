; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt2860_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2860_softc = type { i32, i64, i32, i32, i32 }
%struct.ieee80211_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@RT2860_RUNNING = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*)* @rt2860_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2860_start(%struct.rt2860_softc* %0) #0 {
  %2 = alloca %struct.rt2860_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %2, align 8
  %5 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %6 = call i32 @RAL_LOCK_ASSERT(%struct.rt2860_softc* %5)
  %7 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RT2860_RUNNING, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %56

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %53, %43, %14
  %16 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %16, i32 0, i32 4
  %18 = call i32 @SLIST_EMPTY(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %15
  %21 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %26, i32 0, i32 3
  %28 = call %struct.mbuf* @mbufq_dequeue(i32* %27)
  store %struct.mbuf* %28, %struct.mbuf** %4, align 8
  %29 = icmp ne %struct.mbuf* %28, null
  br label %30

30:                                               ; preds = %25, %20, %15
  %31 = phi i1 [ false, %20 ], [ false, %15 ], [ %29, %25 ]
  br i1 %31, label %32, label %56

32:                                               ; preds = %30
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %37, %struct.ieee80211_node** %3, align 8
  %38 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %41 = call i64 @rt2860_tx(%struct.rt2860_softc* %38, %struct.mbuf* %39, %struct.ieee80211_node* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %50 = call i32 @if_inc_counter(i32 %48, i32 %49, i32 1)
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %52 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %51)
  br label %15

53:                                               ; preds = %32
  %54 = load %struct.rt2860_softc*, %struct.rt2860_softc** %2, align 8
  %55 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %54, i32 0, i32 2
  store i32 5, i32* %55, align 8
  br label %15

56:                                               ; preds = %13, %30
  ret void
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.rt2860_softc*) #1

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i64 @rt2860_tx(%struct.rt2860_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
