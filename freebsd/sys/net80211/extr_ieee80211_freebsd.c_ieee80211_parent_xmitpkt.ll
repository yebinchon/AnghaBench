; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_parent_xmitpkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_parent_xmitpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { {}* }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_node = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_parent_xmitpkt(%struct.ieee80211com* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %7 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %8 = call i32 @IEEE80211_TX_LOCK_ASSERT(%struct.ieee80211com* %7)
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.ieee80211com*, %struct.mbuf*)**
  %12 = load i32 (%struct.ieee80211com*, %struct.mbuf*)*, i32 (%struct.ieee80211com*, %struct.mbuf*)** %11, align 8
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %15 = call i32 %12(%struct.ieee80211com* %13, %struct.mbuf* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %23, %struct.ieee80211_node** %6, align 8
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %25 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %30 = call i32 @if_inc_counter(i32 %28, i32 %29, i32 1)
  %31 = load %struct.ieee80211_node*, %struct.ieee80211_node** %6, align 8
  %32 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %31)
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = call i32 @ieee80211_free_mbuf(%struct.mbuf* %33)
  br label %35

35:                                               ; preds = %18, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @IEEE80211_TX_LOCK_ASSERT(%struct.ieee80211com*) #1

declare dso_local i32 @if_inc_counter(i32, i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_free_mbuf(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
