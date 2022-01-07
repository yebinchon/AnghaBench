; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updateparams_final.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updateparams_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i64, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }
%struct.ieee80211_ie_htinfo = type { i32 }

@IEEE80211_FHT_HT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_TXWIDTH_2040 = common dso_local global i32 0, align 4
@IEEE80211_FHT_USEHT40 = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_2NDCHAN_ABOVE = common dso_local global i64 0, align 8
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_HTINFO_2NDCHAN_BELOW = common dso_local global i64 0, align 8
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_ht_updateparams_final(%struct.ieee80211_node* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_ie_htinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %12, i32 0, i32 1
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %13, align 8
  store %struct.ieee80211vap* %14, %struct.ieee80211vap** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.ieee80211_ie_htinfo*
  store %struct.ieee80211_ie_htinfo* %16, %struct.ieee80211_ie_htinfo** %8, align 8
  %17 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_FHT_HT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IEEE80211_HTINFO_TXWIDTH_2040, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_FHT_USEHT40, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %34
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IEEE80211_HTINFO_2NDCHAN_ABOVE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  store i32 %48, i32* %9, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %51 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @IEEE80211_HTINFO_2NDCHAN_BELOW, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %49
  br label %58

58:                                               ; preds = %57, %47
  br label %59

59:                                               ; preds = %58, %34, %26
  %60 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @ieee80211_vht_get_vhtflags(%struct.ieee80211_node* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @htinfo_update_chw(%struct.ieee80211_node* %63, i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @ieee80211_vht_get_vhtflags(%struct.ieee80211_node*, i32) #1

declare dso_local i64 @htinfo_update_chw(%struct.ieee80211_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
