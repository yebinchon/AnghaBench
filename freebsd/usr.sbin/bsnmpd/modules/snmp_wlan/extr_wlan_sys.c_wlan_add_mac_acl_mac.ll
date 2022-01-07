; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_mac_acl_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_add_mac_acl_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i32 }
%struct.wlan_mac_mac = type { %struct.ieee80211req_mlme*, i32 }
%struct.ieee80211req_mlme = type { i32, i32, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@IEEE80211_IOC_ADDMAC = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4
@wlanMACAccessControlPolicy_deny = common dso_local global i64 0, align 8
@IEEE80211_MLME_DEAUTH = common dso_local global i32 0, align 4
@IEEE80211_REASON_AUTH_EXPIRE = common dso_local global i32 0, align 4
@IEEE80211_IOC_MLME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_add_mac_acl_mac(%struct.wlan_iface* %0, %struct.wlan_mac_mac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca %struct.wlan_mac_mac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211req_mlme, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store %struct.wlan_mac_mac* %1, %struct.wlan_mac_mac** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %11 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @IEEE80211_IOC_ADDMAC, align 4
  %14 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %5, align 8
  %15 = getelementptr inbounds %struct.wlan_mac_mac, %struct.wlan_mac_mac* %14, i32 0, i32 0
  %16 = load %struct.ieee80211req_mlme*, %struct.ieee80211req_mlme** %15, align 8
  %17 = call i64 @wlan_ioctl(i32 %12, i32 %13, i32* %6, %struct.ieee80211req_mlme* %16, i64* %7, i32 1)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %55

20:                                               ; preds = %2
  %21 = load i32, i32* @RowStatus_active, align 4
  %22 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %5, align 8
  %23 = getelementptr inbounds %struct.wlan_mac_mac, %struct.wlan_mac_mac* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %25 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @wlanMACAccessControlPolicy_deny, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %55

30:                                               ; preds = %20
  %31 = call i32 @memset(%struct.ieee80211req_mlme* %8, i32 0, i32 12)
  %32 = load i32, i32* @IEEE80211_MLME_DEAUTH, align 4
  %33 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %8, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @IEEE80211_REASON_AUTH_EXPIRE, align 4
  %35 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %8, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.ieee80211req_mlme, %struct.ieee80211req_mlme* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %5, align 8
  %39 = getelementptr inbounds %struct.wlan_mac_mac, %struct.wlan_mac_mac* %38, i32 0, i32 0
  %40 = load %struct.ieee80211req_mlme*, %struct.ieee80211req_mlme** %39, align 8
  %41 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  %42 = call i32 @memcpy(i32 %37, %struct.ieee80211req_mlme* %40, i64 %41)
  store i64 12, i64* %7, align 8
  %43 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %44 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IEEE80211_IOC_MLME, align 4
  %47 = call i64 @wlan_ioctl(i32 %45, i32 %46, i32* %6, %struct.ieee80211req_mlme* %8, i64* %7, i32 1)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load i64, i64* @errno, align 8
  %51 = load i64, i64* @ENOENT, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 -1, i32* %3, align 4
  br label %55

54:                                               ; preds = %49, %30
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %29, %19
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211req_mlme*, i64*, i32) #1

declare dso_local i32 @memset(%struct.ieee80211req_mlme*, i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211req_mlme*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
