; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_add_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_add_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_ampdu = type { i64, i32, i32, i32, %struct.mbuf** }
%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IEEE80211_MSG_INPUT = common dso_local global i32 0, align 4
@IEEE80211_MSG_11N = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"a-mpdu duplicate\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"seqno %u tid %u BA win <%u:%u>\00", align 1
@rx_dup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_ampdu*, i32, i32, i32, %struct.ieee80211_node*, %struct.mbuf*)* @ampdu_rx_add_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ampdu_rx_add_slot(%struct.ieee80211_rx_ampdu* %0, i32 %1, i32 %2, i32 %3, %struct.ieee80211_node* %4, %struct.mbuf* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_node*, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_rx_ampdu* %0, %struct.ieee80211_rx_ampdu** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.ieee80211_node* %4, %struct.ieee80211_node** %12, align 8
  store %struct.mbuf* %5, %struct.mbuf** %13, align 8
  %15 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %16 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %15, i32 0, i32 1
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %16, align 8
  store %struct.ieee80211vap* %17, %struct.ieee80211vap** %14, align 8
  %18 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %8, align 8
  %19 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %18, i32 0, i32 4
  %20 = load %struct.mbuf**, %struct.mbuf*** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %20, i64 %22
  %24 = load %struct.mbuf*, %struct.mbuf** %23, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %6
  %27 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %28 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %28, i32 0, i32 4
  %30 = load %struct.mbuf**, %struct.mbuf*** %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %30, i64 %32
  store %struct.mbuf* %27, %struct.mbuf** %33, align 8
  %34 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %8, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 4
  %48 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  %49 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  store i32 0, i32* %7, align 4
  br label %85

53:                                               ; preds = %6
  %54 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  %55 = load i32, i32* @IEEE80211_MSG_INPUT, align 4
  %56 = load i32, i32* @IEEE80211_MSG_11N, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %8, align 8
  %67 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %8, align 8
  %70 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call i32 @IEEE80211_SEQ_ADD(i32 %68, i64 %72)
  %74 = call i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap* %54, i32 %57, i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62, i32 %65, i32 %73)
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  %76 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ieee80211_node*, %struct.ieee80211_node** %12, align 8
  %81 = load i32, i32* @rx_dup, align 4
  %82 = call i32 @IEEE80211_NODE_STAT(%struct.ieee80211_node* %80, i32 %81)
  %83 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %84 = call i32 @m_freem(%struct.mbuf* %83)
  store i32 -1, i32* %7, align 4
  br label %85

85:                                               ; preds = %53, %26
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i32 @IEEE80211_DISCARD_MAC(%struct.ieee80211vap*, i32, i32, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @IEEE80211_SEQ_ADD(i32, i64) #1

declare dso_local i32 @IEEE80211_NODE_STAT(%struct.ieee80211_node*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
