; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sweepchannels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sweepchannels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_scan_state = type { i64, %struct.ieee80211_channel** }
%struct.ieee80211vap = type { i64, %struct.ieee80211_channel*, %struct.ieee80211com* }
%struct.ieee80211com = type { i32, %struct.ieee80211_channel* }
%struct.scanlist = type { i32 }

@IEEE80211_SCAN_MAX = common dso_local global i64 0, align 8
@IEEE80211_MODE_AUTO = common dso_local global i64 0, align 8
@IEEE80211_CHAN_ANYC = common dso_local global %struct.ieee80211_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, %struct.ieee80211vap*, %struct.scanlist*)* @sweepchannels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sweepchannels(%struct.ieee80211_scan_state* %0, %struct.ieee80211vap* %1, %struct.scanlist* %2) #0 {
  %4 = alloca %struct.ieee80211_scan_state*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.scanlist*, align 8
  %7 = alloca %struct.ieee80211com*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  store %struct.scanlist* %2, %struct.scanlist** %6, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 2
  %12 = load %struct.ieee80211com*, %struct.ieee80211com** %11, align 8
  store %struct.ieee80211com* %12, %struct.ieee80211com** %7, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %81, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %84

19:                                               ; preds = %13
  %20 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IEEE80211_SCAN_MAX, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %84

26:                                               ; preds = %19
  %27 = load %struct.ieee80211com*, %struct.ieee80211com** %7, align 8
  %28 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %27, i32 0, i32 1
  %29 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %29, i64 %31
  store %struct.ieee80211_channel* %32, %struct.ieee80211_channel** %8, align 8
  %33 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %34 = call i64 @IEEE80211_IS_CHAN_DTURBO(%struct.ieee80211_channel* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %26
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %38 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %42 = call i64 @IEEE80211_IS_CHAN_VHT(%struct.ieee80211_channel* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %36, %26
  br label %81

45:                                               ; preds = %40
  %46 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %47 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IEEE80211_MODE_AUTO, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %53 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %56 = call i64 @ieee80211_chan2mode(%struct.ieee80211_channel* %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %81

59:                                               ; preds = %51, %45
  %60 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %62 = call i64 @isexcluded(%struct.ieee80211vap* %60, %struct.ieee80211_channel* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %81

65:                                               ; preds = %59
  %66 = load %struct.scanlist*, %struct.scanlist** %6, align 8
  %67 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %68 = call i64 @checktable(%struct.scanlist* %66, %struct.ieee80211_channel* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %81

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %73 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %73, i32 0, i32 1
  %75 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %74, align 8
  %76 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %77 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %75, i64 %78
  store %struct.ieee80211_channel* %72, %struct.ieee80211_channel** %80, align 8
  br label %81

81:                                               ; preds = %71, %70, %64, %58, %44
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %13

84:                                               ; preds = %25, %13
  %85 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %85, i32 0, i32 1
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %86, align 8
  store %struct.ieee80211_channel* %87, %struct.ieee80211_channel** %8, align 8
  %88 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @IEEE80211_CHAN_ANYC, align 8
  %90 = icmp ne %struct.ieee80211_channel* %88, %89
  br i1 %90, label %91, label %125

91:                                               ; preds = %84
  %92 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %93 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %94 = call i32 @onscanlist(%struct.ieee80211_scan_state* %92, %struct.ieee80211_channel* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %125, label %96

96:                                               ; preds = %91
  %97 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %98 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IEEE80211_MODE_AUTO, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %109, label %102

102:                                              ; preds = %96
  %103 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %107 = call i64 @ieee80211_chan2mode(%struct.ieee80211_channel* %106)
  %108 = icmp eq i64 %105, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %102, %96
  %110 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IEEE80211_SCAN_MAX, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %109
  %116 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %117 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %118 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %117, i32 0, i32 1
  %119 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %118, align 8
  %120 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %121 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %119, i64 %122
  store %struct.ieee80211_channel* %116, %struct.ieee80211_channel** %124, align 8
  br label %125

125:                                              ; preds = %115, %109, %102, %91, %84
  ret void
}

declare dso_local i64 @IEEE80211_IS_CHAN_DTURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_VHT(%struct.ieee80211_channel*) #1

declare dso_local i64 @ieee80211_chan2mode(%struct.ieee80211_channel*) #1

declare dso_local i64 @isexcluded(%struct.ieee80211vap*, %struct.ieee80211_channel*) #1

declare dso_local i64 @checktable(%struct.scanlist*, %struct.ieee80211_channel*) #1

declare dso_local i32 @onscanlist(%struct.ieee80211_scan_state*, %struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
