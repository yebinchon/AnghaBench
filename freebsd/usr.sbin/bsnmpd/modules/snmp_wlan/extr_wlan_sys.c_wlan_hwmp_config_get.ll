; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_hwmp_config_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_hwmp_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32 }

@IEEE80211_IOC_HWMP_ROOTMODE = common dso_local global i32 0, align 4
@IEEE80211_IOC_HWMP_MAXHOPS = common dso_local global i32 0, align 4
@wlanHWMPRootMode_normal = common dso_local global i32 0, align 4
@wlanHWMPRootMode_proactive = common dso_local global i32 0, align 4
@wlanHWMPRootMode_rann = common dso_local global i32 0, align 4
@wlanHWMPRootMode_disabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_hwmp_config_get(%struct.wlan_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %14 [
    i32 128, label %10
    i32 129, label %12
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @IEEE80211_IOC_HWMP_ROOTMODE, align 4
  store i32 %11, i32* %6, align 4
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @IEEE80211_IOC_HWMP_MAXHOPS, align 4
  store i32 %13, i32* %6, align 4
  br label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %50

15:                                               ; preds = %12, %10
  %16 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %17 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i64 @wlan_ioctl(i32 %18, i32 %19, i32* %7, i32* null, i64* %8, i32 0)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %49 [
    i32 128, label %25
    i32 129, label %45
  ]

25:                                               ; preds = %23
  %26 = load i32, i32* %7, align 4
  switch i32 %26, label %40 [
    i32 132, label %27
    i32 131, label %31
    i32 130, label %35
    i32 133, label %39
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @wlanHWMPRootMode_normal, align 4
  %29 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %30 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %44

31:                                               ; preds = %25
  %32 = load i32, i32* @wlanHWMPRootMode_proactive, align 4
  %33 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %34 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %44

35:                                               ; preds = %25
  %36 = load i32, i32* @wlanHWMPRootMode_rann, align 4
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %38 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %44

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %25, %39
  %41 = load i32, i32* @wlanHWMPRootMode_disabled, align 4
  %42 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %43 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %35, %31, %27
  br label %49

45:                                               ; preds = %23
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %48 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %23, %45, %44
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %22, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
