; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_set_scan_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_set_scan_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_scan_req = type { i64, i32, i32, i32, i32 }

@IEEE80211_IOC_SCAN_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_IOC_SCAN_REQ = common dso_local global i32 0, align 4
@wlanScanConfigStatus_running = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_set_scan_config(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_scan_req, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 @memset(%struct.ieee80211_scan_req* %6, i32 0, i32 24)
  store i64 24, i64* %5, align 8
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %9 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @wlan_snmp_to_scan_flags(i32 %10)
  %12 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %6, i32 0, i32 4
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @IEEE80211_IOC_SCAN_BGSCAN, align 4
  %14 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %6, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %13
  store i32 %16, i32* %14, align 4
  %17 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %18 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %6, i32 0, i32 3
  store i32 %19, i32* %20, align 8
  %21 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %22 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %6, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %26 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %6, i32 0, i32 1
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %6, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %31 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_IOC_SCAN_REQ, align 4
  %34 = call i64 @wlan_ioctl(i32 %32, i32 %33, i32* %4, %struct.ieee80211_scan_req* %6, i64* %5, i32 1)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @wlanScanConfigStatus_running, align 4
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %36
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @memset(%struct.ieee80211_scan_req*, i32, i32) #1

declare dso_local i32 @wlan_snmp_to_scan_flags(i32) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211_scan_req*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
