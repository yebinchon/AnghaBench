; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_dssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_dssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i8*, i32 }

@IEEE80211_NWID_LEN = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_meshPoint = common dso_local global i64 0, align 8
@IEEE80211_IOC_MESH_ID = common dso_local global i32 0, align 4
@IEEE80211_IOC_SSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_config_get_dssid(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i32 -1, i32* %4, align 4
  %9 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %13 = add nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = call i32 @memset(i8* %16, i32 0, i32 %18)
  %20 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %21 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %24 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = load i32, i32* @IEEE80211_IOC_MESH_ID, align 4
  br label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @IEEE80211_IOC_SSID, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i64 @wlan_ioctl(i32 %22, i32 %33, i32* %4, i8* %16, i64* %5, i32 0)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %56

37:                                               ; preds = %32
  %38 = load i64, i64* %5, align 8
  %39 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ugt i64 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %47 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @memcpy(i8* %48, i8* %16, i64 %49)
  %51 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %52 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %56

56:                                               ; preds = %45, %36
  %57 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %57)
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i8*, i64*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
