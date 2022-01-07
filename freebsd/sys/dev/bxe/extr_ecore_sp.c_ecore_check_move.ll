; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_check_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_check_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %union.ecore_classification_ramrod_data*)*, %struct.ecore_vlan_mac_registry_elem* (%struct.bxe_softc.1*, %struct.ecore_vlan_mac_obj*, %union.ecore_classification_ramrod_data*)* }
%struct.bxe_softc.0 = type opaque
%struct.ecore_vlan_mac_registry_elem = type { i32 }
%struct.bxe_softc.1 = type opaque
%union.ecore_classification_ramrod_data = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj*, %union.ecore_classification_ramrod_data*)* @ecore_check_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_check_move(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj* %2, %union.ecore_classification_ramrod_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %9 = alloca %union.ecore_classification_ramrod_data*, align 8
  %10 = alloca %struct.ecore_vlan_mac_registry_elem*, align 8
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %7, align 8
  store %struct.ecore_vlan_mac_obj* %2, %struct.ecore_vlan_mac_obj** %8, align 8
  store %union.ecore_classification_ramrod_data* %3, %union.ecore_classification_ramrod_data** %9, align 8
  %12 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %12, i32 0, i32 1
  %14 = load %struct.ecore_vlan_mac_registry_elem* (%struct.bxe_softc.1*, %struct.ecore_vlan_mac_obj*, %union.ecore_classification_ramrod_data*)*, %struct.ecore_vlan_mac_registry_elem* (%struct.bxe_softc.1*, %struct.ecore_vlan_mac_obj*, %union.ecore_classification_ramrod_data*)** %13, align 8
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %16 = bitcast %struct.bxe_softc* %15 to %struct.bxe_softc.1*
  %17 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %18 = load %union.ecore_classification_ramrod_data*, %union.ecore_classification_ramrod_data** %9, align 8
  %19 = call %struct.ecore_vlan_mac_registry_elem* %14(%struct.bxe_softc.1* %16, %struct.ecore_vlan_mac_obj* %17, %union.ecore_classification_ramrod_data* %18)
  store %struct.ecore_vlan_mac_registry_elem* %19, %struct.ecore_vlan_mac_registry_elem** %10, align 8
  %20 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %21 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %20, i32 0, i32 0
  %22 = load i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %union.ecore_classification_ramrod_data*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %union.ecore_classification_ramrod_data*)** %21, align 8
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %24 = bitcast %struct.bxe_softc* %23 to %struct.bxe_softc.0*
  %25 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %26 = load %union.ecore_classification_ramrod_data*, %union.ecore_classification_ramrod_data** %9, align 8
  %27 = call i32 %22(%struct.bxe_softc.0* %24, %struct.ecore_vlan_mac_obj* %25, %union.ecore_classification_ramrod_data* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load %struct.ecore_vlan_mac_registry_elem*, %struct.ecore_vlan_mac_registry_elem** %10, align 8
  %32 = icmp ne %struct.ecore_vlan_mac_registry_elem* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
