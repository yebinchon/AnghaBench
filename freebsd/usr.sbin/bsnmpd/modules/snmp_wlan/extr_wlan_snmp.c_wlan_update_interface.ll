; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_update_interface.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_wlan/extr_wlan_snmp.c_wlan_update_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlan_iface = type { i64 }

@LEAF_wlanIfacePacketBurst = common dso_local global i32 0, align 4
@LEAF_wlanIfaceTdmaBeaconInterval = common dso_local global i32 0, align 4
@WlanIfaceOperatingModeType_meshPoint = common dso_local global i64 0, align 8
@LEAF_wlanMeshTTL = common dso_local global i32 0, align 4
@LEAF_wlanMeshPath = common dso_local global i32 0, align 4
@LEAF_wlanHWMPRootMode = common dso_local global i32 0, align 4
@LEAF_wlanHWMPMaxHops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wlan_iface*)* @wlan_update_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlan_update_interface(%struct.wlan_iface* %0) #0 {
  %2 = alloca %struct.wlan_iface*, align 8
  %3 = alloca i32, align 4
  store %struct.wlan_iface* %0, %struct.wlan_iface** %2, align 8
  %4 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %5 = call i32 @wlan_config_state(%struct.wlan_iface* %4, i32 0)
  %6 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %7 = call i32 @wlan_get_driver_caps(%struct.wlan_iface* %6)
  %8 = load i32, i32* @LEAF_wlanIfacePacketBurst, align 4
  store i32 %8, i32* %3, align 4
  br label %9

9:                                                ; preds = %17, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @LEAF_wlanIfaceTdmaBeaconInterval, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @wlan_config_get_ioctl(%struct.wlan_iface* %14, i32 %15)
  br label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %9

20:                                               ; preds = %9
  %21 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %22 = call i32 @wlan_get_stats(%struct.wlan_iface* %21)
  %23 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %24 = call i32 @wlan_get_channel_list(%struct.wlan_iface* %23)
  %25 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %26 = call i32 @wlan_get_roam_params(%struct.wlan_iface* %25)
  %27 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %28 = call i32 @wlan_get_tx_params(%struct.wlan_iface* %27)
  %29 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %30 = call i32 @wlan_get_scan_results(%struct.wlan_iface* %29)
  %31 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %32 = call i32 @wlan_get_wepmode(%struct.wlan_iface* %31)
  %33 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %34 = call i32 @wlan_get_weptxkey(%struct.wlan_iface* %33)
  %35 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %36 = call i32 @wlan_get_mac_policy(%struct.wlan_iface* %35)
  %37 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %38 = call i32 @wlan_get_mac_acl_macs(%struct.wlan_iface* %37)
  %39 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %40 = call i32 @wlan_get_peerinfo(%struct.wlan_iface* %39)
  %41 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %42 = getelementptr inbounds %struct.wlan_iface, %struct.wlan_iface* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WlanIfaceOperatingModeType_meshPoint, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %75

46:                                               ; preds = %20
  %47 = load i32, i32* @LEAF_wlanMeshTTL, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %56, %46
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @LEAF_wlanMeshPath, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @wlan_mesh_config_get(%struct.wlan_iface* %53, i32 %54)
  br label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %48

59:                                               ; preds = %48
  %60 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %61 = call i32 @wlan_mesh_get_routelist(%struct.wlan_iface* %60)
  %62 = load i32, i32* @LEAF_wlanHWMPRootMode, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %71, %59
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @LEAF_wlanHWMPMaxHops, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load %struct.wlan_iface*, %struct.wlan_iface** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @wlan_hwmp_config_get(%struct.wlan_iface* %68, i32 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %63

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %20
  ret i32 0
}

declare dso_local i32 @wlan_config_state(%struct.wlan_iface*, i32) #1

declare dso_local i32 @wlan_get_driver_caps(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_config_get_ioctl(%struct.wlan_iface*, i32) #1

declare dso_local i32 @wlan_get_stats(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_channel_list(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_roam_params(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_tx_params(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_scan_results(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_wepmode(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_weptxkey(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_mac_policy(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_mac_acl_macs(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_get_peerinfo(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_mesh_config_get(%struct.wlan_iface*, i32) #1

declare dso_local i32 @wlan_mesh_get_routelist(%struct.wlan_iface*) #1

declare dso_local i32 @wlan_hwmp_config_get(%struct.wlan_iface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
