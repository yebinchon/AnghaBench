; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setglobalkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_setglobalkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, %struct.ieee80211_key* }
%struct.ieee80211_key = type { i64 }

@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211vap*)* @mwl_setglobalkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_setglobalkeys(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca %struct.ieee80211_key*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %4, i32 0, i32 1
  %6 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %7 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %6, i64 0
  store %struct.ieee80211_key* %7, %struct.ieee80211_key** %3, align 8
  br label %8

8:                                                ; preds = %30, %1
  %9 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 1
  %12 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %13 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %14 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %12, i64 %13
  %15 = icmp ult %struct.ieee80211_key* %9, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %8
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %25 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %26 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @_mwl_key_set(%struct.ieee80211vap* %23, %struct.ieee80211_key* %24, i32 %27)
  br label %29

29:                                               ; preds = %22, %16
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %32 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %31, i32 1
  store %struct.ieee80211_key* %32, %struct.ieee80211_key** %3, align 8
  br label %8

33:                                               ; preds = %8
  ret void
}

declare dso_local i32 @_mwl_key_set(%struct.ieee80211vap*, %struct.ieee80211_key*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
