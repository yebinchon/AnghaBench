; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_route_set_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_route_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snmp_value = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.wlan_mesh_route = type { i32 }
%struct.wlan_iface = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_NAME = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snmp_context*, %struct.snmp_value*, i32)* @wlan_mesh_route_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_mesh_route_set_status(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.snmp_context*, align 8
  %6 = alloca %struct.snmp_value*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.wlan_mesh_route*, align 8
  %12 = alloca %struct.wlan_iface*, align 8
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
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %22 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %21, i32 0, i32 1
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @wlan_mac_index_decode(i32* %22, i32 %23, i8* %17, i8* %20)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

28:                                               ; preds = %3
  %29 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %30 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %29, i32 0, i32 1
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.wlan_mesh_route* @wlan_mesh_get_route(i32* %30, i32 %31, %struct.wlan_iface** %12)
  store %struct.wlan_mesh_route* %32, %struct.wlan_mesh_route** %11, align 8
  %33 = load %struct.snmp_value*, %struct.snmp_value** %6, align 8
  %34 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %55 [
    i32 129, label %37
    i32 128, label %43
  ]

37:                                               ; preds = %28
  %38 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %11, align 8
  %39 = icmp ne %struct.wlan_mesh_route* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @SNMP_ERR_INCONS_NAME, align 4
  store i32 %41, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

42:                                               ; preds = %37
  br label %57

43:                                               ; preds = %28
  %44 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %11, align 8
  %45 = icmp eq %struct.wlan_mesh_route* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

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
  br label %92

55:                                               ; preds = %28
  %56 = load i32, i32* @SNMP_ERR_INCONS_VALUE, align 4
  store i32 %56, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

57:                                               ; preds = %42
  %58 = call %struct.wlan_iface* @wlan_find_interface(i8* %17)
  store %struct.wlan_iface* %58, %struct.wlan_iface** %12, align 8
  %59 = icmp eq %struct.wlan_iface* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* @SNMP_ERR_INCONS_NAME, align 4
  store i32 %61, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

62:                                               ; preds = %57
  %63 = call %struct.wlan_mesh_route* @wlan_mesh_new_route(i8* %20)
  store %struct.wlan_mesh_route* %63, %struct.wlan_mesh_route** %11, align 8
  %64 = icmp eq %struct.wlan_mesh_route* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %66, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

67:                                               ; preds = %62
  %68 = load %struct.wlan_iface*, %struct.wlan_iface** %12, align 8
  %69 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %11, align 8
  %70 = call i64 @wlan_mesh_add_rtentry(%struct.wlan_iface* %68, %struct.wlan_mesh_route* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %11, align 8
  %74 = call i32 @wlan_mesh_free_route(%struct.wlan_mesh_route* %73)
  %75 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %75, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

76:                                               ; preds = %67
  %77 = load %struct.snmp_context*, %struct.snmp_context** %5, align 8
  %78 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 128, i32* %80, align 4
  %81 = load %struct.wlan_iface*, %struct.wlan_iface** %12, align 8
  %82 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %11, align 8
  %83 = call i64 @wlan_mesh_add_route(%struct.wlan_iface* %81, %struct.wlan_mesh_route* %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %76
  %86 = load %struct.wlan_iface*, %struct.wlan_iface** %12, align 8
  %87 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %11, align 8
  %88 = call i32 @wlan_mesh_delete_route(%struct.wlan_iface* %86, %struct.wlan_mesh_route* %87)
  %89 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

90:                                               ; preds = %76
  %91 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %91, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %92

92:                                               ; preds = %90, %85, %72, %65, %60, %55, %48, %46, %40, %26
  %93 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @wlan_mac_index_decode(i32*, i32, i8*, i8*) #2

declare dso_local %struct.wlan_mesh_route* @wlan_mesh_get_route(i32*, i32, %struct.wlan_iface**) #2

declare dso_local %struct.wlan_iface* @wlan_find_interface(i8*) #2

declare dso_local %struct.wlan_mesh_route* @wlan_mesh_new_route(i8*) #2

declare dso_local i64 @wlan_mesh_add_rtentry(%struct.wlan_iface*, %struct.wlan_mesh_route*) #2

declare dso_local i32 @wlan_mesh_free_route(%struct.wlan_mesh_route*) #2

declare dso_local i64 @wlan_mesh_add_route(%struct.wlan_iface*, %struct.wlan_mesh_route*) #2

declare dso_local i32 @wlan_mesh_delete_route(%struct.wlan_iface*, %struct.wlan_mesh_route*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
