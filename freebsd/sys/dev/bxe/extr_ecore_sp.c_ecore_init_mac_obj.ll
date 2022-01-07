; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_mac_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_mac_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.ecore_credit_pool_obj = type { i32 }
%union.ecore_qable_obj = type { i32 }

@ecore_get_credit_mac = common dso_local global i32 0, align 4
@ecore_put_credit_mac = common dso_local global i32 0, align 4
@ecore_get_cam_offset_mac = common dso_local global i32 0, align 4
@ecore_put_cam_offset_mac = common dso_local global i32 0, align 4
@ecore_set_one_mac_e1x = common dso_local global i32 0, align 4
@ecore_check_mac_del = common dso_local global i8* null, align 8
@ecore_check_mac_add = common dso_local global i8* null, align 8
@ecore_check_move_always_err = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_SET_MAC = common dso_local global i32 0, align 4
@ecore_validate_vlan_mac = common dso_local global i32 0, align 4
@ecore_remove_vlan_mac = common dso_local global i32 0, align 4
@ecore_optimize_vlan_mac = common dso_local global i32 0, align 4
@ecore_execute_vlan_mac = common dso_local global i32 0, align 4
@ecore_exeq_get_mac = common dso_local global i32 0, align 4
@ecore_set_one_mac_e2 = common dso_local global i32 0, align 4
@ecore_check_move = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES = common dso_local global i32 0, align 4
@ecore_get_n_elements = common dso_local global i32 0, align 4
@CLASSIFY_RULES_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_mac_obj(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, i64* %8, i32 %9, %struct.ecore_credit_pool_obj* %10) #0 {
  %12 = alloca %struct.bxe_softc*, align 8
  %13 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.ecore_credit_pool_obj*, align 8
  %23 = alloca %union.ecore_qable_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %12, align 8
  store %struct.ecore_vlan_mac_obj* %1, %struct.ecore_vlan_mac_obj** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i64* %8, i64** %20, align 8
  store i32 %9, i32* %21, align 4
  store %struct.ecore_credit_pool_obj* %10, %struct.ecore_credit_pool_obj** %22, align 8
  %24 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %25 = bitcast %struct.ecore_vlan_mac_obj* %24 to %union.ecore_qable_obj*
  store %union.ecore_qable_obj* %25, %union.ecore_qable_obj** %23, align 8
  %26 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i8*, i8** %17, align 8
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %19, align 4
  %33 = load i64*, i64** %20, align 8
  %34 = load i32, i32* %21, align 4
  %35 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %22, align 8
  %36 = call i32 @ecore_init_vlan_mac_common(%struct.ecore_vlan_mac_obj* %26, i32 %27, i32 %28, i32 %29, i8* %30, i32 %31, i32 %32, i64* %33, i32 %34, %struct.ecore_credit_pool_obj* %35, i32* null)
  %37 = load i32, i32* @ecore_get_credit_mac, align 4
  %38 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %39 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @ecore_put_credit_mac, align 4
  %41 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %42 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @ecore_get_cam_offset_mac, align 4
  %44 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %45 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @ecore_put_cam_offset_mac, align 4
  %47 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %48 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %50 = call i64 @CHIP_IS_E1x(%struct.bxe_softc* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %11
  %53 = load i32, i32* @ecore_set_one_mac_e1x, align 4
  %54 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %55 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** @ecore_check_mac_del, align 8
  %57 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %58 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** @ecore_check_mac_add, align 8
  %60 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %61 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* @ecore_check_move_always_err, align 4
  %63 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %64 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @RAMROD_CMD_ID_ETH_SET_MAC, align 4
  %66 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %67 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %69 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %70 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %69, i32 0, i32 0
  %71 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %23, align 8
  %72 = load i32, i32* @ecore_validate_vlan_mac, align 4
  %73 = load i32, i32* @ecore_remove_vlan_mac, align 4
  %74 = load i32, i32* @ecore_optimize_vlan_mac, align 4
  %75 = load i32, i32* @ecore_execute_vlan_mac, align 4
  %76 = load i32, i32* @ecore_exeq_get_mac, align 4
  %77 = call i32 @ecore_exe_queue_init(%struct.bxe_softc* %68, i32* %70, i32 1, %union.ecore_qable_obj* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76)
  br label %108

78:                                               ; preds = %11
  %79 = load i32, i32* @ecore_set_one_mac_e2, align 4
  %80 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %81 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** @ecore_check_mac_del, align 8
  %83 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %84 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load i8*, i8** @ecore_check_mac_add, align 8
  %86 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %87 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* @ecore_check_move, align 4
  %89 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %90 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* @RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES, align 4
  %92 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %93 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 8
  %94 = load i32, i32* @ecore_get_n_elements, align 4
  %95 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %96 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  %98 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %13, align 8
  %99 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %98, i32 0, i32 0
  %100 = load i32, i32* @CLASSIFY_RULES_COUNT, align 4
  %101 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %23, align 8
  %102 = load i32, i32* @ecore_validate_vlan_mac, align 4
  %103 = load i32, i32* @ecore_remove_vlan_mac, align 4
  %104 = load i32, i32* @ecore_optimize_vlan_mac, align 4
  %105 = load i32, i32* @ecore_execute_vlan_mac, align 4
  %106 = load i32, i32* @ecore_exeq_get_mac, align 4
  %107 = call i32 @ecore_exe_queue_init(%struct.bxe_softc* %97, i32* %99, i32 %100, %union.ecore_qable_obj* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %78, %52
  ret void
}

declare dso_local i32 @ecore_init_vlan_mac_common(%struct.ecore_vlan_mac_obj*, i32, i32, i32, i8*, i32, i32, i64*, i32, %struct.ecore_credit_pool_obj*, i32*) #1

declare dso_local i64 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_exe_queue_init(%struct.bxe_softc*, i32*, i32, %union.ecore_qable_obj*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
