; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_set_basic_htrates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_set_basic_htrates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_htrateset = type { i32, i32* }

@IEEE80211_RATE_VAL = common dso_local global i32 0, align 4
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@IEEE80211_HTRATE_MAXSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.ieee80211_htrateset*)* @ieee80211_set_basic_htrates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_set_basic_htrates(i32* %0, %struct.ieee80211_htrateset* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ieee80211_htrateset*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.ieee80211_htrateset* %1, %struct.ieee80211_htrateset** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %7
  %14 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IEEE80211_RATE_VAL, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ieee80211_htrateset*, %struct.ieee80211_htrateset** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_htrateset, %struct.ieee80211_htrateset* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IEEE80211_HTRATE_MAXSIZE, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @setbit(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %33, %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %7

45:                                               ; preds = %7
  ret void
}

declare dso_local i32 @setbit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
