; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_driver_caps.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_driver_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, %struct.ieee80211_channel*, i32, i32, i32, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_devcaps_req = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IEEE80211_IOC_DEVCAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_get_driver_caps(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_devcaps_req, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 @memset(%struct.ieee80211_devcaps_req* %6, i32 0, i32 20)
  store i64 20, i64* %5, align 8
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %9 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_IOC_DEVCAPS, align 4
  %12 = call i64 @wlan_ioctl(i32 %10, i32 %11, i32* %4, %struct.ieee80211_devcaps_req* %6, i64* %5, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %62

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %6, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @wlan_drivercaps_to_snmp(i32 %17)
  %19 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %20 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wlan_cryptocaps_to_snmp(i32 %22)
  %24 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %25 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wlan_htcaps_to_snmp(i32 %27)
  %29 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %30 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %32 = call i32 @WLAN_SET_TDMA_OPMODE(%struct.wlan_iface* %31)
  %33 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  store i64 %37, i64* %5, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @malloc(i64 %38)
  %40 = inttoptr i64 %39 to %struct.ieee80211_channel*
  %41 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %42 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %41, i32 0, i32 1
  store %struct.ieee80211_channel* %40, %struct.ieee80211_channel** %42, align 8
  %43 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %44 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %43, i32 0, i32 1
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %44, align 8
  %46 = icmp eq %struct.ieee80211_channel* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %62

48:                                               ; preds = %15
  %49 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %50 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %49, i32 0, i32 1
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %50, align 8
  %52 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %6, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @memcpy(%struct.ieee80211_channel* %51, i32 %54, i64 %55)
  %57 = getelementptr inbounds %struct.ieee80211_devcaps_req, %struct.ieee80211_devcaps_req* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %61 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %48, %47, %14
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.ieee80211_devcaps_req*, i32, i32) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211_devcaps_req*, i64*, i32) #1

declare dso_local i32 @wlan_drivercaps_to_snmp(i32) #1

declare dso_local i32 @wlan_cryptocaps_to_snmp(i32) #1

declare dso_local i32 @wlan_htcaps_to_snmp(i32) #1

declare dso_local i32 @WLAN_SET_TDMA_OPMODE(%struct.wlan_iface*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @memcpy(%struct.ieee80211_channel*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
