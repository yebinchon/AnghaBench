; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_set_rdata_hdr_e1x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_set_rdata_hdr_e1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32 }
%struct.mac_configuration_hdr = type { i32, i32, i32, i64 }

@ECORE_SWCID_MASK = common dso_local global i32 0, align 4
@ECORE_SWCID_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, %struct.mac_configuration_hdr*)* @ecore_vlan_mac_set_rdata_hdr_e1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_vlan_mac_set_rdata_hdr_e1x(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, i32 %2, i32 %3, %struct.mac_configuration_hdr* %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mac_configuration_hdr*, align 8
  %11 = alloca %struct.ecore_raw_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.mac_configuration_hdr* %4, %struct.mac_configuration_hdr** %10, align 8
  %12 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %12, i32 0, i32 0
  store %struct.ecore_raw_obj* %13, %struct.ecore_raw_obj** %11, align 8
  %14 = load %struct.mac_configuration_hdr*, %struct.mac_configuration_hdr** %10, align 8
  %15 = getelementptr inbounds %struct.mac_configuration_hdr, %struct.mac_configuration_hdr* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.mac_configuration_hdr*, %struct.mac_configuration_hdr** %10, align 8
  %19 = getelementptr inbounds %struct.mac_configuration_hdr, %struct.mac_configuration_hdr* %18, i32 0, i32 3
  store i64 %17, i64* %19, align 8
  %20 = call i32 @ECORE_CPU_TO_LE16(i32 255)
  %21 = load %struct.mac_configuration_hdr*, %struct.mac_configuration_hdr** %10, align 8
  %22 = getelementptr inbounds %struct.mac_configuration_hdr, %struct.mac_configuration_hdr* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %24 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ECORE_SWCID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ECORE_SWCID_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %27, %30
  %32 = call i32 @ECORE_CPU_TO_LE32(i32 %31)
  %33 = load %struct.mac_configuration_hdr*, %struct.mac_configuration_hdr** %10, align 8
  %34 = getelementptr inbounds %struct.mac_configuration_hdr, %struct.mac_configuration_hdr* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret void
}

declare dso_local i32 @ECORE_CPU_TO_LE16(i32) #1

declare dso_local i32 @ECORE_CPU_TO_LE32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
