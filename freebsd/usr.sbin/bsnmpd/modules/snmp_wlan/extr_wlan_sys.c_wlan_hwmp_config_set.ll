; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_hwmp_config_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_hwmp_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32 }

@IEEE80211_IOC_HWMP_ROOTMODE = common dso_local global i32 0, align 4
@IEEE80211_HWMP_ROOTMODE_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_HWMP_ROOTMODE_NORMAL = common dso_local global i32 0, align 4
@IEEE80211_HWMP_ROOTMODE_PROACTIVE = common dso_local global i32 0, align 4
@IEEE80211_HWMP_ROOTMODE_RANN = common dso_local global i32 0, align 4
@IEEE80211_IOC_HWMP_MAXHOPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_hwmp_config_set(%struct.wlan_iface* %0, i32 %1) #0 {
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
  switch i32 %9, label %30 [
    i32 132, label %10
    i32 133, label %25
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @IEEE80211_IOC_HWMP_ROOTMODE, align 4
  store i32 %11, i32* %6, align 4
  %12 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %13 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %23 [
    i32 131, label %15
    i32 130, label %17
    i32 129, label %19
    i32 128, label %21
  ]

15:                                               ; preds = %10
  %16 = load i32, i32* @IEEE80211_HWMP_ROOTMODE_DISABLED, align 4
  store i32 %16, i32* %7, align 4
  br label %24

17:                                               ; preds = %10
  %18 = load i32, i32* @IEEE80211_HWMP_ROOTMODE_NORMAL, align 4
  store i32 %18, i32* %7, align 4
  br label %24

19:                                               ; preds = %10
  %20 = load i32, i32* @IEEE80211_HWMP_ROOTMODE_PROACTIVE, align 4
  store i32 %20, i32* %7, align 4
  br label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @IEEE80211_HWMP_ROOTMODE_RANN, align 4
  store i32 %22, i32* %7, align 4
  br label %24

23:                                               ; preds = %10
  store i32 -1, i32* %3, align 4
  br label %40

24:                                               ; preds = %21, %19, %17, %15
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @IEEE80211_IOC_HWMP_MAXHOPS, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %28 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  br label %31

30:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %40

31:                                               ; preds = %25, %24
  %32 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %33 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @wlan_ioctl(i32 %34, i32 %35, i32* %7, i32* null, i64* %8, i32 1)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %38, %30, %23
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
