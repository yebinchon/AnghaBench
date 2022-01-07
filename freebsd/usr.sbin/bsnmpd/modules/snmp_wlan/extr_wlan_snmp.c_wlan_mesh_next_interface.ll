; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_next_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_mesh_next_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64, i64 }

@WlanIfaceOperatingModeType_meshPoint = common dso_local global i64 0, align 8
@RowStatus_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wlan_iface* (%struct.wlan_iface*)* @wlan_mesh_next_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wlan_iface* @wlan_mesh_next_interface(%struct.wlan_iface* %0) #0 {
  %2 = alloca %struct.wlan_iface*, align 8
  %3 = alloca %struct.wlan_iface*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %6 = call %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface* %5)
  store %struct.wlan_iface* %6, %struct.wlan_iface** %3, align 8
  %7 = icmp ne %struct.wlan_iface* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %10 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %16 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @RowStatus_active, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %23

21:                                               ; preds = %14, %8
  %22 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  store %struct.wlan_iface* %22, %struct.wlan_iface** %2, align 8
  br label %4

23:                                               ; preds = %20, %4
  %24 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  ret %struct.wlan_iface* %24
}

declare dso_local %struct.wlan_iface* @wlan_next_interface(%struct.wlan_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
