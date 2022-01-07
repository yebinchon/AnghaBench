; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%union.ecore_qable_obj = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i32*)*, i64 (%struct.ecore_vlan_mac_obj*)*, %struct.ecore_exe_queue_obj }
%struct.bxe_softc.0 = type opaque
%struct.ecore_exe_queue_obj = type { i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)* }
%struct.ecore_exeq_elem = type opaque
%struct.ecore_exeq_elem.1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [64 x i8] c"ADD command is not allowed considering current registry state.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"There is a pending ADD command already\0A\00", align 1
@ECORE_EXISTS = common dso_local global i32 0, align 4
@ECORE_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem.1*)* @ecore_validate_vlan_mac_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_validate_vlan_mac_add(%struct.bxe_softc* %0, %union.ecore_qable_obj* %1, %struct.ecore_exeq_elem.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %union.ecore_qable_obj*, align 8
  %7 = alloca %struct.ecore_exeq_elem.1*, align 8
  %8 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %9 = alloca %struct.ecore_exe_queue_obj*, align 8
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %union.ecore_qable_obj* %1, %union.ecore_qable_obj** %6, align 8
  store %struct.ecore_exeq_elem.1* %2, %struct.ecore_exeq_elem.1** %7, align 8
  %11 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %12 = bitcast %union.ecore_qable_obj* %11 to %struct.ecore_vlan_mac_obj*
  store %struct.ecore_vlan_mac_obj* %12, %struct.ecore_vlan_mac_obj** %8, align 8
  %13 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %14 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %13, i32 0, i32 2
  store %struct.ecore_exe_queue_obj* %14, %struct.ecore_exe_queue_obj** %9, align 8
  %15 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %16 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %15, i32 0, i32 0
  %17 = load i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i32*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i32*)** %16, align 8
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %19 = bitcast %struct.bxe_softc* %18 to %struct.bxe_softc.0*
  %20 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %21 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = call i32 %17(%struct.bxe_softc.0* %19, %struct.ecore_vlan_mac_obj* %20, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %30 = call i32 @ECORE_MSG(%struct.bxe_softc* %29, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %9, align 8
  %34 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %33, i32 0, i32 0
  %35 = load i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)*, i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)** %34, align 8
  %36 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %9, align 8
  %37 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %38 = bitcast %struct.ecore_exeq_elem.1* %37 to %struct.ecore_exeq_elem*
  %39 = call i64 %35(%struct.ecore_exe_queue_obj* %36, %struct.ecore_exeq_elem* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %43 = call i32 @ECORE_MSG(%struct.bxe_softc* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ECORE_EXISTS, align 4
  store i32 %44, i32* %4, align 4
  br label %64

45:                                               ; preds = %32
  %46 = load i32, i32* @ECORE_DONT_CONSUME_CAM_CREDIT, align 4
  %47 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %48 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i64 @ECORE_TEST_BIT(i32 %46, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %45
  %54 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %54, i32 0, i32 1
  %56 = load i64 (%struct.ecore_vlan_mac_obj*)*, i64 (%struct.ecore_vlan_mac_obj*)** %55, align 8
  %57 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %58 = call i64 %56(%struct.ecore_vlan_mac_obj* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %53, %45
  %63 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %60, %41, %28
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
