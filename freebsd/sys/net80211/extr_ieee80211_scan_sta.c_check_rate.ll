; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_check_rate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_check_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_scan_entry = type { i32*, i32* }
%struct.ieee80211_rateset = type { i32, i32* }

@IEEE80211_FIXED_RATE_NONE = common dso_local global i32 0, align 4
@IEEE80211_RATE_BASIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211_channel*, %struct.ieee80211_scan_entry*)* @check_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_rate(%struct.ieee80211vap* %0, %struct.ieee80211_channel* %1, %struct.ieee80211_scan_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211vap*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca %struct.ieee80211_scan_entry*, align 8
  %8 = alloca %struct.ieee80211_rateset*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %5, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %6, align 8
  store %struct.ieee80211_scan_entry* %2, %struct.ieee80211_scan_entry** %7, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %22 = call %struct.ieee80211_rateset* @ieee80211_get_suprates(i32 %20, %struct.ieee80211_channel* %21)
  store %struct.ieee80211_rateset* %22, %struct.ieee80211_rateset** %8, align 8
  %23 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32* %31, i32** %17, align 8
  %32 = load %struct.ieee80211vap*, %struct.ieee80211vap** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %36 = call i64 @ieee80211_chan2mode(%struct.ieee80211_channel* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* @IEEE80211_FIXED_RATE_NONE, align 4
  store i32 %40, i32* %15, align 4
  br label %41

41:                                               ; preds = %115, %3
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %105, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %108

46:                                               ; preds = %42
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IEEE80211_RV(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %15, align 4
  br label %59

59:                                               ; preds = %57, %46
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %85, %59
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %8, align 8
  %63 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %60
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %8, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @IEEE80211_RV(i32 %74)
  %76 = icmp eq i32 %67, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %66
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %88

84:                                               ; preds = %66
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %60

88:                                               ; preds = %83, %60
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.ieee80211_rateset*, %struct.ieee80211_rateset** %8, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rateset, %struct.ieee80211_rateset* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = load i32*, i32** %17, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %126

104:                                              ; preds = %94, %88
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %9, align 4
  br label %42

108:                                              ; preds = %42
  %109 = load i32*, i32** %17, align 8
  %110 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %7, align 8
  %111 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  %114 = icmp eq i32* %109, %113
  br i1 %114, label %115, label %125

115:                                              ; preds = %108
  %116 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %7, align 8
  %117 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %11, align 4
  %121 = load %struct.ieee80211_scan_entry*, %struct.ieee80211_scan_entry** %7, align 8
  %122 = getelementptr inbounds %struct.ieee80211_scan_entry, %struct.ieee80211_scan_entry* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32* %124, i32** %17, align 8
  br label %41

125:                                              ; preds = %108
  br label %126

126:                                              ; preds = %125, %103
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* %15, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %129, %126
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* @IEEE80211_RATE_BASIC, align 4
  %136 = or i32 %134, %135
  store i32 %136, i32* %4, align 4
  br label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @IEEE80211_RV(i32 %138)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %137, %133
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local %struct.ieee80211_rateset* @ieee80211_get_suprates(i32, %struct.ieee80211_channel*) #1

declare dso_local i64 @ieee80211_chan2mode(%struct.ieee80211_channel*) #1

declare dso_local i32 @IEEE80211_RV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
