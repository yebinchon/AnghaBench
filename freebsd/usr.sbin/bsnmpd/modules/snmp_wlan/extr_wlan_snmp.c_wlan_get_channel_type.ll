; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_channel_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_channel_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }

@WlanChannelType_fhss = common dso_local global i32 0, align 4
@WlanChannelType_dot11a = common dso_local global i32 0, align 4
@WlanChannelType_dot11b = common dso_local global i32 0, align 4
@WlanChannelType_dot11g = common dso_local global i32 0, align 4
@WlanChannelType_tenMHz = common dso_local global i32 0, align 4
@WlanChannelType_fiveMHz = common dso_local global i32 0, align 4
@WlanChannelType_turbo = common dso_local global i32 0, align 4
@WlanChannelType_ht = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_channel*)* @wlan_get_channel_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_get_channel_type(%struct.ieee80211_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ieee80211_channel* %0, %struct.ieee80211_channel** %3, align 8
  %4 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %5 = call i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @WlanChannelType_fhss, align 4
  store i32 %8, i32* %2, align 4
  br label %52

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %11 = call i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @WlanChannelType_dot11a, align 4
  store i32 %14, i32* %2, align 4
  br label %52

15:                                               ; preds = %9
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %17 = call i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @WlanChannelType_dot11b, align 4
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %23 = call i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @WlanChannelType_dot11g, align 4
  store i32 %26, i32* %2, align 4
  br label %52

27:                                               ; preds = %21
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %29 = call i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @WlanChannelType_tenMHz, align 4
  store i32 %32, i32* %2, align 4
  br label %52

33:                                               ; preds = %27
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %35 = call i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @WlanChannelType_fiveMHz, align 4
  store i32 %38, i32* %2, align 4
  br label %52

39:                                               ; preds = %33
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %41 = call i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @WlanChannelType_turbo, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %39
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %47 = call i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @WlanChannelType_ht, align 4
  store i32 %50, i32* %2, align 4
  br label %52

51:                                               ; preds = %45
  store i32 -1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %49, %43, %37, %31, %25, %19, %13, %7
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @IEEE80211_IS_CHAN_FHSS(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_A(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_B(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_ANYG(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HALF(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_QUARTER(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_TURBO(%struct.ieee80211_channel*) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
