; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i64, i32, i32 }
%struct.ieee80211_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@RUM_TX_MINFREE = common dso_local global i64 0, align 8
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rum_softc*)* @rum_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_start(%struct.rum_softc* %0) #0 {
  %2 = alloca %struct.rum_softc*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.rum_softc* %0, %struct.rum_softc** %2, align 8
  %5 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %6 = call i32 @RUM_LOCK_ASSERT(%struct.rum_softc* %5)
  %7 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %48

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %47, %12
  %14 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %15 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RUM_TX_MINFREE, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %20, i32 0, i32 1
  %22 = call %struct.mbuf* @mbufq_dequeue(i32* %21)
  store %struct.mbuf* %22, %struct.mbuf** %4, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br label %24

24:                                               ; preds = %19, %13
  %25 = phi i1 [ false, %13 ], [ %23, %19 ]
  br i1 %25, label %26, label %48

26:                                               ; preds = %24
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %31, %struct.ieee80211_node** %3, align 8
  %32 = load %struct.rum_softc*, %struct.rum_softc** %2, align 8
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %35 = call i64 @rum_tx_data(%struct.rum_softc* %32, %struct.mbuf* %33, %struct.ieee80211_node* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %39 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %44 = call i32 @if_inc_counter(i32 %42, i32 %43, i32 1)
  %45 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %46 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %45)
  br label %48

47:                                               ; preds = %26
  br label %13

48:                                               ; preds = %11, %37, %24
  ret void
}

declare dso_local i32 @RUM_LOCK_ASSERT(%struct.rum_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i64 @rum_tx_data(%struct.rum_softc*, %struct.mbuf*, %struct.ieee80211_node*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
