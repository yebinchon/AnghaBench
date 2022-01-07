; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_channel_flags_to_snmp_phy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_channel_flags_to_snmp_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IEEE80211_CHAN_A = common dso_local global i32 0, align 4
@WlanIfPhyMode_dot11a = common dso_local global i32 0, align 4
@IEEE80211_CHAN_B = common dso_local global i32 0, align 4
@WlanIfPhyMode_dot11b = common dso_local global i32 0, align 4
@IEEE80211_CHAN_G = common dso_local global i32 0, align 4
@IEEE80211_CHAN_PUREG = common dso_local global i32 0, align 4
@WlanIfPhyMode_dot11g = common dso_local global i32 0, align 4
@IEEE80211_CHAN_FHSS = common dso_local global i32 0, align 4
@WlanIfPhyMode_fh = common dso_local global i32 0, align 4
@IEEE80211_CHAN_TURBO = common dso_local global i32 0, align 4
@WlanIfPhyMode_turboA = common dso_local global i32 0, align 4
@WlanIfPhyMode_turboG = common dso_local global i32 0, align 4
@IEEE80211_CHAN_STURBO = common dso_local global i32 0, align 4
@WlanIfPhyMode_sturboA = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HALF = common dso_local global i32 0, align 4
@WlanIfPhyMode_ofdmHalf = common dso_local global i32 0, align 4
@IEEE80211_CHAN_QUARTER = common dso_local global i32 0, align 4
@WlanIfPhyMode_ofdmQuarter = common dso_local global i32 0, align 4
@WlanIfPhyMode_auto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wlan_channel_flags_to_snmp_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_channel_flags_to_snmp_phy(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @WlanIfPhyMode_dot11a, align 4
  store i32 %9, i32* %2, align 4
  br label %83

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @IEEE80211_CHAN_B, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @WlanIfPhyMode_dot11b, align 4
  store i32 %16, i32* %2, align 4
  br label %83

17:                                               ; preds = %10
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IEEE80211_CHAN_PUREG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @WlanIfPhyMode_dot11g, align 4
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @IEEE80211_CHAN_FHSS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @WlanIfPhyMode_fh, align 4
  store i32 %35, i32* %2, align 4
  br label %83

36:                                               ; preds = %29
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @IEEE80211_CHAN_TURBO, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @IEEE80211_CHAN_A, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @WlanIfPhyMode_turboA, align 4
  store i32 %47, i32* %2, align 4
  br label %83

48:                                               ; preds = %41, %36
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @IEEE80211_CHAN_TURBO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @IEEE80211_CHAN_G, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @WlanIfPhyMode_turboG, align 4
  store i32 %59, i32* %2, align 4
  br label %83

60:                                               ; preds = %53, %48
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @IEEE80211_CHAN_STURBO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @WlanIfPhyMode_sturboA, align 4
  store i32 %66, i32* %2, align 4
  br label %83

67:                                               ; preds = %60
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* @WlanIfPhyMode_ofdmHalf, align 4
  store i32 %73, i32* %2, align 4
  br label %83

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* @WlanIfPhyMode_ofdmQuarter, align 4
  store i32 %80, i32* %2, align 4
  br label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @WlanIfPhyMode_auto, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %79, %72, %65, %58, %46, %34, %27, %15, %8
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
