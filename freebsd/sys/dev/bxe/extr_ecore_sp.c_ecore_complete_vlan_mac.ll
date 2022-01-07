; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_complete_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_complete_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { %struct.TYPE_5__, %struct.ecore_raw_obj }
%struct.TYPE_5__ = type { i32 }
%struct.ecore_raw_obj = type { i32 (%struct.ecore_raw_obj*)* }
%union.event_ring_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ECORE_INVAL = common dso_local global i32 0, align 4
@RAMROD_CONT = common dso_local global i32 0, align 4
@ECORE_PENDING = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, %union.event_ring_elem*, i64*)* @ecore_complete_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_complete_vlan_mac(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, %union.event_ring_elem* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %8 = alloca %union.event_ring_elem*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.ecore_raw_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %7, align 8
  store %union.event_ring_elem* %2, %union.event_ring_elem** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %13 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %12, i32 0, i32 1
  store %struct.ecore_raw_obj* %13, %struct.ecore_raw_obj** %10, align 8
  %14 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %15 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = call i32 @ECORE_SPIN_LOCK_BH(i32* %16)
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %19 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %20 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %19, i32 0, i32 0
  %21 = call i32 @__ecore_exe_queue_reset_pending(%struct.bxe_softc* %18, %struct.TYPE_5__* %20)
  %22 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %23 = getelementptr inbounds %struct.ecore_raw_obj, %struct.ecore_raw_obj* %22, i32 0, i32 0
  %24 = load i32 (%struct.ecore_raw_obj*)*, i32 (%struct.ecore_raw_obj*)** %23, align 8
  %25 = load %struct.ecore_raw_obj*, %struct.ecore_raw_obj** %10, align 8
  %26 = call i32 %24(%struct.ecore_raw_obj* %25)
  %27 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %28 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @ECORE_SPIN_UNLOCK_BH(i32* %29)
  %31 = load %union.event_ring_elem*, %union.event_ring_elem** %8, align 8
  %32 = bitcast %union.event_ring_elem* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %37, i32* %5, align 4
  br label %62

38:                                               ; preds = %4
  %39 = load i32, i32* @RAMROD_CONT, align 4
  %40 = load i64*, i64** %9, align 8
  %41 = call i64 @ECORE_TEST_BIT(i32 %39, i64* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %45 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %46 = load i64*, i64** %9, align 8
  %47 = call i32 @__ecore_vlan_mac_execute_step(%struct.bxe_softc* %44, %struct.ecore_vlan_mac_obj* %45, i64* %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %62

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %38
  %54 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %7, align 8
  %55 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %54, i32 0, i32 0
  %56 = call i32 @ecore_exe_queue_empty(%struct.TYPE_5__* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load i32, i32* @ECORE_PENDING, align 4
  store i32 %59, i32* %5, align 4
  br label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %58, %50, %36
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @ECORE_SPIN_LOCK_BH(i32*) #1

declare dso_local i32 @__ecore_exe_queue_reset_pending(%struct.bxe_softc*, %struct.TYPE_5__*) #1

declare dso_local i32 @ECORE_SPIN_UNLOCK_BH(i32*) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i64*) #1

declare dso_local i32 @__ecore_vlan_mac_execute_step(%struct.bxe_softc*, %struct.ecore_vlan_mac_obj*, i64*) #1

declare dso_local i32 @ecore_exe_queue_empty(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
