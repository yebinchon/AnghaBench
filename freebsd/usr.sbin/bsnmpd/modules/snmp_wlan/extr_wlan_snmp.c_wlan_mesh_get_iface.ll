; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_get_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_get_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64 }
%struct.asn_oid = type { i32 }

@WlanIfaceOperatingModeType_meshPoint = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_iface* (%struct.asn_oid*, i32)* @wlan_mesh_get_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_iface* @wlan_mesh_get_iface(%struct.asn_oid* %0, i32 %1) #0 {
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca %struct.asn_oid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlan_iface*, align 8
  store %struct.asn_oid* %0, %struct.asn_oid** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.asn_oid*, %struct.asn_oid** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.wlan_iface* @wlan_get_interface(%struct.asn_oid* %7, i32 %8)
  store %struct.wlan_iface* %9, %struct.wlan_iface** %6, align 8
  %10 = icmp eq %struct.wlan_iface* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.wlan_iface* null, %struct.wlan_iface** %3, align 8
  br label %21

12:                                               ; preds = %2
  %13 = load %struct.wlan_iface*, %struct.wlan_iface** %6, align 8
  %14 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store %struct.wlan_iface* null, %struct.wlan_iface** %3, align 8
  br label %21

19:                                               ; preds = %12
  %20 = load %struct.wlan_iface*, %struct.wlan_iface** %6, align 8
  store %struct.wlan_iface* %20, %struct.wlan_iface** %3, align 8
  br label %21

21:                                               ; preds = %19, %18, %11
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  ret %struct.wlan_iface* %22
}

declare dso_local %struct.wlan_iface* @wlan_get_interface(%struct.asn_oid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
