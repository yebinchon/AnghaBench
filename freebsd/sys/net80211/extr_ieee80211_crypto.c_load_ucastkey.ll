; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_load_ucastkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_load_ucastkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211_key, %struct.ieee80211vap* }
%struct.ieee80211_key = type { i32 }
%struct.ieee80211vap = type { i64 }

@IEEE80211_S_RUN = common dso_local global i64 0, align 8
@IEEE80211_KEY_DEVKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_node*)* @load_ucastkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_ucastkey(i8* %0, %struct.ieee80211_node* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_key*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.ieee80211_node* %1, %struct.ieee80211_node** %4, align 8
  %7 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %7, i32 0, i32 1
  %9 = load %struct.ieee80211vap*, %struct.ieee80211vap** %8, align 8
  store %struct.ieee80211vap* %9, %struct.ieee80211vap** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IEEE80211_S_RUN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %29

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %17, i32 0, i32 0
  store %struct.ieee80211_key* %18, %struct.ieee80211_key** %6, align 8
  %19 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IEEE80211_KEY_DEVKEY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %27 = load %struct.ieee80211_key*, %struct.ieee80211_key** %6, align 8
  %28 = call i32 @dev_key_set(%struct.ieee80211vap* %26, %struct.ieee80211_key* %27)
  br label %29

29:                                               ; preds = %15, %25, %16
  ret void
}

declare dso_local i32 @dev_key_set(%struct.ieee80211vap*, %struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
