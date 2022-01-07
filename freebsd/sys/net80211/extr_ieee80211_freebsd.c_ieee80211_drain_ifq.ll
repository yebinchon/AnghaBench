; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_drain_ifq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_drain_ifq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifqueue = type { i32 }
%struct.ieee80211_node = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [15 x i8] c"frame w/o node\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_drain_ifq(%struct.ifqueue* %0) #0 {
  %2 = alloca %struct.ifqueue*, align 8
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.ifqueue* %0, %struct.ifqueue** %2, align 8
  br label %5

5:                                                ; preds = %12, %1
  %6 = load %struct.ifqueue*, %struct.ifqueue** %2, align 8
  %7 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %8 = call i32 @IF_DEQUEUE(%struct.ifqueue* %6, %struct.mbuf* %7)
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = icmp eq %struct.mbuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  br label %29

12:                                               ; preds = %5
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = bitcast i32* %16 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %17, %struct.ieee80211_node** %3, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %19 = icmp ne %struct.ieee80211_node* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %23 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %22)
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = call i32 @m_freem(%struct.mbuf* %27)
  br label %5

29:                                               ; preds = %11
  ret void
}

declare dso_local i32 @IF_DEQUEUE(%struct.ifqueue*, %struct.mbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
