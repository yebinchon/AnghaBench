; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_acl_mac_set_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_acl_mac_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snmp_value = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wlan_iface = type { i32 }
%struct.wlan_mac_mac = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_NAME = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_value*, i32)* @wlan_acl_mac_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_acl_mac_set_status(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wlan_iface*, align 8
  %12 = alloca %struct.wlan_mac_mac*, align 8
  %13 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %5, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %22 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %21, i32 0, i32 1
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @wlan_mac_index_decode(i32* %22, i32 %23, i8* %17, i32* %20)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

28:                                               ; preds = %3
  %29 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %30 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %29, i32 0, i32 1
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.wlan_mac_mac* @wlan_get_acl_mac(i32* %30, i32 %31, %struct.wlan_iface** %11)
  store %struct.wlan_mac_mac* %32, %struct.wlan_mac_mac** %12, align 8
  %33 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %34 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 129, label %37
    i32 128, label %43
  ]

37:                                               ; preds = %28
  %38 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %12, align 8
  %39 = icmp ne %struct.wlan_mac_mac* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SNMP_ERR_INCONS_NAME, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

42:                                               ; preds = %37
  br label %57

43:                                               ; preds = %28
  %44 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %12, align 8
  %45 = icmp eq %struct.wlan_mac_mac* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

48:                                               ; preds = %43
  %49 = load i32, i32* @RowStatus_active, align 4
  %50 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %51 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

55:                                               ; preds = %28
  %56 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

57:                                               ; preds = %42
  %58 = load %struct.wlan_iface*, %struct.wlan_iface** %11, align 8
  %59 = icmp eq %struct.wlan_iface* %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load %struct.wlan_iface*, %struct.wlan_iface** %11, align 8
  %62 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

67:                                               ; preds = %60
  %68 = call %struct.wlan_mac_mac* @wlan_mac_new_mac(i32* %20)
  store %struct.wlan_mac_mac* %68, %struct.wlan_mac_mac** %12, align 8
  %69 = icmp eq %struct.wlan_mac_mac* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %71, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

72:                                               ; preds = %67
  %73 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %74 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 128, i32* %76, align 4
  %77 = load %struct.wlan_iface*, %struct.wlan_iface** %11, align 8
  %78 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %12, align 8
  %79 = call i64 @wlan_mac_add_mac(%struct.wlan_iface* %77, %struct.wlan_mac_mac* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %12, align 8
  %83 = call i32 @wlan_mac_free_mac(%struct.wlan_mac_mac* %82)
  %84 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %84, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

85:                                               ; preds = %72
  %86 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %87 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 128, i32* %89, align 4
  %90 = load %struct.wlan_iface*, %struct.wlan_iface** %11, align 8
  %91 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %12, align 8
  %92 = call i64 @wlan_add_mac_acl_mac(%struct.wlan_iface* %90, %struct.wlan_mac_mac* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load %struct.wlan_iface*, %struct.wlan_iface** %11, align 8
  %96 = load %struct.wlan_mac_mac*, %struct.wlan_mac_mac** %12, align 8
  %97 = call i32 @wlan_mac_delete_mac(%struct.wlan_iface* %95, %struct.wlan_mac_mac* %96)
  %98 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %98, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

99:                                               ; preds = %85
  %100 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %100, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %101

101:                                              ; preds = %99, %94, %81, %70, %65, %55, %48, %46, %40, %26
  %102 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wlan_mac_index_decode(i32*, i32, i8*, i32*) #2

declare dso_local %struct.wlan_mac_mac* @wlan_get_acl_mac(i32*, i32, %struct.wlan_iface**) #2

declare dso_local %struct.wlan_mac_mac* @wlan_mac_new_mac(i32*) #2

declare dso_local i64 @wlan_mac_add_mac(%struct.wlan_iface*, %struct.wlan_mac_mac*) #2

declare dso_local i32 @wlan_mac_free_mac(%struct.wlan_mac_mac*) #2

declare dso_local i64 @wlan_add_mac_acl_mac(%struct.wlan_iface*, %struct.wlan_mac_mac*) #2

declare dso_local i32 @wlan_mac_delete_mac(%struct.wlan_iface*, %struct.wlan_mac_mac*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
