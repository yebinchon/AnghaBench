; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updatehtcap_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updatehtcap_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_FHT_HT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_HTCAP_CHWIDTH40 = common dso_local global i32 0, align 4
@IEEE80211_FHT_USEHT40 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_updatehtcap_final(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.ieee80211vap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 1
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %3, align 8
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IEEE80211_FHT_HT, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32 [ %16, %15 ], [ 0, %17 ]
  store i32 %19, i32* %4, align 4
  %20 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IEEE80211_HTCAP_CHWIDTH40, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %18
  %27 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %28 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_FHT_USEHT40, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IEEE80211_IS_CHAN_HT40U(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %33
  %44 = load %struct.ieee80211vap*, %struct.ieee80211vap** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IEEE80211_IS_CHAN_HT40D(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %43
  br label %54

54:                                               ; preds = %53, %41
  br label %55

55:                                               ; preds = %54, %26, %18
  %56 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @ieee80211_vht_get_vhtflags(%struct.ieee80211_node* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @htinfo_update_chw(%struct.ieee80211_node* %59, i32 %60, i32 %61)
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_HT40U(i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40D(i32) #1

declare dso_local i32 @ieee80211_vht_get_vhtflags(%struct.ieee80211_node*, i32) #1

declare dso_local i32 @htinfo_update_chw(%struct.ieee80211_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
