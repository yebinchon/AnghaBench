; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_acl_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_get_next_acl_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_mac_mac = type { i32 }
%struct.asn_oid = type { i64 }
%struct.wlan_iface = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@wm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_mac_mac* (%struct.asn_oid*, i64, %struct.wlan_iface**)* @wlan_get_next_acl_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_mac_mac* @wlan_get_next_acl_mac(%struct.asn_oid* %0, i64 %1, %struct.wlan_iface** %2) #0 {
  %4 = alloca %struct.wlan_mac_mac*, align 8
  %5 = alloca %struct.asn_oid*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.wlan_iface**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wlan_mac_mac*, align 8
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
  br i1 %25, label %26, label %49

26:                                               ; preds = %3
  %27 = call %struct.wlan_iface* (...) @wlan_first_interface()
  %28 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %27, %struct.wlan_iface** %28, align 8
  br label %29

29:                                               ; preds = %43, %26
  %30 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %30, align 8
  %32 = icmp ne %struct.wlan_iface* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %35 = load %struct.wlan_iface*, %struct.wlan_iface** %34, align 8
  %36 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %35, i32 0, i32 0
  %37 = call %struct.wlan_mac_mac* @SLIST_FIRST(i32* %36)
  store %struct.wlan_mac_mac* %37, %struct.wlan_mac_mac** %11, align 8
  %38 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %11, align 8
  %39 = icmp ne %struct.wlan_mac_mac* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %11, align 8
  store %struct.wlan_mac_mac* %41, %struct.wlan_mac_mac** %4, align 8
  store i32 1, i32* %12, align 4
  br label %88

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %45 = load %struct.wlan_iface*, %struct.wlan_iface** %44, align 8
  %46 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %45)
  %47 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %46, %struct.wlan_iface** %47, align 8
  br label %29

48:                                               ; preds = %29
  store %struct.wlan_mac_mac* null, %struct.wlan_mac_mac** %4, align 8
  store i32 1, i32* %12, align 4
  br label %88

49:                                               ; preds = %3
  %50 = load %struct.asn_oid*, %struct.asn_oid** %5, align 8
  %51 = load i64, i64* %6, align 8
  %52 = call i64 @wlan_mac_index_decode(%struct.asn_oid* %50, i64 %51, i8* %16, i8* %19)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = call %struct.wlan_iface* @wlan_find_interface(i8* %16)
  %56 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %55, %struct.wlan_iface** %56, align 8
  %57 = icmp eq %struct.wlan_iface* %55, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %60 = load %struct.wlan_iface*, %struct.wlan_iface** %59, align 8
  %61 = call %struct.wlan_mac_mac* @wlan_mac_find_mac(%struct.wlan_iface* %60, i8* %19)
  store %struct.wlan_mac_mac* %61, %struct.wlan_mac_mac** %11, align 8
  %62 = icmp eq %struct.wlan_mac_mac* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %54, %49
  store %struct.wlan_mac_mac* null, %struct.wlan_mac_mac** %4, align 8
  store i32 1, i32* %12, align 4
  br label %88

64:                                               ; preds = %58
  %65 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %11, align 8
  %66 = load i32, i32* @wm, align 4
  %67 = call %struct.wlan_mac_mac* @SLIST_NEXT(%struct.wlan_mac_mac* %65, i32 %66)
  store %struct.wlan_mac_mac* %67, %struct.wlan_mac_mac** %11, align 8
  %68 = icmp ne %struct.wlan_mac_mac* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %11, align 8
  store %struct.wlan_mac_mac* %70, %struct.wlan_mac_mac** %4, align 8
  store i32 1, i32* %12, align 4
  br label %88

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %85, %71
  %73 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %74 = load %struct.wlan_iface*, %struct.wlan_iface** %73, align 8
  %75 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %74)
  %76 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  store %struct.wlan_iface* %75, %struct.wlan_iface** %76, align 8
  %77 = icmp ne %struct.wlan_iface* %75, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.wlan_iface**, %struct.wlan_iface*** %7, align 8
  %80 = load %struct.wlan_iface*, %struct.wlan_iface** %79, align 8
  %81 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %80, i32 0, i32 0
  %82 = call %struct.wlan_mac_mac* @SLIST_FIRST(i32* %81)
  store %struct.wlan_mac_mac* %82, %struct.wlan_mac_mac** %11, align 8
  %83 = icmp ne %struct.wlan_mac_mac* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %86

85:                                               ; preds = %78
  br label %72

86:                                               ; preds = %84, %72
  %87 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %11, align 8
  store %struct.wlan_mac_mac* %87, %struct.wlan_mac_mac** %4, align 8
  store i32 1, i32* %12, align 4
  br label %88

88:                                               ; preds = %86, %69, %63, %48, %40
  %89 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %4, align 8
  ret %struct.wlan_mac_mac* %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.wlan_iface* @wlan_first_interface(...) #2

declare dso_local %struct.wlan_mac_mac* @SLIST_FIRST(i32*) #2

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #2

declare dso_local i64 @wlan_mac_index_decode(%struct.asn_oid*, i64, i8*, i8*) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

declare dso_local %struct.wlan_mac_mac* @wlan_mac_find_mac(%struct.wlan_iface*, i8*) #2

declare dso_local %struct.wlan_mac_mac* @SLIST_NEXT(%struct.wlan_mac_mac*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
