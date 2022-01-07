; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_find_channel_byieee.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211.c_ieee80211_find_channel_byieee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i32 }
%struct.ieee80211com = type { i32, %struct.ieee80211_channel*, %struct.ieee80211_channel* }

@IEEE80211_CHAN_ALLTURBO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_channel* @ieee80211_find_channel_byieee(%struct.ieee80211com* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @IEEE80211_CHAN_ALLTURBO, align 4
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %13, i32 0, i32 2
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  store %struct.ieee80211_channel* %15, %struct.ieee80211_channel** %8, align 8
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %17 = icmp ne %struct.ieee80211_channel* %16, null
  br i1 %17, label %18, label %34

18:                                               ; preds = %3
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_CHAN_ALLTURBO, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  store %struct.ieee80211_channel* %33, %struct.ieee80211_channel** %4, align 8
  br label %68

34:                                               ; preds = %24, %18, %3
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %67

41:                                               ; preds = %35
  %42 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %43 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %42, i32 0, i32 1
  %44 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %44, i64 %46
  store %struct.ieee80211_channel* %47, %struct.ieee80211_channel** %8, align 8
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %41
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @IEEE80211_CHAN_ALLTURBO, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  store %struct.ieee80211_channel* %62, %struct.ieee80211_channel** %4, align 8
  br label %68

63:                                               ; preds = %53, %41
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %9, align 4
  br label %35

67:                                               ; preds = %35
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %4, align 8
  br label %68

68:                                               ; preds = %67, %61, %32
  %69 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  ret %struct.ieee80211_channel* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
