; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_wlan_getopmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/wlanstats/extr_wlanstats.c_wlan_getopmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlanstatfoo = type { i32 }
%struct.wlanstatfoo_p = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ifmediareq = type { i32, i32 }

@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s (SIOCGIFMEDIA)\00", align 1
@IFM_IEEE80211_ADHOC = common dso_local global i32 0, align 4
@IFM_FLAG0 = common dso_local global i32 0, align 4
@IEEE80211_M_AHDEMO = common dso_local global i32 0, align 4
@IEEE80211_M_IBSS = common dso_local global i32 0, align 4
@IFM_IEEE80211_HOSTAP = common dso_local global i32 0, align 4
@IEEE80211_M_HOSTAP = common dso_local global i32 0, align 4
@IFM_IEEE80211_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_M_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_M_STA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlanstatfoo*)* @wlan_getopmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_getopmode(%struct.wlanstatfoo* %0) #0 {
  %2 = alloca %struct.wlanstatfoo*, align 8
  %3 = alloca %struct.wlanstatfoo_p*, align 8
  %4 = alloca %struct.ifmediareq, align 4
  store %struct.wlanstatfoo* %0, %struct.wlanstatfoo** %2, align 8
  %5 = load %struct.wlanstatfoo*, %struct.wlanstatfoo** %2, align 8
  %6 = bitcast %struct.wlanstatfoo* %5 to %struct.wlanstatfoo_p*
  store %struct.wlanstatfoo_p* %6, %struct.wlanstatfoo_p** %3, align 8
  %7 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %8 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %80

11:                                               ; preds = %1
  %12 = call i32 @memset(%struct.ifmediareq* %4, i32 0, i32 8)
  %13 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %16 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strlcpy(i32 %14, i32 %18, i32 4)
  %20 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %21 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @SIOCGIFMEDIA, align 4
  %24 = call i64 @ioctl(i32 %22, i32 %23, %struct.ifmediareq* %4)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %11
  %27 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %28 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %11
  %33 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFM_IEEE80211_ADHOC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFM_FLAG0, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @IEEE80211_M_AHDEMO, align 4
  %46 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %47 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @IEEE80211_M_IBSS, align 4
  %50 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %51 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %79

53:                                               ; preds = %32
  %54 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IFM_IEEE80211_HOSTAP, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @IEEE80211_M_HOSTAP, align 4
  %61 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %62 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %78

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IFM_IEEE80211_MONITOR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @IEEE80211_M_MONITOR, align 4
  %71 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %72 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %77

73:                                               ; preds = %63
  %74 = load i32, i32* @IEEE80211_M_STA, align 4
  %75 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %76 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %52
  br label %80

80:                                               ; preds = %79, %1
  %81 = load %struct.wlanstatfoo_p*, %struct.wlanstatfoo_p** %3, align 8
  %82 = getelementptr inbounds %struct.wlanstatfoo_p, %struct.wlanstatfoo_p* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  ret i32 %83
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifmediareq*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
