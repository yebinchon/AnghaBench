; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_snmp2ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_snmp2ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_IOC_BURST = common dso_local global i32 0, align 4
@IEEE80211_IOC_REGDOMAIN = common dso_local global i32 0, align 4
@IEEE80211_IOC_SSID = common dso_local global i32 0, align 4
@IEEE80211_IOC_CURCHAN = common dso_local global i32 0, align 4
@IEEE80211_IOC_DFS = common dso_local global i32 0, align 4
@IEEE80211_IOC_FF = common dso_local global i32 0, align 4
@IEEE80211_IOC_TURBOP = common dso_local global i32 0, align 4
@IEEE80211_IOC_TXPOWER = common dso_local global i32 0, align 4
@IEEE80211_IOC_FRAGTHRESHOLD = common dso_local global i32 0, align 4
@IEEE80211_IOC_RTSTHRESHOLD = common dso_local global i32 0, align 4
@IEEE80211_IOC_WPS = common dso_local global i32 0, align 4
@IEEE80211_IOC_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_IOC_BGSCAN_IDLE = common dso_local global i32 0, align 4
@IEEE80211_IOC_BGSCAN_INTERVAL = common dso_local global i32 0, align 4
@IEEE80211_IOC_BMISSTHRESHOLD = common dso_local global i32 0, align 4
@IEEE80211_IOC_BSSID = common dso_local global i32 0, align 4
@IEEE80211_IOC_ROAMING = common dso_local global i32 0, align 4
@IEEE80211_IOC_DOTD = common dso_local global i32 0, align 4
@IEEE80211_IOC_DOTH = common dso_local global i32 0, align 4
@IEEE80211_IOC_DWDS = common dso_local global i32 0, align 4
@IEEE80211_IOC_POWERSAVE = common dso_local global i32 0, align 4
@IEEE80211_IOC_APBRIDGE = common dso_local global i32 0, align 4
@IEEE80211_IOC_BEACON_INTERVAL = common dso_local global i32 0, align 4
@IEEE80211_IOC_DTIM_PERIOD = common dso_local global i32 0, align 4
@IEEE80211_IOC_HIDESSID = common dso_local global i32 0, align 4
@IEEE80211_IOC_INACTIVITY = common dso_local global i32 0, align 4
@IEEE80211_IOC_PROTMODE = common dso_local global i32 0, align 4
@IEEE80211_IOC_PUREG = common dso_local global i32 0, align 4
@IEEE80211_IOC_PUREN = common dso_local global i32 0, align 4
@IEEE80211_IOC_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_IOC_AMPDU_DENSITY = common dso_local global i32 0, align 4
@IEEE80211_IOC_AMPDU_LIMIT = common dso_local global i32 0, align 4
@IEEE80211_IOC_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_IOC_AMSDU_LIMIT = common dso_local global i32 0, align 4
@IEEE80211_IOC_HTCONF = common dso_local global i32 0, align 4
@IEEE80211_IOC_HTCOMPAT = common dso_local global i32 0, align 4
@IEEE80211_IOC_HTPROTMODE = common dso_local global i32 0, align 4
@IEEE80211_IOC_RIFS = common dso_local global i32 0, align 4
@IEEE80211_IOC_SHORTGI = common dso_local global i32 0, align 4
@IEEE80211_IOC_SMPS = common dso_local global i32 0, align 4
@IEEE80211_IOC_TDMA_SLOT = common dso_local global i32 0, align 4
@IEEE80211_IOC_TDMA_SLOTCNT = common dso_local global i32 0, align 4
@IEEE80211_IOC_TDMA_SLOTLEN = common dso_local global i32 0, align 4
@IEEE80211_IOC_TDMA_BINTERVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wlan_config_snmp2ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_snmp2ioctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %95 [
    i32 138, label %5
    i32 166, label %7
    i32 135, label %9
    i32 163, label %11
    i32 164, label %13
    i32 144, label %15
    i32 142, label %17
    i32 145, label %19
    i32 129, label %21
    i32 141, label %23
    i32 136, label %25
    i32 128, label %27
    i32 169, label %29
    i32 168, label %31
    i32 167, label %33
    i32 170, label %35
    i32 165, label %37
    i32 134, label %39
    i32 162, label %41
    i32 159, label %43
    i32 143, label %45
    i32 137, label %47
    i32 172, label %49
    i32 171, label %51
    i32 146, label %53
    i32 140, label %55
    i32 139, label %57
    i32 161, label %59
    i32 160, label %61
    i32 150, label %63
    i32 158, label %65
    i32 157, label %67
    i32 156, label %69
    i32 155, label %71
    i32 154, label %73
    i32 151, label %75
    i32 153, label %77
    i32 152, label %79
    i32 149, label %81
    i32 147, label %83
    i32 148, label %85
    i32 132, label %87
    i32 131, label %89
    i32 130, label %91
    i32 133, label %93
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @IEEE80211_IOC_BURST, align 4
  store i32 %6, i32* %3, align 4
  br label %96

7:                                                ; preds = %1
  %8 = load i32, i32* @IEEE80211_IOC_REGDOMAIN, align 4
  store i32 %8, i32* %3, align 4
  br label %96

9:                                                ; preds = %1
  %10 = load i32, i32* @IEEE80211_IOC_REGDOMAIN, align 4
  store i32 %10, i32* %3, align 4
  br label %96

11:                                               ; preds = %1
  %12 = load i32, i32* @IEEE80211_IOC_SSID, align 4
  store i32 %12, i32* %3, align 4
  br label %96

13:                                               ; preds = %1
  %14 = load i32, i32* @IEEE80211_IOC_CURCHAN, align 4
  store i32 %14, i32* %3, align 4
  br label %96

15:                                               ; preds = %1
  %16 = load i32, i32* @IEEE80211_IOC_DFS, align 4
  store i32 %16, i32* %3, align 4
  br label %96

17:                                               ; preds = %1
  %18 = load i32, i32* @IEEE80211_IOC_FF, align 4
  store i32 %18, i32* %3, align 4
  br label %96

19:                                               ; preds = %1
  %20 = load i32, i32* @IEEE80211_IOC_TURBOP, align 4
  store i32 %20, i32* %3, align 4
  br label %96

21:                                               ; preds = %1
  %22 = load i32, i32* @IEEE80211_IOC_TXPOWER, align 4
  store i32 %22, i32* %3, align 4
  br label %96

23:                                               ; preds = %1
  %24 = load i32, i32* @IEEE80211_IOC_FRAGTHRESHOLD, align 4
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %1
  %26 = load i32, i32* @IEEE80211_IOC_RTSTHRESHOLD, align 4
  store i32 %26, i32* %3, align 4
  br label %96

27:                                               ; preds = %1
  %28 = load i32, i32* @IEEE80211_IOC_WPS, align 4
  store i32 %28, i32* %3, align 4
  br label %96

29:                                               ; preds = %1
  %30 = load i32, i32* @IEEE80211_IOC_BGSCAN, align 4
  store i32 %30, i32* %3, align 4
  br label %96

31:                                               ; preds = %1
  %32 = load i32, i32* @IEEE80211_IOC_BGSCAN_IDLE, align 4
  store i32 %32, i32* %3, align 4
  br label %96

33:                                               ; preds = %1
  %34 = load i32, i32* @IEEE80211_IOC_BGSCAN_INTERVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %96

35:                                               ; preds = %1
  %36 = load i32, i32* @IEEE80211_IOC_BMISSTHRESHOLD, align 4
  store i32 %36, i32* %3, align 4
  br label %96

37:                                               ; preds = %1
  %38 = load i32, i32* @IEEE80211_IOC_BSSID, align 4
  store i32 %38, i32* %3, align 4
  br label %96

39:                                               ; preds = %1
  %40 = load i32, i32* @IEEE80211_IOC_ROAMING, align 4
  store i32 %40, i32* %3, align 4
  br label %96

41:                                               ; preds = %1
  %42 = load i32, i32* @IEEE80211_IOC_DOTD, align 4
  store i32 %42, i32* %3, align 4
  br label %96

43:                                               ; preds = %1
  %44 = load i32, i32* @IEEE80211_IOC_DOTH, align 4
  store i32 %44, i32* %3, align 4
  br label %96

45:                                               ; preds = %1
  %46 = load i32, i32* @IEEE80211_IOC_DWDS, align 4
  store i32 %46, i32* %3, align 4
  br label %96

47:                                               ; preds = %1
  %48 = load i32, i32* @IEEE80211_IOC_POWERSAVE, align 4
  store i32 %48, i32* %3, align 4
  br label %96

49:                                               ; preds = %1
  %50 = load i32, i32* @IEEE80211_IOC_APBRIDGE, align 4
  store i32 %50, i32* %3, align 4
  br label %96

51:                                               ; preds = %1
  %52 = load i32, i32* @IEEE80211_IOC_BEACON_INTERVAL, align 4
  store i32 %52, i32* %3, align 4
  br label %96

53:                                               ; preds = %1
  %54 = load i32, i32* @IEEE80211_IOC_DTIM_PERIOD, align 4
  store i32 %54, i32* %3, align 4
  br label %96

55:                                               ; preds = %1
  %56 = load i32, i32* @IEEE80211_IOC_HIDESSID, align 4
  store i32 %56, i32* %3, align 4
  br label %96

57:                                               ; preds = %1
  %58 = load i32, i32* @IEEE80211_IOC_INACTIVITY, align 4
  store i32 %58, i32* %3, align 4
  br label %96

59:                                               ; preds = %1
  %60 = load i32, i32* @IEEE80211_IOC_PROTMODE, align 4
  store i32 %60, i32* %3, align 4
  br label %96

61:                                               ; preds = %1
  %62 = load i32, i32* @IEEE80211_IOC_PUREG, align 4
  store i32 %62, i32* %3, align 4
  br label %96

63:                                               ; preds = %1
  %64 = load i32, i32* @IEEE80211_IOC_PUREN, align 4
  store i32 %64, i32* %3, align 4
  br label %96

65:                                               ; preds = %1
  %66 = load i32, i32* @IEEE80211_IOC_AMPDU, align 4
  store i32 %66, i32* %3, align 4
  br label %96

67:                                               ; preds = %1
  %68 = load i32, i32* @IEEE80211_IOC_AMPDU_DENSITY, align 4
  store i32 %68, i32* %3, align 4
  br label %96

69:                                               ; preds = %1
  %70 = load i32, i32* @IEEE80211_IOC_AMPDU_LIMIT, align 4
  store i32 %70, i32* %3, align 4
  br label %96

71:                                               ; preds = %1
  %72 = load i32, i32* @IEEE80211_IOC_AMSDU, align 4
  store i32 %72, i32* %3, align 4
  br label %96

73:                                               ; preds = %1
  %74 = load i32, i32* @IEEE80211_IOC_AMSDU_LIMIT, align 4
  store i32 %74, i32* %3, align 4
  br label %96

75:                                               ; preds = %1
  %76 = load i32, i32* @IEEE80211_IOC_HTCONF, align 4
  store i32 %76, i32* %3, align 4
  br label %96

77:                                               ; preds = %1
  %78 = load i32, i32* @IEEE80211_IOC_HTCOMPAT, align 4
  store i32 %78, i32* %3, align 4
  br label %96

79:                                               ; preds = %1
  %80 = load i32, i32* @IEEE80211_IOC_HTPROTMODE, align 4
  store i32 %80, i32* %3, align 4
  br label %96

81:                                               ; preds = %1
  %82 = load i32, i32* @IEEE80211_IOC_RIFS, align 4
  store i32 %82, i32* %3, align 4
  br label %96

83:                                               ; preds = %1
  %84 = load i32, i32* @IEEE80211_IOC_SHORTGI, align 4
  store i32 %84, i32* %3, align 4
  br label %96

85:                                               ; preds = %1
  %86 = load i32, i32* @IEEE80211_IOC_SMPS, align 4
  store i32 %86, i32* %3, align 4
  br label %96

87:                                               ; preds = %1
  %88 = load i32, i32* @IEEE80211_IOC_TDMA_SLOT, align 4
  store i32 %88, i32* %3, align 4
  br label %96

89:                                               ; preds = %1
  %90 = load i32, i32* @IEEE80211_IOC_TDMA_SLOTCNT, align 4
  store i32 %90, i32* %3, align 4
  br label %96

91:                                               ; preds = %1
  %92 = load i32, i32* @IEEE80211_IOC_TDMA_SLOTLEN, align 4
  store i32 %92, i32* %3, align 4
  br label %96

93:                                               ; preds = %1
  %94 = load i32, i32* @IEEE80211_IOC_TDMA_BINTERVAL, align 4
  store i32 %94, i32* %3, align 4
  br label %96

95:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
