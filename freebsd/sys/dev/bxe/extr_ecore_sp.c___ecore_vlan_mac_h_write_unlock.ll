; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c___ecore_vlan_mac_h_write_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c___ecore_vlan_mac_h_write_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i64 }

@.str = private unnamed_addr constant [62 x i8] c"vlan_mac_lock - writer release encountered a pending request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*)* @__ecore_vlan_mac_h_write_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ecore_vlan_mac_h_write_unlock(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.ecore_vlan_mac_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %4, align 8
  br label %5

5:                                                ; preds = %10, %2
  %6 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %4, align 8
  %7 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %5
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = call i32 @ECORE_MSG(%struct.bxe_softc* %11, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %14 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %4, align 8
  %15 = call i32 @__ecore_vlan_mac_h_exec_pending(%struct.bxe_softc* %13, %struct.ecore_vlan_mac_obj* %14)
  br label %5

16:                                               ; preds = %5
  ret void
}

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @__ecore_vlan_mac_h_exec_pending(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
