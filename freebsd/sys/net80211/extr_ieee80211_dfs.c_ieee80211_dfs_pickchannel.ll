; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_pickchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_dfs.c_ieee80211_dfs_pickchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ieee80211com = type { i32, %struct.ieee80211_channel*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_CHAN_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"HELP, no channel located to switch to!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_channel* @ieee80211_dfs_pickchannel(%struct.ieee80211com* %0) #0 {
  %2 = alloca %struct.ieee80211_channel*, align 8
  %3 = alloca %struct.ieee80211com*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211com* %0, %struct.ieee80211com** %3, align 8
  %8 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_CHAN_ALL, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.ieee80211_channel* @ieee80211_scan_pickchannel(%struct.ieee80211com* %15, i32 %16)
  store %struct.ieee80211_channel* %17, %struct.ieee80211_channel** %4, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %19 = icmp ne %struct.ieee80211_channel* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  store %struct.ieee80211_channel* %21, %struct.ieee80211_channel** %2, align 8
  br label %92

22:                                               ; preds = %1
  %23 = call i32 @get_random_bytes(i32* %7, i32 4)
  %24 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = srem i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %57, %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %33 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %30
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %37, i32 0, i32 1
  %39 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %39, i64 %41
  store %struct.ieee80211_channel* %42, %struct.ieee80211_channel** %4, align 8
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %44 = call i32 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %36
  %47 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  store %struct.ieee80211_channel* %55, %struct.ieee80211_channel** %2, align 8
  br label %92

56:                                               ; preds = %46, %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %30

60:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %86, %60
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %61
  %66 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %67 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %66, i32 0, i32 1
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %68, i64 %70
  store %struct.ieee80211_channel* %71, %struct.ieee80211_channel** %4, align 8
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %73 = call i32 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %65
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  store %struct.ieee80211_channel* %84, %struct.ieee80211_channel** %2, align 8
  br label %92

85:                                               ; preds = %75, %65
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %61

89:                                               ; preds = %61
  %90 = load %struct.ieee80211com*, %struct.ieee80211com** %3, align 8
  %91 = call i32 @ic_printf(%struct.ieee80211com* %90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %2, align 8
  br label %92

92:                                               ; preds = %89, %83, %54, %20
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %2, align 8
  ret %struct.ieee80211_channel* %93
}

declare dso_local %struct.ieee80211_channel* @ieee80211_scan_pickchannel(%struct.ieee80211com*, i32) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel*) #1

declare dso_local i32 @ic_printf(%struct.ieee80211com*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
