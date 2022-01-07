; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_set_mac_policy.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_set_mac_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32 }

@IEEE80211_MACCMD_POLICY_ALLOW = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY_DENY = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY_RADIUS = common dso_local global i32 0, align 4
@IEEE80211_MACCMD_POLICY_OPEN = common dso_local global i32 0, align 4
@IEEE80211_IOC_MACCMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_set_mac_policy(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i64 0, i64* %5, align 8
  %6 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %7 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %13 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 131, label %15
    i32 130, label %17
    i32 128, label %19
    i32 129, label %21
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @IEEE80211_MACCMD_POLICY_ALLOW, align 4
  store i32 %16, i32* %4, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* @IEEE80211_MACCMD_POLICY_DENY, align 4
  store i32 %18, i32* %4, align 4
  br label %24

19:                                               ; preds = %11
  %20 = load i32, i32* @IEEE80211_MACCMD_POLICY_RADIUS, align 4
  store i32 %20, i32* %4, align 4
  br label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @IEEE80211_MACCMD_POLICY_OPEN, align 4
  store i32 %22, i32* %4, align 4
  br label %24

23:                                               ; preds = %11
  store i32 -1, i32* %2, align 4
  br label %33

24:                                               ; preds = %21, %19, %17, %15
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %26 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IEEE80211_IOC_MACCMD, align 4
  %29 = call i64 @wlan_ioctl(i32 %27, i32 %28, i32* %4, i32* null, i64* %5, i32 1)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %33

32:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %23, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
