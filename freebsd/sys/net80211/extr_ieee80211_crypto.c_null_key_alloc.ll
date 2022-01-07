; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_null_key_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_null_key_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { i32 }

@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8
@IEEE80211_KEY_GROUP = common dso_local global i32 0, align 4
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_key*, i64*, i64*)* @null_key_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_key_alloc(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca %struct.ieee80211_key*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %6, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load %struct.ieee80211_key*, %struct.ieee80211_key** %11, align 8
  %13 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %12, i64 0
  %14 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %15 = icmp ule %struct.ieee80211_key* %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_key*, %struct.ieee80211_key** %19, align 8
  %21 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %22 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %20, i64 %21
  %23 = icmp ult %struct.ieee80211_key* %17, %22
  br i1 %23, label %34, label %24

24:                                               ; preds = %16, %4
  %25 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_KEY_GROUP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %42

32:                                               ; preds = %24
  %33 = load i64*, i64** %8, align 8
  store i64 0, i64* %33, align 8
  br label %39

34:                                               ; preds = %16
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %36 = load %struct.ieee80211_key*, %struct.ieee80211_key** %7, align 8
  %37 = call i64 @ieee80211_crypto_get_key_wepidx(%struct.ieee80211vap* %35, %struct.ieee80211_key* %36)
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  br label %39

39:                                               ; preds = %34, %32
  %40 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %41 = load i64*, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  store i32 1, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %31
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i64 @ieee80211_crypto_get_key_wepidx(%struct.ieee80211vap*, %struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
