; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_wep.c_wep_setiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_wep.c_wep_setiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.wep_ctx* }
%struct.wep_ctx = type { i32, %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*, i32*)* @wep_setiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wep_setiv(%struct.ieee80211_key* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wep_ctx*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %10, i32 0, i32 0
  %12 = load %struct.wep_ctx*, %struct.wep_ctx** %11, align 8
  store %struct.wep_ctx* %12, %struct.wep_ctx** %5, align 8
  %13 = load %struct.wep_ctx*, %struct.wep_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.wep_ctx, %struct.wep_ctx* %13, i32 0, i32 1
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %14, align 8
  store %struct.ieee80211vap* %15, %struct.ieee80211vap** %6, align 8
  %16 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %17 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %18 = call i32 @ieee80211_crypto_get_keyid(%struct.ieee80211vap* %16, %struct.ieee80211_key* %17)
  %19 = shl i32 %18, 6
  store i32 %19, i32* %8, align 4
  %20 = load %struct.wep_ctx*, %struct.wep_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.wep_ctx, %struct.wep_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 65280
  %25 = icmp eq i32 %24, 65280
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 16711680
  %29 = ashr i32 %28, 16
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp sle i32 3, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 16
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 256
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %32, %26
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  %42 = load %struct.wep_ctx*, %struct.wep_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.wep_ctx, %struct.wep_ctx* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 0
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 8
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 16
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %56, i32* %58, align 4
  ret void
}

declare dso_local i32 @ieee80211_crypto_get_keyid(%struct.ieee80211vap*, %struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
