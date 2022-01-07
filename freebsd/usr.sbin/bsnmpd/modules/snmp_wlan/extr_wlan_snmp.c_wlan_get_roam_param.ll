; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_roam_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_roam_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_roamparam = type { i32 }
%struct.asn_oid = type { i32 }
%struct.wlan_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_roamparam* (%struct.asn_oid*, i32, %struct.wlan_iface**)* @wlan_get_roam_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_roamparam* @wlan_get_roam_param(%struct.asn_oid* %0, i32 %1, %struct.wlan_iface** %2) #0 {
  %4 = alloca %struct.ieee80211_roamparam*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wlan_iface**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wlan_iface** %2, %struct.wlan_iface*** %7, align 8
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @wlan_phy_index_decode(%struct.asn_oid* %16, i32 %17, i8* %15, i64* %8)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.ieee80211_roamparam* null, %struct.ieee80211_roamparam** %4, align 8
  store i32 1, i32* %11, align 4
  br label %44

21:                                               ; preds = %3
  %22 = call %struct.wlan_iface* @wlan_find_interface(i8* %15)
  %23 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %22, %struct.wlan_iface** %23, align 8
  %24 = icmp eq %struct.wlan_iface* %22, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.ieee80211_roamparam* null, %struct.ieee80211_roamparam** %4, align 8
  store i32 1, i32* %11, align 4
  br label %44

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @IEEE80211_MODE_MAX, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26
  store %struct.ieee80211_roamparam* null, %struct.ieee80211_roamparam** %4, align 8
  store i32 1, i32* %11, align 4
  br label %44

34:                                               ; preds = %29
  %35 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %36 = load %struct.wlan_iface*, %struct.wlan_iface** %35, align 8
  %37 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = add nsw i64 %39, %40
  %42 = sub nsw i64 %41, 1
  %43 = inttoptr i64 %42 to %struct.ieee80211_roamparam*
  store %struct.ieee80211_roamparam* %43, %struct.ieee80211_roamparam** %4, align 8
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %34, %33, %25, %20
  %45 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %4, align 8
  ret %struct.ieee80211_roamparam* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wlan_phy_index_decode(%struct.asn_oid*, i32, i8*, i64*) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
