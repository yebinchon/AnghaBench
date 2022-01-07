; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_node = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IWI_TX_RING_COUNT = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwi_softc*)* @iwi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwi_start(%struct.iwi_softc* %0) #0 {
  %2 = alloca %struct.iwi_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32, align 4
  store %struct.iwi_softc* %0, %struct.iwi_softc** %2, align 8
  %6 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %7 = call i32 @IWI_LOCK_ASSERT(%struct.iwi_softc* %6)
  br label %8

8:                                                ; preds = %54, %1
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %9, i32 0, i32 1
  %11 = call %struct.mbuf* @mbufq_dequeue(i32* %10)
  store %struct.mbuf* %11, %struct.mbuf** %3, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %57

13:                                               ; preds = %8
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = call i32 @M_WME_GETAC(%struct.mbuf* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %17 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IWI_TX_RING_COUNT, align 4
  %25 = sub nsw i32 %24, 8
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %13
  %28 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %28, i32 0, i32 1
  %30 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %31 = call i32 @mbufq_prepend(i32* %29, %struct.mbuf* %30)
  br label %57

32:                                               ; preds = %13
  %33 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %37, %struct.ieee80211_node** %4, align 8
  %38 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @iwi_tx_start(%struct.iwi_softc* %38, %struct.mbuf* %39, %struct.ieee80211_node* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %32
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %46 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %51 = call i32 @if_inc_counter(i32 %49, i32 %50, i32 1)
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %53 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %52)
  br label %57

54:                                               ; preds = %32
  %55 = load %struct.iwi_softc*, %struct.iwi_softc** %2, align 8
  %56 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %55, i32 0, i32 0
  store i32 5, i32* %56, align 8
  br label %8

57:                                               ; preds = %44, %27, %8
  ret void
}

declare dso_local i32 @IWI_LOCK_ASSERT(%struct.iwi_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i32 @M_WME_GETAC(%struct.mbuf*) #1

declare dso_local i32 @mbufq_prepend(i32*, %struct.mbuf*) #1

declare dso_local i64 @iwi_tx_start(%struct.iwi_softc*, %struct.mbuf*, %struct.ieee80211_node*, i32) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
