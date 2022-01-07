; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%union.ecore_qable_obj = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i64 (%struct.ecore_vlan_mac_obj*)*, %struct.ecore_vlan_mac_registry_elem* (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i32*)*, %struct.ecore_exe_queue_obj }
%struct.ecore_vlan_mac_registry_elem = type { i32 }
%struct.bxe_softc.0 = type opaque
%struct.ecore_exe_queue_obj = type { i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)* }
%struct.ecore_exeq_elem = type opaque
%struct.ecore_exeq_elem.1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"DEL command is not allowed considering current registry state\0A\00", align 1
@ECORE_EXISTS = common dso_local global i32 0, align 4
@ECORE_VLAN_MAC_MOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"There is a pending MOVE command already\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"There is a pending DEL command already\0A\00", align 1
@ECORE_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to return a credit\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem.1*)* @ecore_validate_vlan_mac_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_validate_vlan_mac_del(%struct.bxe_softc* %0, %union.ecore_qable_obj* %1, %struct.ecore_exeq_elem.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %union.ecore_qable_obj*, align 8
  %7 = alloca %struct.ecore_exeq_elem.1*, align 8
  %8 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %9 = alloca %struct.ecore_vlan_mac_registry_elem*, align 8
  %10 = alloca %struct.ecore_exe_queue_obj*, align 8
  %11 = alloca %struct.ecore_exeq_elem.1, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %union.ecore_qable_obj* %1, %union.ecore_qable_obj** %6, align 8
  store %struct.ecore_exeq_elem.1* %2, %struct.ecore_exeq_elem.1** %7, align 8
  %12 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %13 = bitcast %union.ecore_qable_obj* %12 to %struct.ecore_vlan_mac_obj*
  store %struct.ecore_vlan_mac_obj* %13, %struct.ecore_vlan_mac_obj** %8, align 8
  %14 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %15 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %14, i32 0, i32 2
  store %struct.ecore_exe_queue_obj* %15, %struct.ecore_exe_queue_obj** %10, align 8
  %16 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %17 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %16, i32 0, i32 1
  %18 = load %struct.ecore_vlan_mac_registry_elem* (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i32*)*, %struct.ecore_vlan_mac_registry_elem* (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, i32*)** %17, align 8
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %20 = bitcast %struct.bxe_softc* %19 to %struct.bxe_softc.0*
  %21 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %22 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %23 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  %26 = call %struct.ecore_vlan_mac_registry_elem* %18(%struct.bxe_softc.0* %20, %struct.ecore_vlan_mac_obj* %21, i32* %25)
  store %struct.ecore_vlan_mac_registry_elem* %26, %struct.ecore_vlan_mac_registry_elem** %9, align 8
  %27 = load %struct.ecore_vlan_mac_registry_elem*, %struct.ecore_vlan_mac_registry_elem** %9, align 8
  %28 = icmp ne %struct.ecore_vlan_mac_registry_elem* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %3
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %31 = call i32 @ECORE_MSG(%struct.bxe_softc* %30, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ECORE_EXISTS, align 4
  store i32 %32, i32* %4, align 4
  br label %83

33:                                               ; preds = %3
  %34 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %35 = call i32 @ECORE_MEMCPY(%struct.ecore_exeq_elem.1* %11, %struct.ecore_exeq_elem.1* %34, i32 12)
  %36 = load i32, i32* @ECORE_VLAN_MAC_MOVE, align 4
  %37 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %11, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %10, align 8
  %41 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %40, i32 0, i32 0
  %42 = load i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)*, i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)** %41, align 8
  %43 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %10, align 8
  %44 = bitcast %struct.ecore_exeq_elem.1* %11 to %struct.ecore_exeq_elem*
  %45 = call i64 %42(%struct.ecore_exe_queue_obj* %43, %struct.ecore_exeq_elem* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %83

50:                                               ; preds = %33
  %51 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %10, align 8
  %52 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %51, i32 0, i32 0
  %53 = load i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)*, i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)** %52, align 8
  %54 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %10, align 8
  %55 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %56 = bitcast %struct.ecore_exeq_elem.1* %55 to %struct.ecore_exeq_elem*
  %57 = call i64 %53(%struct.ecore_exe_queue_obj* %54, %struct.ecore_exeq_elem* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %61 = call i32 @ECORE_MSG(%struct.bxe_softc* %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ECORE_EXISTS, align 4
  store i32 %62, i32* %4, align 4
  br label %83

63:                                               ; preds = %50
  %64 = load i32, i32* @ECORE_DONT_CONSUME_CAM_CREDIT, align 4
  %65 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %66 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i64 @ECORE_TEST_BIT(i32 %64, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %63
  %72 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %73 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %72, i32 0, i32 0
  %74 = load i64 (%struct.ecore_vlan_mac_obj*)*, i64 (%struct.ecore_vlan_mac_obj*)** %73, align 8
  %75 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %76 = call i64 %74(%struct.ecore_vlan_mac_obj* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %71
  %79 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %80, i32* %4, align 4
  br label %83

81:                                               ; preds = %71, %63
  %82 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %78, %59, %47, %29
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @ECORE_MEMCPY(%struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1*, i32) #1

declare dso_local i32 @ECORE_ERR(i8*) #1

declare dso_local i64 @ECORE_TEST_BIT(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
