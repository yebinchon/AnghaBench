; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updateparams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updateparams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32, i32 }
%struct.ieee80211_ie_htinfo = type { i32 }

@IEEE80211_HTC_SMPS = common dso_local global i32 0, align 4
@IEEE80211_ELEMID_VENDOR = common dso_local global i64 0, align 8
@IEEE80211_HTINFO_RIFSMODE_PERM = common dso_local global i32 0, align 4
@IEEE80211_FHT_RIFS = common dso_local global i32 0, align 4
@IEEE80211_NODE_RIFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_updateparams(%struct.ieee80211_node* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca %struct.ieee80211_ie_htinfo*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %9, i32 0, i32 1
  %11 = load %struct.ieee80211vap*, %struct.ieee80211vap** %10, align 8
  store %struct.ieee80211vap* %11, %struct.ieee80211vap** %7, align 8
  %12 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = call i32 @ieee80211_parse_htcap(%struct.ieee80211_node* %12, i64* %13)
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_HTC_SMPS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %23 = call i32 @htcap_update_mimo_ps(%struct.ieee80211_node* %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %26 = call i32 @htcap_update_shortgi(%struct.ieee80211_node* %25)
  %27 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %28 = call i32 @htcap_update_ldpc(%struct.ieee80211_node* %27)
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IEEE80211_ELEMID_VENDOR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 4
  store i64* %36, i64** %6, align 8
  br label %37

37:                                               ; preds = %34, %24
  %38 = load i64*, i64** %6, align 8
  %39 = bitcast i64* %38 to %struct.ieee80211_ie_htinfo*
  store %struct.ieee80211_ie_htinfo* %39, %struct.ieee80211_ie_htinfo** %8, align 8
  %40 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %41 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %8, align 8
  %42 = call i32 @htinfo_parse(%struct.ieee80211_node* %40, %struct.ieee80211_ie_htinfo* %41)
  %43 = load %struct.ieee80211_ie_htinfo*, %struct.ieee80211_ie_htinfo** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_ie_htinfo, %struct.ieee80211_ie_htinfo* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IEEE80211_HTINFO_RIFSMODE_PERM, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IEEE80211_FHT_RIFS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load i32, i32* @IEEE80211_NODE_RIFS, align 4
  %58 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %69

62:                                               ; preds = %49, %37
  %63 = load i32, i32* @IEEE80211_NODE_RIFS, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %66 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %56
  ret void
}

declare dso_local i32 @ieee80211_parse_htcap(%struct.ieee80211_node*, i64*) #1

declare dso_local i32 @htcap_update_mimo_ps(%struct.ieee80211_node*) #1

declare dso_local i32 @htcap_update_shortgi(%struct.ieee80211_node*) #1

declare dso_local i32 @htcap_update_ldpc(%struct.ieee80211_node*) #1

declare dso_local i32 @htinfo_parse(%struct.ieee80211_node*, %struct.ieee80211_ie_htinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
