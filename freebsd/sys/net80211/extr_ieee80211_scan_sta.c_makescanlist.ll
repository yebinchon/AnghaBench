; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_makescanlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_makescanlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_state = type { i64 }
%struct.ieee80211vap = type { i32, i32 }
%struct.scanlist = type { i32, i32, i32* }

@IEEE80211_MODE_AUTO = common dso_local global i32 0, align 4
@IEEE80211_MODE_11G = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_5GHZ = common dso_local global i32 0, align 4
@IEEE80211_F_XR = common dso_local global i32 0, align 4
@IEEE80211_MODE_STURBO_A = common dso_local global i32 0, align 4
@IEEE80211_MODE_TURBO_A = common dso_local global i32 0, align 4
@IEEE80211_MODE_TURBO_G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_scan_state*, %struct.ieee80211vap*, %struct.scanlist*)* @makescanlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @makescanlist(%struct.ieee80211_scan_state* %0, %struct.ieee80211vap* %1, %struct.scanlist* %2) #0 {
  %4 = alloca %struct.ieee80211_scan_state*, align 8
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.scanlist*, align 8
  %7 = alloca %struct.scanlist*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_scan_state* %0, %struct.ieee80211_scan_state** %4, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %5, align 8
  store %struct.scanlist* %2, %struct.scanlist** %6, align 8
  %9 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_scan_state, %struct.ieee80211_scan_state* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.scanlist*, %struct.scanlist** %6, align 8
  store %struct.scanlist* %11, %struct.scanlist** %7, align 8
  br label %12

12:                                               ; preds = %99, %3
  %13 = load %struct.scanlist*, %struct.scanlist** %7, align 8
  %14 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %102

17:                                               ; preds = %12
  %18 = load %struct.scanlist*, %struct.scanlist** %7, align 8
  %19 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  switch i32 %21, label %74 [
    i32 128, label %22
    i32 129, label %57
  ]

22:                                               ; preds = %17
  %23 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 128
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %88

28:                                               ; preds = %22
  %29 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %52, label %34

34:                                               ; preds = %28
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IEEE80211_MODE_11G, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IEEE80211_MODE_VHT_2GHZ, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %40, %34, %28
  %53 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %88

56:                                               ; preds = %46
  br label %99

57:                                               ; preds = %17
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %65 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %57
  %70 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %88

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %17, %73
  %75 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @IEEE80211_MODE_AUTO, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %74
  %81 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %82 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %99

87:                                               ; preds = %80, %74
  br label %88

88:                                               ; preds = %87, %69, %52, %27
  %89 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %90 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.scanlist*, %struct.scanlist** %7, align 8
  %93 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.scanlist*, %struct.scanlist** %7, align 8
  %96 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @add_channels(%struct.ieee80211vap* %89, %struct.ieee80211_scan_state* %90, i32 %91, i32* %94, i32 %97)
  br label %99

99:                                               ; preds = %88, %86, %56
  %100 = load %struct.scanlist*, %struct.scanlist** %7, align 8
  %101 = getelementptr inbounds %struct.scanlist, %struct.scanlist* %100, i32 1
  store %struct.scanlist* %101, %struct.scanlist** %7, align 8
  br label %12

102:                                              ; preds = %12
  %103 = load %struct.ieee80211_scan_state*, %struct.ieee80211_scan_state** %4, align 8
  %104 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %105 = load %struct.scanlist*, %struct.scanlist** %6, align 8
  %106 = call i32 @sweepchannels(%struct.ieee80211_scan_state* %103, %struct.ieee80211vap* %104, %struct.scanlist* %105)
  ret void
}

declare dso_local i32 @add_channels(%struct.ieee80211vap*, %struct.ieee80211_scan_state*, i32, i32*, i32) #1

declare dso_local i32 @sweepchannels(%struct.ieee80211_scan_state*, %struct.ieee80211vap*, %struct.scanlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
