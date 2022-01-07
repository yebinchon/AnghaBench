; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_age.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_node.c_node_age.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, i32, %struct.TYPE_2__, %struct.ieee80211vap* }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211vap = type { i32 (%struct.ieee80211_node.0*, i32)* }
%struct.ieee80211_node.0 = type opaque

@IEEE80211_NODE_HT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*)* @node_age to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_age(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %4 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %4, i32 0, i32 3
  %6 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211vap* %6, %struct.ieee80211vap** %3, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %8 = call i64 @ieee80211_node_psq_age(%struct.ieee80211_node* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.ieee80211_node.0*, i32)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load i32 (%struct.ieee80211_node.0*, i32)*, i32 (%struct.ieee80211_node.0*, i32)** %23, align 8
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %26 = bitcast %struct.ieee80211_node* %25 to %struct.ieee80211_node.0*
  %27 = call i32 %24(%struct.ieee80211_node.0* %26, i32 0)
  br label %28

28:                                               ; preds = %21, %16, %10, %1
  %29 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IEEE80211_NODE_HT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %42 = call i32 @ieee80211_ht_node_age(%struct.ieee80211_node* %41)
  br label %43

43:                                               ; preds = %40, %33, %28
  ret void
}

declare dso_local i64 @ieee80211_node_psq_age(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_ht_node_age(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
