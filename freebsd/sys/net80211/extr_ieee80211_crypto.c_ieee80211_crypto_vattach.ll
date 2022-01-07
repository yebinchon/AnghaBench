; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_ieee80211_crypto_vattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto.c_ieee80211_crypto_vattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i32, i8*, i8*, i32, i32, i32, i32*, i32 }

@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@IEEE80211_KEYIX_NONE = common dso_local global i32 0, align 4
@null_key_alloc = common dso_local global i32 0, align 4
@null_key_set = common dso_local global i32 0, align 4
@null_key_delete = common dso_local global i32 0, align 4
@null_key_update = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_crypto_vattach(%struct.ieee80211vap* %0) #0 {
  %2 = alloca %struct.ieee80211vap*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %2, align 8
  %4 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %5 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %5, i32 0, i32 0
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @IEEE80211_KEYIX_NONE, align 4
  %8 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %8, i32 0, i32 7
  store i32 %7, i32* %9, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %16, i32 0, i32 6
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* @IEEE80211_KEYIX_NONE, align 4
  %23 = call i32 @ieee80211_crypto_resetkey(%struct.ieee80211vap* %15, i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load i32, i32* @null_key_alloc, align 4
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @null_key_set, align 4
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %33 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @null_key_delete, align 4
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @null_key_update, align 8
  %38 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @null_key_update, align 8
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  ret void
}

declare dso_local i32 @ieee80211_crypto_resetkey(%struct.ieee80211vap*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
