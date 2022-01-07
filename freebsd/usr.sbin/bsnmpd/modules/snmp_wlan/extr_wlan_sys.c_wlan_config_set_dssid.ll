; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_dssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_set_dssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i8*, i32 }

@WlanIfaceOperatingModeType_meshPoint = common dso_local global i64 0, align 8
@IEEE80211_IOC_MESH_ID = common dso_local global i32 0, align 4
@IEEE80211_IOC_SSID = common dso_local global i32 0, align 4
@IEEE80211_NWID_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_config_set_dssid(%struct.wlan_iface* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlan_iface*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %9, align 8
  %12 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %13 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %16 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @IEEE80211_IOC_MESH_ID, align 4
  br label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @IEEE80211_IOC_SSID, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load i8*, i8** %6, align 8
  %27 = call i64 @wlan_ioctl(i32 %14, i32 %25, i32* %8, i8* %26, i64* %9, i32 1)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %48

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @IEEE80211_NWID_LEN, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i64, i64* @IEEE80211_NWID_LEN, align 8
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %38 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @memcpy(i8* %39, i8* %40, i64 %41)
  %43 = load %struct.wlan_iface*, %struct.wlan_iface** %5, align 8
  %44 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 0, i8* %47, align 1
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %36, %29
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i8*, i64*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
