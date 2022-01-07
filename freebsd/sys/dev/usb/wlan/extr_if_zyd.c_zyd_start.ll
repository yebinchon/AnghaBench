; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i64, i32 }
%struct.ieee80211_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zyd_softc*)* @zyd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zyd_start(%struct.zyd_softc* %0) #0 {
  %2 = alloca %struct.zyd_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.zyd_softc* %0, %struct.zyd_softc** %2, align 8
  %5 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @ZYD_LOCK_ASSERT(%struct.zyd_softc* %5, i32 %6)
  br label %8

8:                                                ; preds = %43, %1
  %9 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %10 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %15 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %14, i32 0, i32 1
  %16 = call %struct.mbuf* @mbufq_dequeue(i32* %15)
  store %struct.mbuf* %16, %struct.mbuf** %4, align 8
  %17 = icmp ne %struct.mbuf* %16, null
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %44

20:                                               ; preds = %18
  %21 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %25, %struct.ieee80211_node** %3, align 8
  %26 = load %struct.zyd_softc*, %struct.zyd_softc** %2, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %29 = call i64 @zyd_tx_start(%struct.zyd_softc* %26, %struct.mbuf* %27, %struct.ieee80211_node* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %20
  %32 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %33 = call i32 @m_freem(%struct.mbuf* %32)
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %40 = call i32 @if_inc_counter(i32 %38, i32 %39, i32 1)
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %42 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %41)
  br label %44

43:                                               ; preds = %20
  br label %8

44:                                               ; preds = %31, %18
  ret void
}

declare dso_local i32 @ZYD_LOCK_ASSERT(%struct.zyd_softc*, i32) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i64 @zyd_tx_start(%struct.zyd_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
