; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_set_cfg_entry_e1x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_set_cfg_entry_e1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i32 }
%struct.mac_configuration_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@MAC_CONFIGURATION_ENTRY_ACTION_TYPE = common dso_local global i32 0, align 4
@T_ETH_MAC_COMMAND_SET = common dso_local global i32 0, align 4
@MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE = common dso_local global i32 0, align 4
@T_ETH_MAC_COMMAND_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*, i32, %struct.mac_configuration_entry*)* @ecore_vlan_mac_set_cfg_entry_e1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_vlan_mac_set_cfg_entry_e1x(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, i32 %2, i32 %3, i32* %4, i32 %5, %struct.mac_configuration_entry* %6) #0 {
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mac_configuration_entry*, align 8
  %15 = alloca %struct.ecore_raw_obj*, align 8
  %16 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %8, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.mac_configuration_entry* %6, %struct.mac_configuration_entry** %14, align 8
  %17 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %18 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %17, i32 0, i32 0
  store %struct.ecore_raw_obj* %18, %struct.ecore_raw_obj** %15, align 8
  %19 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %15, align 8
  %20 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 1, %21
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = call i32 @ECORE_CPU_TO_LE32(i32 %23)
  %25 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %26 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %15, align 8
  %28 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %31 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @ECORE_CPU_TO_LE16(i32 %32)
  %34 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %35 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %7
  %39 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %40 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAC_CONFIGURATION_ENTRY_ACTION_TYPE, align 4
  %43 = load i32, i32* @T_ETH_MAC_COMMAND_SET, align 4
  %44 = call i32 @ECORE_SET_FLAG(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %46 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @ECORE_SET_FLAG(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %52 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %51, i32 0, i32 3
  %53 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %54 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %53, i32 0, i32 2
  %55 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %56 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %55, i32 0, i32 1
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @ecore_set_fw_mac_addr(i32* %52, i32* %54, i32* %56, i32* %57)
  br label %66

59:                                               ; preds = %7
  %60 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %14, align 8
  %61 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MAC_CONFIGURATION_ENTRY_ACTION_TYPE, align 4
  %64 = load i32, i32* @T_ETH_MAC_COMMAND_INVALIDATE, align 4
  %65 = call i32 @ECORE_SET_FLAG(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %38
  ret void
}

declare dso_local i32 @ECORE_CPU_TO_LE32(i32) #1

declare dso_local i32 @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ECORE_SET_FLAG(i32, i32, i32) #1

declare dso_local i32 @ecore_set_fw_mac_addr(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
