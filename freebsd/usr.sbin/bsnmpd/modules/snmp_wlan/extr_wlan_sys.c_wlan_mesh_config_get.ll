; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_config_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_sys.c_wlan_mesh_config_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i32, i32, i32, i32, i32, i32 }

@IEEE80211_IOC_MESH_TTL = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_AP = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_FWRD = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_PR_METRIC = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_PR_PATH = common dso_local global i32 0, align 4
@wlanMeshPeeringEnabled_true = common dso_local global i32 0, align 4
@wlanMeshPeeringEnabled_false = common dso_local global i32 0, align 4
@wlanMeshForwardingEnabled_true = common dso_local global i32 0, align 4
@wlanMeshForwardingEnabled_false = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"AIRTIME\00", align 1
@wlanMeshMetric_airtime = common dso_local global i32 0, align 4
@wlanMeshMetric_unknown = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"HWMP\00", align 1
@wlanMeshPath_hwmp = common dso_local global i32 0, align 4
@wlanMeshPath_unknown = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlan_mesh_config_get(%struct.wlan_iface* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlan_iface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [32 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.wlan_iface* %0, %struct.wlan_iface** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  store i8* null, i8** %10, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %25 [
    i32 128, label %12
    i32 130, label %14
    i32 133, label %16
    i32 132, label %18
    i32 131, label %21
    i32 129, label %24
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @IEEE80211_IOC_MESH_TTL, align 4
  store i32 %13, i32* %6, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* @IEEE80211_IOC_MESH_AP, align 4
  store i32 %15, i32* %6, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* @IEEE80211_IOC_MESH_FWRD, align 4
  store i32 %17, i32* %6, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load i32, i32* @IEEE80211_IOC_MESH_PR_METRIC, align 4
  store i32 %19, i32* %6, align 4
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8* %20, i8** %10, align 8
  store i64 32, i64* %8, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @IEEE80211_IOC_MESH_PR_PATH, align 4
  store i32 %22, i32* %6, align 4
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  store i8* %23, i8** %10, align 8
  store i64 32, i64* %8, align 8
  br label %26

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %96

26:                                               ; preds = %21, %18, %16, %14, %12
  %27 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %28 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @wlan_ioctl(i32 %29, i32 %30, i32* %7, i8* %31, i64* %8, i32 0)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 -1, i32* %3, align 4
  br label %96

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  switch i32 %36, label %95 [
    i32 128, label %37
    i32 130, label %41
    i32 133, label %53
    i32 132, label %65
    i32 131, label %80
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %40 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %95

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @wlanMeshPeeringEnabled_true, align 4
  %46 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %47 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @wlanMeshPeeringEnabled_false, align 4
  %50 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %51 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %95

53:                                               ; preds = %35
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @wlanMeshForwardingEnabled_true, align 4
  %58 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %59 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @wlanMeshForwardingEnabled_false, align 4
  %62 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %63 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %95

65:                                               ; preds = %35
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i32, i32* @wlanMeshMetric_airtime, align 4
  %73 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %74 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %79

75:                                               ; preds = %65
  %76 = load i32, i32* @wlanMeshMetric_unknown, align 4
  %77 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %78 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %71
  br label %95

80:                                               ; preds = %35
  %81 = load i64, i64* %8, align 8
  %82 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 %81
  store i8 0, i8* %82, align 1
  %83 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32, i32* @wlanMeshPath_hwmp, align 4
  %88 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %89 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %94

90:                                               ; preds = %80
  %91 = load i32, i32* @wlanMeshPath_unknown, align 4
  %92 = load %struct.wlan_iface*, %struct.wlan_iface** %4, align 8
  %93 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %35, %79, %64, %52, %37
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %34, %25, %24
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @wlan_ioctl(i32, i32, i32*, i8*, i64*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
