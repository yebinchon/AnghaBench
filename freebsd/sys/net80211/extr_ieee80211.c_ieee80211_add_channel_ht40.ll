; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_add_channel_ht40.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_add_channel_ht40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i32 }

@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_add_channel_ht40(%struct.ieee80211_channel* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca %struct.ieee80211_channel*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %13, align 4
  %20 = call i64 @ieee80211_ieee2mhz(i32 %18, i32 %19)
  store i64 %20, i64* %16, align 8
  %21 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %22 = load i32, i32* %13, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %13, align 4
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %16, align 8
  %28 = load i32, i32* %13, align 4
  %29 = call %struct.ieee80211_channel* @findchannel(%struct.ieee80211_channel* %24, i32 %26, i64 %27, i32 %28)
  store %struct.ieee80211_channel* %29, %struct.ieee80211_channel** %14, align 8
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %31 = icmp eq %struct.ieee80211_channel* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %7, align 4
  br label %85

34:                                               ; preds = %6
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %16, align 8
  %39 = add nsw i64 %38, 20
  %40 = load i32, i32* %13, align 4
  %41 = call %struct.ieee80211_channel* @findchannel(%struct.ieee80211_channel* %35, i32 %37, i64 %39, i32 %40)
  store %struct.ieee80211_channel* %41, %struct.ieee80211_channel** %15, align 8
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %43 = icmp eq %struct.ieee80211_channel* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @ENOENT, align 4
  store i32 %45, i32* %7, align 4
  br label %85

46:                                               ; preds = %34
  %47 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %13, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %13, align 4
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @addchan(%struct.ieee80211_channel* %51, i32 %52, i32* %53, i32 %56, i32 %59, i32 %60, i32 %63)
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %46
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %7, align 4
  br label %85

69:                                               ; preds = %46
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %74 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @addchan(%struct.ieee80211_channel* %70, i32 %71, i32* %72, i32 %75, i32 %78, i32 %79, i32 %82)
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* %7, align 4
  br label %85

85:                                               ; preds = %69, %67, %44, %32
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local i64 @ieee80211_ieee2mhz(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @findchannel(%struct.ieee80211_channel*, i32, i64, i32) #1

declare dso_local i32 @addchan(%struct.ieee80211_channel*, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
