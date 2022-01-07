; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_xrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_output.c_ieee80211_add_xrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rateset = type { i64, i64 }

@IEEE80211_RATE_SIZE = common dso_local global i64 0, align 8
@IEEE80211_ELEMID_XRATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ieee80211_add_xrates(i32* %0, %struct.ieee80211_rateset* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_rateset*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_rateset* %1, %struct.ieee80211_rateset** %4, align 8
  %6 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @IEEE80211_RATE_SIZE, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %36

11:                                               ; preds = %2
  %12 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IEEE80211_RATE_SIZE, align 8
  %16 = sub nsw i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @IEEE80211_ELEMID_XRATES, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %3, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  store i32 %21, i32* %22, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IEEE80211_RATE_SIZE, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @memcpy(i32* %24, i64 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %11, %2
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
