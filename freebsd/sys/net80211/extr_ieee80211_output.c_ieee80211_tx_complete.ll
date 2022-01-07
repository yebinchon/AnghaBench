; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_tx_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@M_MCAST = common dso_local global i32 0, align 4
@IFCOUNTER_OMCASTS = common dso_local global i32 0, align 4
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@M_TXCB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_tx_complete(%struct.ieee80211_node* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %9 = icmp ne %struct.ieee80211_node* %8, null
  br i1 %9, label %10, label %59

10:                                               ; preds = %3
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  store %struct.ifnet* %15, %struct.ifnet** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %10
  %19 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %20 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %21 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @if_inc_counter(%struct.ifnet* %19, i32 %20, i32 %24)
  %26 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %27 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %28 = call i32 @if_inc_counter(%struct.ifnet* %26, i32 %27, i32 1)
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @M_MCAST, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %18
  %36 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %37 = load i32, i32* @IFCOUNTER_OMCASTS, align 4
  %38 = call i32 @if_inc_counter(%struct.ifnet* %36, i32 %37, i32 1)
  br label %39

39:                                               ; preds = %35, %18
  br label %44

40:                                               ; preds = %10
  %41 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %42 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %43 = call i32 @if_inc_counter(%struct.ifnet* %41, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %40, %39
  %45 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @M_TXCB, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ieee80211_process_callback(%struct.ieee80211_node* %52, %struct.mbuf* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %44
  %57 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %58 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %57)
  br label %59

59:                                               ; preds = %56, %3
  %60 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %61 = call i32 @m_freem(%struct.mbuf* %60)
  ret void
}

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ieee80211_process_callback(%struct.ieee80211_node*, %struct.mbuf*, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
