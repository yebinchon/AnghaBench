; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_opmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32 }
%struct.ifmediareq = type { i32, i32 }

@sock = common dso_local global i32 0, align 4
@SIOCGIFMEDIA = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i64 0, align 8
@WlanIfaceOperatingModeType_station = common dso_local global i32 0, align 4
@IFM_IEEE80211_ADHOC = common dso_local global i32 0, align 4
@IFM_FLAG0 = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_adhocDemo = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_ibss = common dso_local global i32 0, align 4
@IFM_IEEE80211_HOSTAP = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_hostAp = common dso_local global i32 0, align 4
@IFM_IEEE80211_MONITOR = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_monitor = common dso_local global i32 0, align 4
@IFM_IEEE80211_MBSS = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_meshPoint = common dso_local global i32 0, align 4
@IFM_IEEE80211_WDS = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_wds = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_get_opmode(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca %struct.ifmediareq, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  %5 = call i32 @memset(%struct.ifmediareq* %4, i32 0, i32 8)
  %6 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %9 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @strlcpy(i32 %7, i32 %10, i32 4)
  %12 = load i32, i32* @sock, align 4
  %13 = load i32, i32* @SIOCGIFMEDIA, align 4
  %14 = call i64 @ioctl(i32 %12, i32 %13, %struct.ifmediareq* %4)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load i64, i64* @errno, align 8
  %18 = load i64, i64* @ENXIO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %91

21:                                               ; preds = %16
  %22 = load i32, i32* @WlanIfaceOperatingModeType_station, align 4
  %23 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %24 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %2, align 4
  br label %91

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFM_IEEE80211_ADHOC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFM_FLAG0, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* @WlanIfaceOperatingModeType_adhocDemo, align 4
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load i32, i32* @WlanIfaceOperatingModeType_ibss, align 4
  %43 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %44 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %37
  br label %90

46:                                               ; preds = %25
  %47 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFM_IEEE80211_HOSTAP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @WlanIfaceOperatingModeType_hostAp, align 4
  %54 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %55 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %89

56:                                               ; preds = %46
  %57 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IFM_IEEE80211_MONITOR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @WlanIfaceOperatingModeType_monitor, align 4
  %64 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %65 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  br label %88

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFM_IEEE80211_MBSS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* @WlanIfaceOperatingModeType_meshPoint, align 4
  %74 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %75 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  br label %87

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFM_IEEE80211_WDS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @WlanIfaceOperatingModeType_wds, align 4
  %84 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %85 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %76
  br label %87

87:                                               ; preds = %86, %72
  br label %88

88:                                               ; preds = %87, %62
  br label %89

89:                                               ; preds = %88, %52
  br label %90

90:                                               ; preds = %89, %45
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %21, %20
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.ifmediareq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ifmediareq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
