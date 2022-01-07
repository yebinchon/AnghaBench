; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_vxlan_fltr_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_vxlan_fltr_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_credit_pool_obj = type { i32 }
%union.ecore_qable_obj = type { i32 }

@ecore_get_credit_vlan_mac = common dso_local global i32 0, align 4
@ecore_put_credit_vlan_mac = common dso_local global i32 0, align 4
@ecore_get_cam_offset_mac = common dso_local global i32 0, align 4
@ecore_put_cam_offset_mac = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Do not support chips others than E2/E3\0A\00", align 1
@ecore_set_one_vxlan_fltr_e2 = common dso_local global i32 0, align 4
@ecore_check_vxlan_fltr_del = common dso_local global i32 0, align 4
@ecore_check_vxlan_fltr_add = common dso_local global i32 0, align 4
@ecore_check_move = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES = common dso_local global i32 0, align 4
@CLASSIFY_RULES_COUNT = common dso_local global i32 0, align 4
@ecore_validate_vlan_mac = common dso_local global i32 0, align 4
@ecore_remove_vlan_mac = common dso_local global i32 0, align 4
@ecore_optimize_vlan_mac = common dso_local global i32 0, align 4
@ecore_execute_vlan_mac = common dso_local global i32 0, align 4
@ecore_exeq_get_vxlan_fltr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_vxlan_fltr_obj(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, i64* %8, i32 %9, %struct.ecore_credit_pool_obj* %10, %struct.ecore_credit_pool_obj* %11) #0 {
  %13 = alloca %struct.bxe_softc*, align 8
  %14 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.ecore_credit_pool_obj*, align 8
  %24 = alloca %struct.ecore_credit_pool_obj*, align 8
  %25 = alloca %union.ecore_qable_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %13, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %14, align 8
  store i32 %2, i32* %15, align 4
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i8* %5, i8** %18, align 8
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i64* %8, i64** %21, align 8
  store i32 %9, i32* %22, align 4
  store %struct.ecore_credit_pool_obj* %10, %struct.ecore_credit_pool_obj** %23, align 8
  store %struct.ecore_credit_pool_obj* %11, %struct.ecore_credit_pool_obj** %24, align 8
  %26 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %27 = bitcast %struct.ecore_vlan_mac_obj* %26 to %union.ecore_qable_obj*
  store %union.ecore_qable_obj* %27, %union.ecore_qable_obj** %25, align 8
  %28 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i8*, i8** %18, align 8
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %20, align 4
  %35 = load i64*, i64** %21, align 8
  %36 = load i32, i32* %22, align 4
  %37 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %23, align 8
  %38 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %24, align 8
  %39 = call i32 @ecore_init_vlan_mac_common(%struct.ecore_vlan_mac_obj* %28, i32 %29, i32 %30, i32 %31, i8* %32, i32 %33, i32 %34, i64* %35, i32 %36, %struct.ecore_credit_pool_obj* %37, %struct.ecore_credit_pool_obj* %38)
  %40 = load i32, i32* @ecore_get_credit_vlan_mac, align 4
  %41 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %42 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ecore_put_credit_vlan_mac, align 4
  %44 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %45 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ecore_get_cam_offset_mac, align 4
  %47 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %48 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @ecore_put_cam_offset_mac, align 4
  %50 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %51 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  %53 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %12
  %56 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 (...) @ECORE_BUG()
  br label %85

58:                                               ; preds = %12
  %59 = load i32, i32* @ecore_set_one_vxlan_fltr_e2, align 4
  %60 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %61 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @ecore_check_vxlan_fltr_del, align 4
  %63 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %64 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ecore_check_vxlan_fltr_add, align 4
  %66 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %67 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @ecore_check_move, align 4
  %69 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %70 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES, align 4
  %72 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %73 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  %75 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %76 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %75, i32 0, i32 0
  %77 = load i32, i32* @CLASSIFY_RULES_COUNT, align 4
  %78 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %25, align 8
  %79 = load i32, i32* @ecore_validate_vlan_mac, align 4
  %80 = load i32, i32* @ecore_remove_vlan_mac, align 4
  %81 = load i32, i32* @ecore_optimize_vlan_mac, align 4
  %82 = load i32, i32* @ecore_execute_vlan_mac, align 4
  %83 = load i32, i32* @ecore_exeq_get_vxlan_fltr, align 4
  %84 = call i32 @ecore_exe_queue_init(%struct.bxe_softc* %74, i32* %76, i32 %77, %union.ecore_qable_obj* %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %58, %55
  ret void
}

declare dso_local i32 @ecore_init_vlan_mac_common(%struct.ecore_vlan_mac_obj*, i32, i32, i32, i8*, i32, i32, i64*, i32, %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_ERR(i8*) #1

declare dso_local i32 @ECORE_BUG(...) #1

declare dso_local i32 @ecore_exe_queue_init(%struct.bxe_softc*, i32*, i32, %union.ecore_qable_obj*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
