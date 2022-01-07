; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_wds.c_ieee80211_dwds_discover.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_wds.c_ieee80211_dwds_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, i32, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@CSUM_SND_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_dwds_discover(%struct.ieee80211_node* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 2
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  store %struct.ieee80211com* %8, %struct.ieee80211com** %5, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CSUM_SND_TAG, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ieee80211_mac_hash(%struct.ieee80211com* %18, i32 %21)
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %25 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i8* %23, i8** %26, align 8
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 1
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %31 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = shl i32 %36, 2
  %38 = sdiv i32 %37, 1024
  %39 = call i32 @ieee80211_ageq_append(i32* %28, %struct.mbuf* %29, i32 %38)
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %41 = call i32 @ieee80211_notify_wds_discover(%struct.ieee80211_node* %40)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @ieee80211_mac_hash(%struct.ieee80211com*, i32) #1

declare dso_local i32 @ieee80211_ageq_append(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @ieee80211_notify_wds_discover(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
