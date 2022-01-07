; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updatehtcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_updatehtcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@IEEE80211_HTC_SMPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_ht_updatehtcap(%struct.ieee80211_node* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_node*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %6, i32 0, i32 0
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  store %struct.ieee80211vap* %8, %struct.ieee80211vap** %5, align 8
  %9 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @ieee80211_parse_htcap(%struct.ieee80211_node* %9, i32* %10)
  %12 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_HTC_SMPS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %20 = call i32 @htcap_update_mimo_ps(%struct.ieee80211_node* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %23 = call i32 @htcap_update_shortgi(%struct.ieee80211_node* %22)
  %24 = load %struct.ieee80211_node*, %struct.ieee80211_node** %3, align 8
  %25 = call i32 @htcap_update_ldpc(%struct.ieee80211_node* %24)
  ret void
}

declare dso_local i32 @ieee80211_parse_htcap(%struct.ieee80211_node*, i32*) #1

declare dso_local i32 @htcap_update_mimo_ps(%struct.ieee80211_node*) #1

declare dso_local i32 @htcap_update_shortgi(%struct.ieee80211_node*) #1

declare dso_local i32 @htcap_update_ldpc(%struct.ieee80211_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
