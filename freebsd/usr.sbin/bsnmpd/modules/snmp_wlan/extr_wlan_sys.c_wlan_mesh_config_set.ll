; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_config_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_config_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32, i32, i32, i32 }

@IEEE80211_IOC_MESH_TTL = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_AP = common dso_local global i32 0, align 4
@wlanMeshPeeringEnabled_true = common dso_local global i32 0, align 4
@wlanMeshForwardingEnabled_true = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_FWRD = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_PR_METRIC = common dso_local global i32 0, align 4
@wlanMeshMetric_airtime = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"AIRTIME\00", align 1
@IEEE80211_IOC_MESH_PR_PATH = common dso_local global i32 0, align 4
@wlanMeshPath_hwmp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HWMP\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_mesh_config_set(%struct.wlan_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [32 x i32], align 16
  %10 = alloca i32*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %61 [
    i32 128, label %12
    i32 129, label %17
    i32 132, label %26
    i32 131, label %35
    i32 130, label %48
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @IEEE80211_IOC_MESH_TTL, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %15 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  br label %62

17:                                               ; preds = %2
  %18 = load i32, i32* @IEEE80211_IOC_MESH_AP, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %20 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @wlanMeshPeeringEnabled_true, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 1, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %17
  br label %62

26:                                               ; preds = %2
  %27 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %28 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @wlanMeshForwardingEnabled_true, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* @IEEE80211_IOC_MESH_FWRD, align 4
  store i32 %34, i32* %6, align 4
  br label %62

35:                                               ; preds = %2
  %36 = load i32, i32* @IEEE80211_IOC_MESH_PR_METRIC, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %38 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @wlanMeshMetric_airtime, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %44 = call i32 @strcpy(i32* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %46

45:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %72

46:                                               ; preds = %42
  %47 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  store i32* %47, i32** %10, align 8
  store i64 128, i64* %8, align 8
  br label %62

48:                                               ; preds = %2
  %49 = load i32, i32* @IEEE80211_IOC_MESH_PR_PATH, align 4
  store i32 %49, i32* %6, align 4
  %50 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %51 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @wlanMeshPath_hwmp, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  %57 = call i32 @strcpy(i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %59

58:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %72

59:                                               ; preds = %55
  %60 = getelementptr inbounds [32 x i32], [32 x i32]* %9, i64 0, i64 0
  store i32* %60, i32** %10, align 8
  store i64 128, i64* %8, align 8
  br label %62

61:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

62:                                               ; preds = %59, %46, %33, %25, %12
  %63 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %64 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = call i64 @wlan_ioctl(i32 %65, i32 %66, i32* %7, i32* %67, i64* %8, i32 1)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %72

71:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %70, %61, %58, %45
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @strcpy(i32*, i8*) #1

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
