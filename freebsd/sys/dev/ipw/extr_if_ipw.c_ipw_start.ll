; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i64, i32, i32 }
%struct.ieee80211_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@IPW_MAX_NSEG = common dso_local global i64 0, align 8
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_softc*)* @ipw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_start(%struct.ipw_softc* %0) #0 {
  %2 = alloca %struct.ipw_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ipw_softc* %0, %struct.ipw_softc** %2, align 8
  %5 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %6 = call i32 @IPW_LOCK_ASSERT(%struct.ipw_softc* %5)
  br label %7

7:                                                ; preds = %42, %1
  %8 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @IPW_MAX_NSEG, align 8
  %12 = add nsw i64 1, %11
  %13 = icmp sge i64 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %15, i32 0, i32 2
  %17 = call %struct.mbuf* @mbufq_dequeue(i32* %16)
  store %struct.mbuf* %17, %struct.mbuf** %4, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br label %19

19:                                               ; preds = %14, %7
  %20 = phi i1 [ false, %7 ], [ %18, %14 ]
  br i1 %20, label %21, label %45

21:                                               ; preds = %19
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %26, %struct.ieee80211_node** %3, align 8
  %27 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %30 = call i64 @ipw_tx_start(%struct.ipw_softc* %27, %struct.mbuf* %28, %struct.ieee80211_node* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %21
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %39 = call i32 @if_inc_counter(i32 %37, i32 %38, i32 1)
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %41 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %40)
  br label %45

42:                                               ; preds = %21
  %43 = load %struct.ipw_softc*, %struct.ipw_softc** %2, align 8
  %44 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %43, i32 0, i32 1
  store i32 5, i32* %44, align 8
  br label %7

45:                                               ; preds = %32, %19
  ret void
}

declare dso_local i32 @IPW_LOCK_ASSERT(%struct.ipw_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i64 @ipw_tx_start(%struct.ipw_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
