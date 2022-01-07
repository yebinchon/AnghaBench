; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_flush_ifq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_freebsd.c_ieee80211_flush_ifq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifqueue = type { %struct.mbuf*, %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ieee80211vap = type { i32 }
%struct.ieee80211_node = type { %struct.ieee80211vap* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_flush_ifq(%struct.ifqueue* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.ifqueue*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_node*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf**, align 8
  store %struct.ifqueue* %0, %struct.ifqueue** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %8 = load %struct.ifqueue*, %struct.ifqueue** %3, align 8
  %9 = call i32 @IF_LOCK(%struct.ifqueue* %8)
  %10 = load %struct.ifqueue*, %struct.ifqueue** %3, align 8
  %11 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %10, i32 0, i32 1
  store %struct.mbuf** %11, %struct.mbuf*** %7, align 8
  br label %12

12:                                               ; preds = %46, %2
  %13 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  store %struct.mbuf* %14, %struct.mbuf** %6, align 8
  %15 = icmp ne %struct.mbuf* %14, null
  br i1 %15, label %16, label %47

16:                                               ; preds = %12
  %17 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ieee80211_node*
  store %struct.ieee80211_node* %21, %struct.ieee80211_node** %5, align 8
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %23 = icmp ne %struct.ieee80211_node* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %16
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %25, i32 0, i32 0
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %26, align 8
  %28 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %29 = icmp eq %struct.ieee80211vap* %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 0
  %33 = load %struct.mbuf*, %struct.mbuf** %32, align 8
  %34 = load %struct.mbuf**, %struct.mbuf*** %7, align 8
  store %struct.mbuf* %33, %struct.mbuf** %34, align 8
  %35 = load %struct.ifqueue*, %struct.ifqueue** %3, align 8
  %36 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 8
  %39 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %40 = call i32 @m_freem(%struct.mbuf* %39)
  %41 = load %struct.ieee80211_node*, %struct.ieee80211_node** %5, align 8
  %42 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %41)
  br label %46

43:                                               ; preds = %24, %16
  %44 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  store %struct.mbuf** %45, %struct.mbuf*** %7, align 8
  br label %46

46:                                               ; preds = %43, %30
  br label %12

47:                                               ; preds = %12
  %48 = load %struct.ifqueue*, %struct.ifqueue** %3, align 8
  %49 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %48, i32 0, i32 1
  %50 = load %struct.mbuf*, %struct.mbuf** %49, align 8
  store %struct.mbuf* %50, %struct.mbuf** %6, align 8
  br label %51

51:                                               ; preds = %62, %47
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = icmp ne %struct.mbuf* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 0
  %57 = load %struct.mbuf*, %struct.mbuf** %56, align 8
  %58 = icmp ne %struct.mbuf* %57, null
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi i1 [ false, %51 ], [ %58, %54 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %64 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %63, i32 0, i32 0
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  store %struct.mbuf* %65, %struct.mbuf** %6, align 8
  br label %51

66:                                               ; preds = %59
  %67 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %68 = load %struct.ifqueue*, %struct.ifqueue** %3, align 8
  %69 = getelementptr inbounds %struct.ifqueue, %struct.ifqueue* %68, i32 0, i32 0
  store %struct.mbuf* %67, %struct.mbuf** %69, align 8
  %70 = load %struct.ifqueue*, %struct.ifqueue** %3, align 8
  %71 = call i32 @IF_UNLOCK(%struct.ifqueue* %70)
  ret void
}

declare dso_local i32 @IF_LOCK(%struct.ifqueue*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local i32 @IF_UNLOCK(%struct.ifqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
