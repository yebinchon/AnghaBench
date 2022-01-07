; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_peer = type { i32 }
%struct.asn_oid = type { i64 }
%struct.wlan_iface = type { i64, i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_meshPoint = common dso_local global i64 0, align 8
@wp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_peer* (%struct.asn_oid*, i64, %struct.wlan_iface**)* @wlan_get_next_peer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_peer* @wlan_get_next_peer(%struct.asn_oid* %0, i64 %1, %struct.wlan_iface** %2) #0 {
  %4 = alloca %struct.wlan_peer*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wlan_iface**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wlan_peer*, align 8
  %12 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wlan_iface** %2, %struct.wlan_iface*** %7, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %20 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %21 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub nsw i64 %22, %23
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %57

26:                                               ; preds = %3
  %27 = call %struct.wlan_iface* (...) @wlan_first_interface()
  %28 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %27, %struct.wlan_iface** %28, align 8
  br label %29

29:                                               ; preds = %51, %26
  %30 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %30, align 8
  %32 = icmp ne %struct.wlan_iface* %31, null
  br i1 %32, label %33, label %56

33:                                               ; preds = %29
  %34 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %35 = load %struct.wlan_iface*, %struct.wlan_iface** %34, align 8
  %36 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %43 = load %struct.wlan_iface*, %struct.wlan_iface** %42, align 8
  %44 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %43, i32 0, i32 1
  %45 = call %struct.wlan_peer* @SLIST_FIRST(i32* %44)
  store %struct.wlan_peer* %45, %struct.wlan_peer** %11, align 8
  %46 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  %47 = icmp ne %struct.wlan_peer* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  store %struct.wlan_peer* %49, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %104

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %53 = load %struct.wlan_iface*, %struct.wlan_iface** %52, align 8
  %54 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %53)
  %55 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %54, %struct.wlan_iface** %55, align 8
  br label %29

56:                                               ; preds = %29
  store %struct.wlan_peer* null, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %104

57:                                               ; preds = %3
  %58 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i64 @wlan_mac_index_decode(%struct.asn_oid* %58, i64 %59, i8* %16, i8* %19)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = call %struct.wlan_iface* @wlan_find_interface(i8* %16)
  %64 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %63, %struct.wlan_iface** %64, align 8
  %65 = icmp eq %struct.wlan_iface* %63, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %68 = load %struct.wlan_iface*, %struct.wlan_iface** %67, align 8
  %69 = call %struct.wlan_peer* @wlan_find_peer(%struct.wlan_iface* %68, i8* %19)
  store %struct.wlan_peer* %69, %struct.wlan_peer** %11, align 8
  %70 = icmp eq %struct.wlan_peer* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %66, %62, %57
  store %struct.wlan_peer* null, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %104

72:                                               ; preds = %66
  %73 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  %74 = load i32, i32* @wp, align 4
  %75 = call %struct.wlan_peer* @SLIST_NEXT(%struct.wlan_peer* %73, i32 %74)
  store %struct.wlan_peer* %75, %struct.wlan_peer** %11, align 8
  %76 = icmp ne %struct.wlan_peer* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  store %struct.wlan_peer* %78, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %104

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %101, %93, %79
  %81 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %82 = load %struct.wlan_iface*, %struct.wlan_iface** %81, align 8
  %83 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %82)
  %84 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %83, %struct.wlan_iface** %84, align 8
  %85 = icmp ne %struct.wlan_iface* %83, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %80
  %87 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %88 = load %struct.wlan_iface*, %struct.wlan_iface** %87, align 8
  %89 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  br label %80

94:                                               ; preds = %86
  %95 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %96 = load %struct.wlan_iface*, %struct.wlan_iface** %95, align 8
  %97 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %96, i32 0, i32 1
  %98 = call %struct.wlan_peer* @SLIST_FIRST(i32* %97)
  store %struct.wlan_peer* %98, %struct.wlan_peer** %11, align 8
  %99 = icmp ne %struct.wlan_peer* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %102

101:                                              ; preds = %94
  br label %80

102:                                              ; preds = %100, %80
  %103 = load %struct.wlan_peer*, %struct.wlan_peer** %11, align 8
  store %struct.wlan_peer* %103, %struct.wlan_peer** %4, align 8
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %102, %77, %71, %56, %48
  %105 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load %struct.wlan_peer*, %struct.wlan_peer** %4, align 8
  ret %struct.wlan_peer* %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #2

declare dso_local %struct.wlan_peer* @SLIST_FIRST(i32*) #2

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #2

declare dso_local i64 @wlan_mac_index_decode(%struct.asn_oid*, i64, i8*, i8*) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

declare dso_local %struct.wlan_peer* @wlan_find_peer(%struct.wlan_iface*, i8*) #2

declare dso_local %struct.wlan_peer* @SLIST_NEXT(%struct.wlan_peer*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
