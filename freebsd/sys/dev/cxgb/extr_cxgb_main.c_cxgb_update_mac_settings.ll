; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_update_mac_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgb/extr_cxgb_main.c_cxgb_update_mac_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, i32, %struct.cmac, %struct.ifnet* }
%struct.cmac = type { i32 }
%struct.ifnet = type { i32, i32 }
%struct.t3_rx_mode = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@IFCAP_VLAN_MTU = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_info*)* @cxgb_update_mac_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb_update_mac_settings(%struct.port_info* %0) #0 {
  %2 = alloca %struct.port_info*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.t3_rx_mode, align 4
  %5 = alloca %struct.cmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %2, align 8
  %8 = load %struct.port_info*, %struct.port_info** %2, align 8
  %9 = getelementptr inbounds %struct.port_info, %struct.port_info* %8, i32 0, i32 4
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %3, align 8
  %11 = load %struct.port_info*, %struct.port_info** %2, align 8
  %12 = getelementptr inbounds %struct.port_info, %struct.port_info* %11, i32 0, i32 3
  store %struct.cmac* %12, %struct.cmac** %5, align 8
  %13 = load %struct.port_info*, %struct.port_info** %2, align 8
  %14 = call i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info* %13)
  %15 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %16 = call i32 @IF_LLADDR(%struct.ifnet* %15)
  %17 = load %struct.port_info*, %struct.port_info** %2, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %21 = call i32 @bcopy(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %26 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFCAP_VLAN_MTU, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load %struct.cmac*, %struct.cmac** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @t3_mac_set_mtu(%struct.cmac* %45, i32 %46)
  %48 = load %struct.port_info*, %struct.port_info** %2, align 8
  %49 = getelementptr inbounds %struct.port_info, %struct.port_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.port_info*, %struct.port_info** %2, align 8
  %52 = getelementptr inbounds %struct.port_info, %struct.port_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @t3_set_vlan_accel(i32 %50, i32 %54, i32 %55)
  %57 = load %struct.cmac*, %struct.cmac** %5, align 8
  %58 = load %struct.port_info*, %struct.port_info** %2, align 8
  %59 = getelementptr inbounds %struct.port_info, %struct.port_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @t3_mac_set_address(%struct.cmac* %57, i32 0, i32 %60)
  %62 = load %struct.port_info*, %struct.port_info** %2, align 8
  %63 = call i32 @t3_init_rx_mode(%struct.t3_rx_mode* %4, %struct.port_info* %62)
  %64 = load %struct.cmac*, %struct.cmac** %5, align 8
  %65 = call i32 @t3_mac_set_rx_mode(%struct.cmac* %64, %struct.t3_rx_mode* %4)
  ret void
}

declare dso_local i32 @PORT_LOCK_ASSERT_OWNED(%struct.port_info*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @t3_mac_set_mtu(%struct.cmac*, i32) #1

declare dso_local i32 @t3_set_vlan_accel(i32, i32, i32) #1

declare dso_local i32 @t3_mac_set_address(%struct.cmac*, i32, i32) #1

declare dso_local i32 @t3_init_rx_mode(%struct.t3_rx_mode*, %struct.port_info*) #1

declare dso_local i32 @t3_mac_set_rx_mode(%struct.cmac*, %struct.t3_rx_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
