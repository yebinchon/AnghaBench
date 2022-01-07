; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_set_rdata_e1x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_vlan_mac_set_rdata_e1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32 }
%struct.mac_configuration_cmd = type { i32, %struct.mac_configuration_entry* }
%struct.mac_configuration_entry = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"%s MAC %02x:%02x:%02x:%02x:%02x:%02x CLID %d CAM offset %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"setting\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"clearing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32, i32*, i32, i32, %struct.mac_configuration_cmd*)* @ecore_vlan_mac_set_rdata_e1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_vlan_mac_set_rdata_e1x(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6, i32 %7, %struct.mac_configuration_cmd* %8) #0 {
  %10 = alloca %struct.bxe_softc*, align 8
  %11 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mac_configuration_cmd*, align 8
  %19 = alloca %struct.mac_configuration_entry*, align 8
  %20 = alloca %struct.ecore_raw_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %10, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.mac_configuration_cmd* %8, %struct.mac_configuration_cmd** %18, align 8
  %21 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %18, align 8
  %22 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %21, i32 0, i32 1
  %23 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %22, align 8
  %24 = getelementptr inbounds %struct.mac_configuration_entry, %struct.mac_configuration_entry* %23, i64 0
  store %struct.mac_configuration_entry* %24, %struct.mac_configuration_entry** %19, align 8
  %25 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %11, align 8
  %26 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %25, i32 0, i32 0
  store %struct.ecore_raw_obj* %26, %struct.ecore_raw_obj** %20, align 8
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %28 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %11, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %18, align 8
  %32 = getelementptr inbounds %struct.mac_configuration_cmd, %struct.mac_configuration_cmd* %31, i32 0, i32 0
  %33 = call i32 @ecore_vlan_mac_set_rdata_hdr_e1x(%struct.bxe_softc* %27, %struct.ecore_vlan_mac_obj* %28, i32 %29, i32 %30, i32* %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %35 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %11, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load %struct.mac_configuration_entry*, %struct.mac_configuration_entry** %19, align 8
  %41 = call i32 @ecore_vlan_mac_set_cfg_entry_e1x(%struct.bxe_softc* %34, %struct.ecore_vlan_mac_obj* %35, i32 %36, i32 %37, i32* %38, i32 %39, %struct.mac_configuration_entry* %40)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i32*, i32** %15, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %15, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %15, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %15, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %15, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %15, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %20, align 8
  %66 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %13, align 4
  %69 = call i32 @ECORE_MSG(%struct.bxe_softc* %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %49, i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @ecore_vlan_mac_set_rdata_hdr_e1x(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*) #1

declare dso_local i32 @ecore_vlan_mac_set_cfg_entry_e1x(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32*, i32, %struct.mac_configuration_entry*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
