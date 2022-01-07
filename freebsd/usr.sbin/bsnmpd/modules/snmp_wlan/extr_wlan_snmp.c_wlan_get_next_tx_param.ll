; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_tx_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_tx_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_txparam = type { i32 }
%struct.asn_oid = type { i64 }
%struct.wlan_iface = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_txparam* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i64 0, align 8
@IEEE80211_MODE_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_txparam* (%struct.asn_oid*, i64, %struct.wlan_iface**, i32*)* @wlan_get_next_tx_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_txparam* @wlan_get_next_tx_param(%struct.asn_oid* %0, i64 %1, %struct.wlan_iface** %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_txparam*, align 8
  %6 = alloca %struct.asn_oid*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wlan_iface**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.wlan_iface** %2, %struct.wlan_iface*** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %18 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub nsw i64 %19, %20
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %4
  %24 = call %struct.wlan_iface* (...) @wlan_first_interface()
  %25 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  store %struct.wlan_iface* %24, %struct.wlan_iface** %25, align 8
  br label %26

26:                                               ; preds = %45, %23
  %27 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %28 = load %struct.wlan_iface*, %struct.wlan_iface** %27, align 8
  %29 = icmp ne %struct.wlan_iface* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %32 = load %struct.wlan_iface*, %struct.wlan_iface** %31, align 8
  %33 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RowStatus_active, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %45

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  store i32 1, i32* %39, align 4
  %40 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %41 = load %struct.wlan_iface*, %struct.wlan_iface** %40, align 8
  %42 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %43, align 8
  store %struct.ieee80211_txparam* %44, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %107

45:                                               ; preds = %37
  %46 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %47 = load %struct.wlan_iface*, %struct.wlan_iface** %46, align 8
  %48 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %47)
  %49 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  store %struct.wlan_iface* %48, %struct.wlan_iface** %49, align 8
  br label %26

50:                                               ; preds = %26
  store %struct.ieee80211_txparam* null, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %107

51:                                               ; preds = %4
  %52 = load %struct.asn_oid*, %struct.asn_oid** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i64 @wlan_phy_index_decode(%struct.asn_oid* %52, i64 %53, i8* %16, i32* %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store %struct.ieee80211_txparam* null, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %107

58:                                               ; preds = %51
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = call %struct.wlan_iface* @wlan_find_interface(i8* %16)
  %64 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  store %struct.wlan_iface* %63, %struct.wlan_iface** %64, align 8
  %65 = icmp eq %struct.wlan_iface* %63, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58
  store %struct.ieee80211_txparam* null, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %107

67:                                               ; preds = %62
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @IEEE80211_MODE_MAX, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %75 = load %struct.wlan_iface*, %struct.wlan_iface** %74, align 8
  %76 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %77, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %78, i64 %81
  %83 = getelementptr inbounds %struct.ieee80211_txparam, %struct.ieee80211_txparam* %82, i64 -1
  store %struct.ieee80211_txparam* %83, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %107

84:                                               ; preds = %67
  %85 = load i32*, i32** %9, align 8
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %105, %84
  %87 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %88 = load %struct.wlan_iface*, %struct.wlan_iface** %87, align 8
  %89 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %88)
  %90 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  store %struct.wlan_iface* %89, %struct.wlan_iface** %90, align 8
  %91 = icmp ne %struct.wlan_iface* %89, null
  br i1 %91, label %92, label %106

92:                                               ; preds = %86
  %93 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %94 = load %struct.wlan_iface*, %struct.wlan_iface** %93, align 8
  %95 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RowStatus_active, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.wlan_iface**, %struct.wlan_iface*** %8, align 8
  %101 = load %struct.wlan_iface*, %struct.wlan_iface** %100, align 8
  %102 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %103, align 8
  store %struct.ieee80211_txparam* %104, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %107

105:                                              ; preds = %92
  br label %86

106:                                              ; preds = %86
  store %struct.ieee80211_txparam* null, %struct.ieee80211_txparam** %5, align 8
  store i32 1, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %99, %73, %66, %57, %50, %38
  %108 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load %struct.ieee80211_txparam*, %struct.ieee80211_txparam** %5, align 8
  ret %struct.ieee80211_txparam* %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #2

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #2

declare dso_local i64 @wlan_phy_index_decode(%struct.asn_oid*, i64, i8*, i32*) #2

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
