; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_peercaps_to_snmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_peercaps_to_snmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_CAPINFO_ESS = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_ess = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_IBSS = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_ibss = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_CF_POLLABLE = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_cfPollable = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_CF_POLLREQ = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_cfPollRequest = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_PRIVACY = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_privacy = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_shortPreamble = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_PBCC = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_pbcc = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_CHNL_AGILITY = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_channelAgility = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_SHORT_SLOTTIME = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_shortSlotTime = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_RSN = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_rsn = common dso_local global i32 0, align 4
@IEEE80211_CAPINFO_DSSSOFDM = common dso_local global i32 0, align 4
@WlanPeerCapabilityFlags_dsssofdm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wlan_peercaps_to_snmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_peercaps_to_snmp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @IEEE80211_CAPINFO_ESS, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @WlanPeerCapabilityFlags_ess, align 4
  %10 = shl i32 1, %9
  %11 = load i32, i32* %3, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @IEEE80211_CAPINFO_IBSS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* @WlanPeerCapabilityFlags_ibss, align 4
  %20 = shl i32 1, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @IEEE80211_CAPINFO_CF_POLLABLE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @WlanPeerCapabilityFlags_cfPollable, align 4
  %30 = shl i32 1, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load i32, i32* %2, align 4
  %35 = load i32, i32* @IEEE80211_CAPINFO_CF_POLLREQ, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @WlanPeerCapabilityFlags_cfPollRequest, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @IEEE80211_CAPINFO_PRIVACY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* @WlanPeerCapabilityFlags_privacy, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* @IEEE80211_CAPINFO_SHORT_PREAMBLE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @WlanPeerCapabilityFlags_shortPreamble, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %53
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @IEEE80211_CAPINFO_PBCC, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @WlanPeerCapabilityFlags_pbcc, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %2, align 4
  %75 = load i32, i32* @IEEE80211_CAPINFO_CHNL_AGILITY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load i32, i32* @WlanPeerCapabilityFlags_channelAgility, align 4
  %80 = shl i32 1, %79
  %81 = load i32, i32* %3, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* @IEEE80211_CAPINFO_SHORT_SLOTTIME, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i32, i32* @WlanPeerCapabilityFlags_shortSlotTime, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* %3, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %2, align 4
  %95 = load i32, i32* @IEEE80211_CAPINFO_RSN, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32, i32* @WlanPeerCapabilityFlags_rsn, align 4
  %100 = shl i32 1, %99
  %101 = load i32, i32* %3, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* %2, align 4
  %105 = load i32, i32* @IEEE80211_CAPINFO_DSSSOFDM, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* @WlanPeerCapabilityFlags_dsssofdm, align 4
  %110 = shl i32 1, %109
  %111 = load i32, i32* %3, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
