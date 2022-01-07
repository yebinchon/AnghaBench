; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_ural.c_ural_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ural_softc = type { i64, i64, i32 }
%struct.ieee80211_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@RAL_TX_MINFREE = common dso_local global i64 0, align 8
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ural_softc*)* @ural_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ural_start(%struct.ural_softc* %0) #0 {
  %2 = alloca %struct.ural_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ural_softc* %0, %struct.ural_softc** %2, align 8
  %5 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @RAL_LOCK_ASSERT(%struct.ural_softc* %5, i32 %6)
  %8 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %48, %13
  %15 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RAL_TX_MINFREE, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ural_softc, %struct.ural_softc* %21, i32 0, i32 2
  %23 = call %struct.mbuf* @mbufq_dequeue(i32* %22)
  store %struct.mbuf* %23, %struct.mbuf** %4, align 8
  %24 = icmp ne %struct.mbuf* %23, null
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i1 [ false, %14 ], [ %24, %20 ]
  br i1 %26, label %27, label %49

27:                                               ; preds = %25
  %28 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %32, %struct.ieee80211_node** %3, align 8
  %33 = load %struct.ural_softc*, %struct.ural_softc** %2, align 8
  %34 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %35 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %36 = call i64 @ural_tx_data(%struct.ural_softc* %33, %struct.mbuf* %34, %struct.ieee80211_node* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %27
  %39 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %40 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %45 = call i32 @if_inc_counter(i32 %43, i32 %44, i32 1)
  %46 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %47 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %46)
  br label %49

48:                                               ; preds = %27
  br label %14

49:                                               ; preds = %12, %38, %25
  ret void
}

declare dso_local i32 @RAL_LOCK_ASSERT(%struct.ural_softc*, i32) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i64 @ural_tx_data(%struct.ural_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
