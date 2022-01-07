; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_wepmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_get_wepmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i8*, i64, i32 }

@IEEE80211_IOC_WEP = common dso_local global i32 0, align 4
@IEEE80211_WEP_NOSUP = common dso_local global i32 0, align 4
@wlanWepMode_off = common dso_local global i8* null, align 8
@wlanWepMode_on = common dso_local global i8* null, align 8
@wlanWepMode_mixed = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_get_wepmode(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %6 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %7 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IEEE80211_IOC_WEP, align 4
  %10 = call i64 @wlan_ioctl(i32 %8, i32 %9, i32* %4, i32* null, i64* %5, i32 0)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IEEE80211_WEP_NOSUP, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12, %1
  %17 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %18 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load i8*, i8** @wlanWepMode_off, align 8
  %20 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %21 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %23 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  store i32 -1, i32* %2, align 4
  br label %42

24:                                               ; preds = %12
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %26 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %4, align 4
  switch i32 %27, label %37 [
    i32 128, label %28
    i32 130, label %32
    i32 129, label %36
  ]

28:                                               ; preds = %24
  %29 = load i8*, i8** @wlanWepMode_on, align 8
  %30 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %31 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  br label %41

32:                                               ; preds = %24
  %33 = load i8*, i8** @wlanWepMode_mixed, align 8
  %34 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %35 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  br label %41

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %24, %36
  %38 = load i8*, i8** @wlanWepMode_off, align 8
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %37, %32, %28
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %16
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
