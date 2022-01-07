; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_scanr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_scanr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_scan_result = type { i32 }
%struct.asn_oid = type { i64 }
%struct.wlan_iface = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_NWID_LEN = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@wsr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_scan_result* (%struct.asn_oid*, i64, %struct.wlan_iface**)* @wlan_get_next_scanr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_scan_result* @wlan_get_next_scanr(%struct.asn_oid* %0, i64 %1, %struct.wlan_iface** %2) #0 {
  %4 = alloca %struct.wlan_scan_result*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wlan_iface**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wlan_scan_result*, align 8
  %13 = alloca i32, align 4
  store %struct.asn_oid* %0, %struct.asn_oid** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.wlan_iface** %2, %struct.wlan_iface*** %7, align 8
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @IEEE80211_NWID_LEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %25 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %26 = getelementptr inbounds %struct.asn_oid, %struct.asn_oid* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %3
  %32 = call %struct.wlan_iface* (...) @wlan_first_interface()
  %33 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %32, %struct.wlan_iface** %33, align 8
  br label %34

34:                                               ; preds = %48, %31
  %35 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %36 = load %struct.wlan_iface*, %struct.wlan_iface** %35, align 8
  %37 = icmp ne %struct.wlan_iface* %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %40 = load %struct.wlan_iface*, %struct.wlan_iface** %39, align 8
  %41 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %40, i32 0, i32 0
  %42 = call %struct.wlan_scan_result* @SLIST_FIRST(i32* %41)
  store %struct.wlan_scan_result* %42, %struct.wlan_scan_result** %12, align 8
  %43 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %12, align 8
  %44 = icmp ne %struct.wlan_scan_result* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %12, align 8
  store %struct.wlan_scan_result* %46, %struct.wlan_scan_result** %4, align 8
  store i32 1, i32* %13, align 4
  br label %93

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %50 = load %struct.wlan_iface*, %struct.wlan_iface** %49, align 8
  %51 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %50)
  %52 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %51, %struct.wlan_iface** %52, align 8
  br label %34

53:                                               ; preds = %34
  store %struct.wlan_scan_result* null, %struct.wlan_scan_result** %4, align 8
  store i32 1, i32* %13, align 4
  br label %93

54:                                               ; preds = %3
  %55 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @wlan_scanr_index_decode(%struct.asn_oid* %55, i64 %56, i8* %17, i32* %21, i32* %24)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %54
  %60 = call %struct.wlan_iface* @wlan_find_interface(i8* %17)
  %61 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %60, %struct.wlan_iface** %61, align 8
  %62 = icmp eq %struct.wlan_iface* %60, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %65 = load %struct.wlan_iface*, %struct.wlan_iface** %64, align 8
  %66 = call %struct.wlan_scan_result* @wlan_scan_find_result(%struct.wlan_iface* %65, i32* %21, i32* %24)
  store %struct.wlan_scan_result* %66, %struct.wlan_scan_result** %12, align 8
  %67 = icmp eq %struct.wlan_scan_result* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %59, %54
  store %struct.wlan_scan_result* null, %struct.wlan_scan_result** %4, align 8
  store i32 1, i32* %13, align 4
  br label %93

69:                                               ; preds = %63
  %70 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %12, align 8
  %71 = load i32, i32* @wsr, align 4
  %72 = call %struct.wlan_scan_result* @SLIST_NEXT(%struct.wlan_scan_result* %70, i32 %71)
  store %struct.wlan_scan_result* %72, %struct.wlan_scan_result** %12, align 8
  %73 = icmp ne %struct.wlan_scan_result* %72, null
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %12, align 8
  store %struct.wlan_scan_result* %75, %struct.wlan_scan_result** %4, align 8
  store i32 1, i32* %13, align 4
  br label %93

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %90, %76
  %78 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %79 = load %struct.wlan_iface*, %struct.wlan_iface** %78, align 8
  %80 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %79)
  %81 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %80, %struct.wlan_iface** %81, align 8
  %82 = icmp ne %struct.wlan_iface* %80, null
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %85 = load %struct.wlan_iface*, %struct.wlan_iface** %84, align 8
  %86 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %85, i32 0, i32 0
  %87 = call %struct.wlan_scan_result* @SLIST_FIRST(i32* %86)
  store %struct.wlan_scan_result* %87, %struct.wlan_scan_result** %12, align 8
  %88 = icmp ne %struct.wlan_scan_result* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %91

90:                                               ; preds = %83
  br label %77

91:                                               ; preds = %89, %77
  %92 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %12, align 8
  store %struct.wlan_scan_result* %92, %struct.wlan_scan_result** %4, align 8
  store i32 1, i32* %13, align 4
  br label %93

93:                                               ; preds = %91, %74, %68, %53, %45
  %94 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %94)
  %95 = load %struct.wlan_scan_result*, %struct.wlan_scan_result** %4, align 8
  ret %struct.wlan_scan_result* %95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #2

declare dso_local %struct.wlan_scan_result* @SLIST_FIRST(i32*) #2

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #2

declare dso_local i64 @wlan_scanr_index_decode(%struct.asn_oid*, i64, i8*, i32*, i32*) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

declare dso_local %struct.wlan_scan_result* @wlan_scan_find_result(%struct.wlan_iface*, i32*, i32*) #2

declare dso_local %struct.wlan_scan_result* @SLIST_NEXT(%struct.wlan_scan_result*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
