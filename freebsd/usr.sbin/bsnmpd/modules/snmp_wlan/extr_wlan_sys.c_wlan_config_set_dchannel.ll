; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_dchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_dchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i64, i64, i32 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_IOC_CURCHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*, i64)* @wlan_config_set_dchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_set_dchannel(%struct.wlan_iface* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_channel, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i64 4, i64* %7, align 8
  %9 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %10 = call i64 @wlan_get_channel_list(%struct.wlan_iface* %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %16 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %39

20:                                               ; preds = %13
  %21 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %22 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = add nsw i64 %23, %24
  %26 = sub nsw i64 %25, 1
  %27 = call i32 @memcpy(%struct.ieee80211_channel* %8, i64 %26, i32 4)
  %28 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %29 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IEEE80211_IOC_CURCHAN, align 4
  %32 = call i64 @wlan_ioctl(i32 %30, i32 %31, i32* %6, %struct.ieee80211_channel* %8, i64* %7, i32 1)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -1, i32* %3, align 4
  br label %39

35:                                               ; preds = %20
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %38 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %35, %34, %19, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i64 @wlan_get_channel_list(%struct.wlan_iface*) #1

declare dso_local i32 @memcpy(%struct.ieee80211_channel*, i64, i32) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211_channel*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
