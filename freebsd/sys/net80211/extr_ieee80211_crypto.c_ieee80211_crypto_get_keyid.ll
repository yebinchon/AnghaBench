; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_ieee80211_crypto_get_keyid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_ieee80211_crypto_get_keyid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_key* }
%struct.ieee80211_key = type { i32 }

@IEEE80211_WEP_NKID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_crypto_get_keyid(%struct.ieee80211vap* %0, %struct.ieee80211_key* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211_key*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211_key* %1, %struct.ieee80211_key** %5, align 8
  %6 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_key*, %struct.ieee80211_key** %8, align 8
  %10 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %9, i64 0
  %11 = icmp uge %struct.ieee80211_key* %6, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %14, i32 0, i32 0
  %16 = load %struct.ieee80211_key*, %struct.ieee80211_key** %15, align 8
  %17 = load i64, i64* @IEEE80211_WEP_NKID, align 8
  %18 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %16, i64 %17
  %19 = icmp ult %struct.ieee80211_key* %13, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load %struct.ieee80211_key*, %struct.ieee80211_key** %5, align 8
  %22 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %22, i32 0, i32 0
  %24 = load %struct.ieee80211_key*, %struct.ieee80211_key** %23, align 8
  %25 = ptrtoint %struct.ieee80211_key* %21 to i64
  %26 = ptrtoint %struct.ieee80211_key* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  br label %31

30:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
