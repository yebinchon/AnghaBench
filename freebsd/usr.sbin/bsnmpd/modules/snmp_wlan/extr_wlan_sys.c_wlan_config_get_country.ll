; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_country.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_config_get_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32*, i32, i32 }
%struct.ieee80211_regdomain = type { i32, i32*, i32 }

@IEEE80211_IOC_REGDOMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*)* @wlan_config_get_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_config_get_country(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.ieee80211_regdomain, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = call i32 @memset(%struct.ieee80211_regdomain* %6, i32 0, i32 24)
  store i64 24, i64* %5, align 8
  %8 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %9 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @IEEE80211_IOC_REGDOMAIN, align 4
  %12 = call i64 @wlan_ioctl(i32 %10, i32 %11, i32* %4, %struct.ieee80211_regdomain* %6, i64* %5, i32 0)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %43

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %6, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wlan_regdomain_to_snmp(i32 %17)
  %19 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %20 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %6, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %26 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %24, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %6, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %34 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 %32, i32* %36, align 4
  %37 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 %38, i32* %42, align 4
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %15, %14
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @memset(%struct.ieee80211_regdomain*, i32, i32) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211_regdomain*, i64*, i32) #1

declare dso_local i32 @wlan_regdomain_to_snmp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
