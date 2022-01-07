; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_findchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_findchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i64, i32 }

@IEEE80211_CHAN_ALLTURBO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.ieee80211_channel*, i32, i64, i32)* @findchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @findchannel(%struct.ieee80211_channel* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ieee80211_channel*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @IEEE80211_CHAN_ALLTURBO, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %40, %4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i64 %22
  store %struct.ieee80211_channel* %23, %struct.ieee80211_channel** %10, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %19
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IEEE80211_CHAN_ALLTURBO, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* %9, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %38, %struct.ieee80211_channel** %5, align 8
  br label %44

39:                                               ; preds = %29, %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %15

43:                                               ; preds = %15
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %5, align 8
  br label %44

44:                                               ; preds = %43, %37
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  ret %struct.ieee80211_channel* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
