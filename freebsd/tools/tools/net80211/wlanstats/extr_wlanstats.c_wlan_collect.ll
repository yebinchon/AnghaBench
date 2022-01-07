; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_wlan_collect.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_wlan_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlanstatfoo_p = type { %struct.TYPE_10__, i32, i64, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32, i8*, i32, i8*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_stats = type { i32 }
%struct.ieee80211req_sta_stats = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ether_addr = type { i32 }

@IEEE80211_IOC_STA_INFO = common dso_local global i32 0, align 4
@SIOCG80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s:%s (IEEE80211_IOC_STA_INFO)\00", align 1
@IEEE80211_IOC_STA_STATS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s:%s (IEEE80211_IOC_STA_STATS)\00", align 1
@SIOCG80211STATS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%s (SIOCG80211STATS)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlanstatfoo_p*, %struct.ieee80211_stats*, %struct.ieee80211req_sta_stats*)* @wlan_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_collect(%struct.wlanstatfoo_p* %0, %struct.ieee80211_stats* %1, %struct.ieee80211req_sta_stats* %2) #0 {
  %4 = alloca %struct.wlanstatfoo_p*, align 8
  %5 = alloca %struct.ieee80211_stats*, align 8
  %6 = alloca %struct.ieee80211req_sta_stats*, align 8
  store %struct.wlanstatfoo_p* %0, %struct.wlanstatfoo_p** %4, align 8
  store %struct.ieee80211_stats* %1, %struct.ieee80211_stats** %5, align 8
  store %struct.ieee80211req_sta_stats* %2, %struct.ieee80211req_sta_stats** %6, align 8
  %7 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %8 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %14 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @IEEE80211_ADDR_COPY(i32 %12, i64 %15)
  %17 = load i32, i32* @IEEE80211_IOC_STA_INFO, align 4
  %18 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %19 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 5
  store i32 %17, i32* %20, align 8
  %21 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %22 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %21, i32 0, i32 4
  %23 = bitcast %struct.TYPE_8__* %22 to i8*
  %24 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %25 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 4
  store i8* %23, i8** %26, align 8
  %27 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %28 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i32 4, i32* %29, align 8
  %30 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %31 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @SIOCG80211, align 4
  %34 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %35 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %34, i32 0, i32 3
  %36 = call i64 @ioctl(i32 %32, i32 %33, %struct.TYPE_10__* %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %3
  %39 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %40 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %44 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ether_addr*
  %47 = call i32 @ether_ntoa(%struct.ether_addr* %46)
  %48 = call i32 @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %47)
  br label %49

49:                                               ; preds = %38, %3
  %50 = load %struct.ieee80211req_sta_stats*, %struct.ieee80211req_sta_stats** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211req_sta_stats, %struct.ieee80211req_sta_stats* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %55 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @IEEE80211_ADDR_COPY(i32 %53, i64 %56)
  %58 = load i32, i32* @IEEE80211_IOC_STA_STATS, align 4
  %59 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %60 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 5
  store i32 %58, i32* %61, align 8
  %62 = load %struct.ieee80211req_sta_stats*, %struct.ieee80211req_sta_stats** %6, align 8
  %63 = bitcast %struct.ieee80211req_sta_stats* %62 to i8*
  %64 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %65 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 4
  store i8* %63, i8** %66, align 8
  %67 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %68 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  store i32 4, i32* %69, align 8
  %70 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %71 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SIOCG80211, align 4
  %74 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %75 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %74, i32 0, i32 3
  %76 = call i64 @ioctl(i32 %72, i32 %73, %struct.TYPE_10__* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %49
  %79 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %80 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %84 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to %struct.ether_addr*
  %87 = call i32 @ether_ntoa(%struct.ether_addr* %86)
  %88 = call i32 @warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %87)
  br label %89

89:                                               ; preds = %78, %49
  %90 = load %struct.ieee80211_stats*, %struct.ieee80211_stats** %5, align 8
  %91 = bitcast %struct.ieee80211_stats* %90 to i8*
  %92 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %93 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i8* %91, i8** %94, align 8
  %95 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %96 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @SIOCG80211STATS, align 4
  %99 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %100 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %99, i32 0, i32 0
  %101 = call i64 @ioctl(i32 %97, i32 %98, %struct.TYPE_10__* %100)
  %102 = icmp slt i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %89
  %104 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %4, align 8
  %105 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %103, %89
  ret void
}

declare dso_local i32 @IEEE80211_ADDR_COPY(i32, i64) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @warn(i8*, i32, i32) #1

declare dso_local i32 @ether_ntoa(%struct.ether_addr*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
