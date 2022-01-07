; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_find_channel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_find_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32 }
%struct.wlan_iface = type { i64, %struct.ieee80211_channel* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_channel* (%struct.wlan_iface*, i64)* @wlan_find_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_channel* @wlan_find_channel(%struct.wlan_iface* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i64, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %7 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %6, i32 0, i32 1
  %8 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %9 = icmp eq %struct.ieee80211_channel* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %13 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %2
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %3, align 8
  br label %24

17:                                               ; preds = %10
  %18 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %19 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %18, i32 0, i32 1
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i64 %21
  %23 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %22, i64 -1
  store %struct.ieee80211_channel* %23, %struct.ieee80211_channel** %3, align 8
  br label %24

24:                                               ; preds = %17, %16
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  ret %struct.ieee80211_channel* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
