; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_dchannel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_dchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.ieee80211_channel = type { i64, i64 }

@IEEE80211_IOC_CURCHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*)* @wlan_config_get_dchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_get_dchannel(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_channel, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i64 16, i64* %6, align 8
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %9 = call i64 @wlan_get_channel_list(%struct.wlan_iface* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %60

12:                                               ; preds = %1
  %13 = call i32 @memset(%struct.ieee80211_channel* %7, i32 0, i32 16)
  %14 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %15 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @IEEE80211_IOC_CURCHAN, align 4
  %18 = call i64 @wlan_ioctl(i32 %16, i32 %17, i32* %5, %struct.ieee80211_channel* %7, i64* %6, i32 0)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %60

21:                                               ; preds = %12
  store i64 0, i64* %4, align 8
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %25 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %32 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %30, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %7, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %43 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %41, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i64, i64* %4, align 8
  %52 = add i64 %51, 1
  %53 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %54 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %59

55:                                               ; preds = %39, %28
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %22

59:                                               ; preds = %50, %22
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %20, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @wlan_get_channel_list(%struct.wlan_iface*) #1

declare dso_local i32 @memset(%struct.ieee80211_channel*, i32, i32) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211_channel*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
