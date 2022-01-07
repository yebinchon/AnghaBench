; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_mac_e1x.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_set_one_mac_e1x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.ecore_raw_obj }
%struct.ecore_raw_obj = type { i32, i64 }
%struct.ecore_exeq_elem = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.mac_configuration_cmd = type { i32 }

@ECORE_VLAN_MAC_ADD = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ETH_VLAN_FILTER_ANY_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, %struct.ecore_exeq_elem*, i32, i32)* @ecore_set_one_mac_e1x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_set_one_mac_e1x(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, %struct.ecore_exeq_elem* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca %struct.ecore_exeq_elem*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ecore_raw_obj*, align 8
  %12 = alloca %struct.mac_configuration_cmd*, align 8
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %7, align 8
  store %struct.ecore_exeq_elem* %2, %struct.ecore_exeq_elem** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %14, i32 0, i32 0
  store %struct.ecore_raw_obj* %15, %struct.ecore_raw_obj** %11, align 8
  %16 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %17 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.mac_configuration_cmd*
  store %struct.mac_configuration_cmd* %19, %struct.mac_configuration_cmd** %12, align 8
  %20 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %21 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ECORE_VLAN_MAC_ADD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @TRUE, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @FALSE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %13, align 4
  %33 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %34 = call i32 @ECORE_MEMSET(%struct.mac_configuration_cmd* %33, i32 0, i32 4)
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %36 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %37 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %11, align 8
  %38 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %8, align 8
  %43 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @ETH_VLAN_FILTER_ANY_VLAN, align 4
  %50 = load %struct.mac_configuration_cmd*, %struct.mac_configuration_cmd** %12, align 8
  %51 = call i32 @ecore_vlan_mac_set_rdata_e1x(%struct.bxe_softc* %35, %struct.ecore_vlan_mac_obj* %36, i32 %39, i32 %40, i32 %41, i32 %48, i32 0, i32 %49, %struct.mac_configuration_cmd* %50)
  ret void
}

declare dso_local i32 @ECORE_MEMSET(%struct.mac_configuration_cmd*, i32, i32) #1

declare dso_local i32 @ecore_vlan_mac_set_rdata_e1x(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i32, i32, i32, i32, i32, i32, %struct.mac_configuration_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
