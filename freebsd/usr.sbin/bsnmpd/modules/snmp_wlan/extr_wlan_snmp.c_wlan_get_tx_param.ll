; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_tx_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_tx_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txparam = type { i32 }
%struct.asn_oid = type { i32 }
%struct.wlan_iface = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_txparam* (%struct.asn_oid*, i32, %struct.wlan_iface**, i64*)* @wlan_get_tx_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_txparam* @wlan_get_tx_param(%struct.asn_oid* %0, i32 %1, %struct.wlan_iface** %2, i64* %3) #0 {
  %5 = alloca %struct.ieee80211_txparam*, align 8
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlan_iface**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.wlan_iface** %2, %struct.wlan_iface*** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i64*, i64** %9, align 8
  %20 = call i64 @wlan_phy_index_decode(%struct.asn_oid* %17, i32 %18, i8* %16, i64* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store %struct.ieee80211_txparam* null, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %49

23:                                               ; preds = %4
  %24 = call %struct.wlan_iface* @wlan_find_interface(i8* %16)
  %25 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  store %struct.wlan_iface* %24, %struct.wlan_iface** %25, align 8
  %26 = icmp eq %struct.wlan_iface* %24, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.ieee80211_txparam* null, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %49

28:                                               ; preds = %23
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load i64*, i64** %9, align 8
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IEEE80211_MODE_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %28
  store %struct.ieee80211_txparam* null, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %49

38:                                               ; preds = %32
  %39 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %40 = load %struct.wlan_iface*, %struct.wlan_iface** %39, align 8
  %41 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %9, align 8
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %43, %45
  %47 = sub nsw i64 %46, 1
  %48 = inttoptr i64 %47 to %struct.ieee80211_txparam*
  store %struct.ieee80211_txparam* %48, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %49

49:                                               ; preds = %38, %37, %27, %22
  %50 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %50)
  %51 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %5, align 8
  ret %struct.ieee80211_txparam* %51
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
