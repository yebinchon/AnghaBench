; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_xmit_queue_drain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_xmit_queue_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_softc = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwn_softc*)* @iwn_xmit_queue_drain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_xmit_queue_drain(%struct.iwn_softc* %0) #0 {
  %2 = alloca %struct.iwn_softc*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  store %struct.iwn_softc* %0, %struct.iwn_softc** %2, align 8
  %5 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %6 = call i32 @IWN_LOCK_ASSERT(%struct.iwn_softc* %5)
  br label %7

7:                                                ; preds = %12, %1
  %8 = load %struct.iwn_softc*, %struct.iwn_softc** %2, align 8
  %9 = getelementptr inbounds %struct.iwn_softc, %struct.iwn_softc* %8, i32 0, i32 0
  %10 = call %struct.mbuf* @mbufq_dequeue(i32* %9)
  store %struct.mbuf* %10, %struct.mbuf** %3, align 8
  %11 = icmp ne %struct.mbuf* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %17, %struct.ieee80211_node** %4, align 8
  %18 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %19 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %18)
  %20 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  br label %7

22:                                               ; preds = %7
  ret void
}

declare dso_local i32 @IWN_LOCK_ASSERT(%struct.iwn_softc*) #1

declare dso_local %struct.mbuf* @mbufq_dequeue(i32*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
