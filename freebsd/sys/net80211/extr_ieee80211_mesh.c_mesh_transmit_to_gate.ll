; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_transmit_to_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_mesh.c_mesh_transmit_to_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { i32 }
%struct.ieee80211_mesh_route = type { i32 }
%struct.ieee80211_node = type { i32 }

@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*, %struct.mbuf*, %struct.ieee80211_mesh_route*)* @mesh_transmit_to_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mesh_transmit_to_gate(%struct.ieee80211vap* %0, %struct.mbuf* %1, %struct.ieee80211_mesh_route* %2) #0 {
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.ieee80211_mesh_route*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.ieee80211_mesh_route* %2, %struct.ieee80211_mesh_route** %6, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 1
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %7, align 8
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @IEEE80211_TX_UNLOCK_ASSERT(i32 %14)
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %17 = load %struct.ieee80211_mesh_route*, %struct.ieee80211_mesh_route** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_mesh_route, %struct.ieee80211_mesh_route* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ieee80211_node* @ieee80211_mesh_find_txnode(%struct.ieee80211vap* %16, i32 %19)
  store %struct.ieee80211_node* %20, %struct.ieee80211_node** %8, align 8
  %21 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %22 = icmp eq %struct.ieee80211_node* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %25 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %26 = call i32 @if_inc_counter(%struct.ifnet* %24, i32 %25, i32 1)
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = call i32 @m_freem(%struct.mbuf* %27)
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %32 = load %struct.ieee80211_node*, %struct.ieee80211_node** %8, align 8
  %33 = call i32 @ieee80211_vap_pkt_send_dest(%struct.ieee80211vap* %30, %struct.mbuf* %31, %struct.ieee80211_node* %32)
  br label %34

34:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @IEEE80211_TX_UNLOCK_ASSERT(i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_mesh_find_txnode(%struct.ieee80211vap*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ieee80211_vap_pkt_send_dest(%struct.ieee80211vap*, %struct.mbuf*, %struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
