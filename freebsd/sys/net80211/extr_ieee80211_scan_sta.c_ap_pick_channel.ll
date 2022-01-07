; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_ap_pick_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_ap_pick_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i64 }
%struct.ieee80211_scan_state = type { i32, %struct.ieee80211_channel**, %struct.sta_table* }
%struct.sta_table = type { i64* }

@.str = private unnamed_addr constant [13 x i8] c"ic_chan size\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.ieee80211_scan_state*, i32)* @ap_pick_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @ap_pick_channel(%struct.ieee80211_scan_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.ieee80211_scan_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sta_table*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %10, i32 0, i32 2
  %12 = load %struct.sta_table*, %struct.sta_table** %11, align 8
  store %struct.sta_table* %12, %struct.sta_table** %6, align 8
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %85, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %88

19:                                               ; preds = %13
  %20 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %21 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %20, i32 0, i32 1
  %22 = load %struct.ieee80211_channel**, %struct.ieee80211_channel*** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ieee80211_channel*, %struct.ieee80211_channel** %22, i64 %24
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %25, align 8
  store %struct.ieee80211_channel* %26, %struct.ieee80211_channel** %9, align 8
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %28 = call i64 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %85

31:                                               ; preds = %19
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %33 = call i64 @IEEE80211_IS_CHAN_NOHOSTAP(%struct.ieee80211_channel* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %85

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %85

48:                                               ; preds = %39, %36
  %49 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.sta_table*, %struct.sta_table** %6, align 8
  %51 = getelementptr inbounds %struct.sta_table, %struct.sta_table* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %60, %struct.ieee80211_channel** %3, align 8
  br label %90

61:                                               ; preds = %48
  %62 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %63 = icmp eq %struct.ieee80211_channel* %62, null
  br i1 %63, label %82, label %64

64:                                               ; preds = %61
  %65 = load %struct.sta_table*, %struct.sta_table** %6, align 8
  %66 = getelementptr inbounds %struct.sta_table, %struct.sta_table* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i64, i64* %67, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.sta_table*, %struct.sta_table** %6, align 8
  %74 = getelementptr inbounds %struct.sta_table, %struct.sta_table* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %72, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %64, %61
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %83, %struct.ieee80211_channel** %7, align 8
  br label %84

84:                                               ; preds = %82, %64
  br label %85

85:                                               ; preds = %84, %47, %35, %30
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %13

88:                                               ; preds = %13
  %89 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  store %struct.ieee80211_channel* %89, %struct.ieee80211_channel** %3, align 8
  br label %90

90:                                               ; preds = %88, %59
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  ret %struct.ieee80211_channel* %91
}

declare dso_local i64 @IEEE80211_IS_CHAN_RADAR(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_NOHOSTAP(%struct.ieee80211_channel*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
