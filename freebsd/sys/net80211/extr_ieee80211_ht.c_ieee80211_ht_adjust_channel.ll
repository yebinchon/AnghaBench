; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_adjust_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ieee80211_ht_adjust_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211com = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }

@IEEE80211_FHT_HT = common dso_local global i32 0, align 4
@IEEE80211_FHT_USEHT40 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40U = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT40D = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT20 = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_channel* @ieee80211_ht_adjust_channel(%struct.ieee80211com* %0, %struct.ieee80211_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211com* %0, %struct.ieee80211com** %4, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @IEEE80211_FHT_HT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @IEEE80211_FHT_USEHT40, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %12
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %19 = call i32 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %47, label %21

21:                                               ; preds = %17
  %22 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %24 = load i32, i32* @IEEE80211_CHAN_HT40U, align 4
  %25 = call %struct.ieee80211_channel* @findhtchan(%struct.ieee80211com* %22, %struct.ieee80211_channel* %23, i32 %24)
  store %struct.ieee80211_channel* %25, %struct.ieee80211_channel** %7, align 8
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %27 = icmp eq %struct.ieee80211_channel* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %30 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %31 = load i32, i32* @IEEE80211_CHAN_HT40D, align 4
  %32 = call %struct.ieee80211_channel* @findhtchan(%struct.ieee80211com* %29, %struct.ieee80211_channel* %30, i32 %31)
  store %struct.ieee80211_channel* %32, %struct.ieee80211_channel** %7, align 8
  br label %33

33:                                               ; preds = %28, %21
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %35 = icmp eq %struct.ieee80211_channel* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %39 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %40 = call %struct.ieee80211_channel* @findhtchan(%struct.ieee80211com* %37, %struct.ieee80211_channel* %38, i32 %39)
  store %struct.ieee80211_channel* %40, %struct.ieee80211_channel** %7, align 8
  br label %41

41:                                               ; preds = %36, %33
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %43 = icmp ne %struct.ieee80211_channel* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  store %struct.ieee80211_channel* %45, %struct.ieee80211_channel** %5, align 8
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %17
  br label %63

48:                                               ; preds = %12
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %50 = call i32 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %54 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %55 = load i32, i32* @IEEE80211_CHAN_HT20, align 4
  %56 = call %struct.ieee80211_channel* @findhtchan(%struct.ieee80211com* %53, %struct.ieee80211_channel* %54, i32 %55)
  store %struct.ieee80211_channel* %56, %struct.ieee80211_channel** %7, align 8
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %58 = icmp ne %struct.ieee80211_channel* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  store %struct.ieee80211_channel* %60, %struct.ieee80211_channel** %5, align 8
  br label %61

61:                                               ; preds = %59, %52
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %47
  br label %86

64:                                               ; preds = %3
  %65 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %66 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE80211_CHAN_HT, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call %struct.ieee80211_channel* @ieee80211_find_channel(%struct.ieee80211com* %69, i32 %72, i32 %78)
  store %struct.ieee80211_channel* %79, %struct.ieee80211_channel** %7, align 8
  %80 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %81 = icmp ne %struct.ieee80211_channel* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %68
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  store %struct.ieee80211_channel* %83, %struct.ieee80211_channel** %5, align 8
  br label %84

84:                                               ; preds = %82, %68
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %85, %63
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  ret %struct.ieee80211_channel* %87
}

declare dso_local i32 @IEEE80211_IS_CHAN_HT40(%struct.ieee80211_channel*) #1

declare dso_local %struct.ieee80211_channel* @findhtchan(%struct.ieee80211com*, %struct.ieee80211_channel*, i32) #1

declare dso_local i32 @IEEE80211_IS_CHAN_HT20(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_find_channel(%struct.ieee80211com*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
