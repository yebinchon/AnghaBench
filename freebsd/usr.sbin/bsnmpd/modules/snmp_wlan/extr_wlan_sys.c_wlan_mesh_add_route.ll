; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_add_route.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_add_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }
%struct.wlan_mesh_route = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_MESH_RTCMD_ADD = common dso_local global i32 0, align 4
@IEEE80211_ADDR_LEN = common dso_local global i64 0, align 8
@IEEE80211_IOC_MESH_RTCMD = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_mesh_add_route(%struct.wlan_iface* %0, %struct.wlan_mesh_route* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca %struct.wlan_mesh_route*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store %struct.wlan_mesh_route* %1, %struct.wlan_mesh_route** %5, align 8
  %8 = load i32, i32* @IEEE80211_MESH_RTCMD_ADD, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* @IEEE80211_ADDR_LEN, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %11 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IEEE80211_IOC_MESH_RTCMD, align 4
  %14 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %5, align 8
  %15 = getelementptr inbounds %struct.wlan_mesh_route, %struct.wlan_mesh_route* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @wlan_ioctl(i32 %12, i32 %13, i32* %6, i32 %17, i64* %7, i32 1)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @RowStatus_active, align 4
  %23 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %5, align 8
  %24 = getelementptr inbounds %struct.wlan_mesh_route, %struct.wlan_mesh_route* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %20
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
