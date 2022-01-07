; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_add_node_nt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_ieee80211_add_node_nt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node_table = type { i32, i32*, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211_node_table*, i32 }

@ni_list = common dso_local global i32 0, align 4
@ni_hash = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node_table*, %struct.ieee80211_node*)* @ieee80211_add_node_nt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_add_node_nt(%struct.ieee80211_node_table* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca %struct.ieee80211_node_table*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_node_table* %0, %struct.ieee80211_node_table** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %7, i32 0, i32 3
  %9 = load %struct.ieee80211com*, %struct.ieee80211com** %8, align 8
  store %struct.ieee80211com* %9, %struct.ieee80211com** %5, align 8
  %10 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %11 = call i32 @IEEE80211_NODE_LOCK_ASSERT(%struct.ieee80211_node_table* %10)
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %13 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @IEEE80211_NODE_HASH(%struct.ieee80211com* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %18 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %18, i32 0, i32 2
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %21 = load i32, i32* @ni_list, align 4
  %22 = call i32 @TAILQ_INSERT_TAIL(i32* %19, %struct.ieee80211_node* %20, i32 %21)
  %23 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %24 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %30 = load i32, i32* @ni_hash, align 4
  %31 = call i32 @LIST_INSERT_HEAD(i32* %28, %struct.ieee80211_node* %29, i32 %30)
  %32 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211_node_table, %struct.ieee80211_node_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ieee80211_node_table*, %struct.ieee80211_node_table** %3, align 8
  %37 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %37, i32 0, i32 0
  store %struct.ieee80211_node_table* %36, %struct.ieee80211_node_table** %38, align 8
  ret void
}

declare dso_local i32 @IEEE80211_NODE_LOCK_ASSERT(%struct.ieee80211_node_table*) #1

declare dso_local i32 @IEEE80211_NODE_HASH(%struct.ieee80211com*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ieee80211_node*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ieee80211_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
