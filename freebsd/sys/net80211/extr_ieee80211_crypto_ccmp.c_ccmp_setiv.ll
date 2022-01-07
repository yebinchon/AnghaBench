; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_ccmp_setiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_crypto_ccmp.c_ccmp_setiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { i32, %struct.ccmp_ctx* }
%struct.ccmp_ctx = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { i32 }

@IEEE80211_WEP_EXTIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*, i32*)* @ccmp_setiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccmp_setiv(%struct.ieee80211_key* %0, i32* %1) #0 {
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ccmp_ctx*, align 8
  %6 = alloca %struct.ieee80211vap*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %8, i32 0, i32 1
  %10 = load %struct.ccmp_ctx*, %struct.ccmp_ctx** %9, align 8
  store %struct.ccmp_ctx* %10, %struct.ccmp_ctx** %5, align 8
  %11 = load %struct.ccmp_ctx*, %struct.ccmp_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ccmp_ctx, %struct.ccmp_ctx* %11, i32 0, i32 0
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %12, align 8
  store %struct.ieee80211vap* %13, %struct.ieee80211vap** %6, align 8
  %14 = load %struct.ieee80211vap*, %struct.ieee80211vap** %6, align 8
  %15 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %16 = call i32 @ieee80211_crypto_get_keyid(%struct.ieee80211vap* %14, %struct.ieee80211_key* %15)
  %17 = shl i32 %16, 6
  store i32 %17, i32* %7, align 4
  %18 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 0
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 8
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 2
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IEEE80211_WEP_EXTIV, align 4
  %38 = or i32 %36, %37
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %42 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 16
  %45 = load i32*, i32** %4, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %48 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = ashr i32 %49, 24
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %54 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = ashr i32 %55, 32
  %57 = load i32*, i32** %4, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 6
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = ashr i32 %61, 40
  %63 = load i32*, i32** %4, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 7
  store i32 %62, i32* %64, align 4
  ret void
}

declare dso_local i32 @ieee80211_crypto_get_keyid(%struct.ieee80211vap*, %struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
