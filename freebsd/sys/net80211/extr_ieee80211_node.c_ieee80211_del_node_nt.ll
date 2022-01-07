; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_del_node_nt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_del_node_nt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node_table = type { i64, i32 }
%struct.ieee80211_node = type { i32* }

@ni_list = common dso_local global i32 0, align 4
@ni_hash = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nt_count is negative (%d)!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node_table*, %struct.ieee80211_node*)* @ieee80211_del_node_nt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_del_node_nt(%struct.ieee80211_node_table* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.ieee80211_node_table*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211_node_table* %0, %struct.ieee80211_node_table** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %5 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %6 = call i32 @IEEE80211_NODE_LOCK_ASSERT(%struct.ieee80211_node_table* %5)
  %7 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %7, i32 0, i32 1
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = load i32, i32* @ni_list, align 4
  %11 = call i32 @TAILQ_REMOVE(i32* %8, %struct.ieee80211_node* %9, i32 %10)
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %13 = load i32, i32* @ni_hash, align 4
  %14 = call i32 @LIST_REMOVE(%struct.ieee80211_node* %12, i32 %13)
  %15 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %23, i8* %27)
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %30 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  ret void
}

declare dso_local i32 @IEEE80211_NODE_LOCK_ASSERT(%struct.ieee80211_node_table*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ieee80211_node*, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.ieee80211_node*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
