; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_scan_sta.c_sta_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sta_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@IEEE80211_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@STA_RSSI_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sta_entry*, %struct.sta_entry*)* @sta_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sta_compare(%struct.sta_entry* %0, %struct.sta_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sta_entry*, align 8
  %5 = alloca %struct.sta_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sta_entry* %0, %struct.sta_entry** %4, align 8
  store %struct.sta_entry* %1, %struct.sta_entry** %5, align 8
  br label %11

11:                                               ; preds = %2
  %12 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %13 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sta_entry*, %struct.sta_entry** %5, align 8
  %17 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %15, %19
  %21 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %11
  %25 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %26 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 -1
  store i32 %33, i32* %3, align 4
  br label %117

34:                                               ; preds = %11
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.sta_entry*, %struct.sta_entry** %5, align 8
  %37 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %40 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @abs(i32 %43) #3
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %117

48:                                               ; preds = %35
  %49 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %50 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @STA_RSSI_MAX, align 4
  %54 = call i32 @MIN(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.sta_entry*, %struct.sta_entry** %5, align 8
  %56 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @STA_RSSI_MAX, align 4
  %60 = call i32 @MIN(i32 %58, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @abs(i32 %63) #3
  %65 = icmp slt i32 %64, 5
  br i1 %65, label %66, label %107

66:                                               ; preds = %48
  %67 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %68 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %67, i32 0, i32 1
  %69 = call i32 @maxrate(%struct.TYPE_2__* %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.sta_entry*, %struct.sta_entry** %5, align 8
  %71 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %70, i32 0, i32 1
  %72 = call i32 @maxrate(%struct.TYPE_2__* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %66
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 %77, %78
  store i32 %79, i32* %3, align 4
  br label %117

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %83 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IEEE80211_IS_CHAN_5GHZ(i32 %85)
  %87 = load %struct.sta_entry*, %struct.sta_entry** %5, align 8
  %88 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @IEEE80211_IS_CHAN_5GHZ(i32 %90)
  %92 = xor i32 %86, %91
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %81
  %96 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %97 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @IEEE80211_IS_CHAN_5GHZ(i32 %99)
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 1, i32 -1
  store i32 %104, i32* %3, align 4
  br label %117

105:                                              ; preds = %81
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %48
  %108 = load %struct.sta_entry*, %struct.sta_entry** %4, align 8
  %109 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sta_entry*, %struct.sta_entry** %5, align 8
  %113 = getelementptr inbounds %struct.sta_entry, %struct.sta_entry* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %111, %115
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %107, %95, %76, %46, %24
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @MIN(i32, i32) #2

declare dso_local i32 @maxrate(%struct.TYPE_2__*) #2

declare dso_local i32 @IEEE80211_IS_CHAN_5GHZ(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
