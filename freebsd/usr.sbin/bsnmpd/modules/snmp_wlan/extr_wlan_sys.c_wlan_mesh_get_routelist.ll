; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_get_routelist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_get_routelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32 }
%struct.ieee80211req_mesh_route = type { i32 }
%struct.wlan_mesh_route = type { i32, i32 }

@IEEE80211_MESH_RTCMD_LIST = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_RTCMD = common dso_local global i32 0, align 4
@RowStatus_active = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_mesh_get_routelist(%struct.wlan_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wlan_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [128 x %struct.ieee80211req_mesh_route], align 16
  %9 = alloca %struct.ieee80211req_mesh_route*, align 8
  %10 = alloca %struct.wlan_mesh_route*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %3, align 8
  %11 = load i32, i32* @IEEE80211_MESH_RTCMD_LIST, align 4
  store i32 %11, i32* %6, align 4
  store i64 512, i64* %7, align 8
  %12 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %13 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IEEE80211_IOC_MESH_RTCMD, align 4
  %16 = getelementptr inbounds [128 x %struct.ieee80211req_mesh_route], [128 x %struct.ieee80211req_mesh_route]* %8, i64 0, i64 0
  %17 = call i64 @wlan_ioctl(i32 %14, i32 %15, i32* %6, %struct.ieee80211req_mesh_route* %16, i64* %7, i32 0)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %59

20:                                               ; preds = %1
  %21 = load i64, i64* %7, align 8
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %55, %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %24
  %29 = getelementptr inbounds [128 x %struct.ieee80211req_mesh_route], [128 x %struct.ieee80211req_mesh_route]* %8, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %29, i64 %31
  store %struct.ieee80211req_mesh_route* %32, %struct.ieee80211req_mesh_route** %9, align 8
  %33 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %9, align 8
  %34 = getelementptr inbounds %struct.ieee80211req_mesh_route, %struct.ieee80211req_mesh_route* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.wlan_mesh_route* @wlan_mesh_new_route(i32 %35)
  store %struct.wlan_mesh_route* %36, %struct.wlan_mesh_route** %10, align 8
  %37 = icmp eq %struct.wlan_mesh_route* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %59

39:                                               ; preds = %28
  %40 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %10, align 8
  %41 = getelementptr inbounds %struct.wlan_mesh_route, %struct.wlan_mesh_route* %40, i32 0, i32 1
  %42 = load %struct.ieee80211req_mesh_route*, %struct.ieee80211req_mesh_route** %9, align 8
  %43 = call i32 @memcpy(i32* %41, %struct.ieee80211req_mesh_route* %42, i32 4)
  %44 = load i32, i32* @RowStatus_active, align 4
  %45 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %10, align 8
  %46 = getelementptr inbounds %struct.wlan_mesh_route, %struct.wlan_mesh_route* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.wlan_iface*, %struct.wlan_iface** %3, align 8
  %48 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %10, align 8
  %49 = call i64 @wlan_mesh_add_rtentry(%struct.wlan_iface* %47, %struct.wlan_mesh_route* %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load %struct.wlan_mesh_route*, %struct.wlan_mesh_route** %10, align 8
  %53 = call i32 @wlan_mesh_free_route(%struct.wlan_mesh_route* %52)
  br label %54

54:                                               ; preds = %51, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %24

58:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %38, %19
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, %struct.ieee80211req_mesh_route*, i64*, i32) #1

declare dso_local %struct.wlan_mesh_route* @wlan_mesh_new_route(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.ieee80211req_mesh_route*, i32) #1

declare dso_local i64 @wlan_mesh_add_rtentry(%struct.wlan_iface*, %struct.wlan_mesh_route*) #1

declare dso_local i32 @wlan_mesh_free_route(%struct.wlan_mesh_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
