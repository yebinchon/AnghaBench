; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_bssid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@IEEE80211_IOC_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*)* @wlan_config_get_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_get_bssid(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %16 = call i32 @memset(i8* %14, i32 0, i32 %15)
  %17 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %18 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_IOC_BSSID, align 4
  %21 = call i64 @wlan_ioctl(i32 %19, i32 %20, i32* %4, i8* %14, i64* %5, i32 0)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %35

29:                                               ; preds = %23
  %30 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %31 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %34 = call i32 @memcpy(i32 %32, i8* %14, i32 %33)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %35

35:                                               ; preds = %29, %28
  %36 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %36)
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i8*, i64*, i32) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
