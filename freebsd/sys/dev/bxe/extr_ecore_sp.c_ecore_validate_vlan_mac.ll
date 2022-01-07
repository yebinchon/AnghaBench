; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%union.ecore_qable_obj = type { i32 }
%struct.ecore_exeq_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem*)* @ecore_validate_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_validate_vlan_mac(%struct.bxe_softc* %0, %union.ecore_qable_obj* %1, %struct.ecore_exeq_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %union.ecore_qable_obj*, align 8
  %7 = alloca %struct.ecore_exeq_elem*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %union.ecore_qable_obj* %1, %union.ecore_qable_obj** %6, align 8
  store %struct.ecore_exeq_elem* %2, %struct.ecore_exeq_elem** %7, align 8
  %8 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %9 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %28 [
    i32 130, label %13
    i32 129, label %18
    i32 128, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %15 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %16 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %17 = call i32 @ecore_validate_vlan_mac_add(%struct.bxe_softc* %14, %union.ecore_qable_obj* %15, %struct.ecore_exeq_elem* %16)
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %20 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %21 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %22 = call i32 @ecore_validate_vlan_mac_del(%struct.bxe_softc* %19, %union.ecore_qable_obj* %20, %struct.ecore_exeq_elem* %21)
  store i32 %22, i32* %4, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %25 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %26 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %27 = call i32 @ecore_validate_vlan_mac_move(%struct.bxe_softc* %24, %union.ecore_qable_obj* %25, %struct.ecore_exeq_elem* %26)
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %23, %18, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ecore_validate_vlan_mac_add(%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem*) #1

declare dso_local i32 @ecore_validate_vlan_mac_del(%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem*) #1

declare dso_local i32 @ecore_validate_vlan_mac_move(%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
