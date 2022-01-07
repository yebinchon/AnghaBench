; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_vlan_mac_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_init_vlan_mac_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.ecore_vlan_mac_obj = type { i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.ecore_credit_pool_obj = type { i32 }
%union.ecore_qable_obj = type { i32 }

@ecore_get_credit_vlan_mac = common dso_local global i32 0, align 4
@ecore_put_credit_vlan_mac = common dso_local global i32 0, align 4
@ecore_get_cam_offset_mac = common dso_local global i32 0, align 4
@ecore_put_cam_offset_mac = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Do not support chips others than E2\0A\00", align 1
@ecore_set_one_vlan_mac_e1h = common dso_local global i32 0, align 4
@ecore_check_vlan_mac_del = common dso_local global i8* null, align 8
@ecore_check_vlan_mac_add = common dso_local global i8* null, align 8
@ecore_check_move_always_err = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_SET_MAC = common dso_local global i32 0, align 4
@ecore_validate_vlan_mac = common dso_local global i32 0, align 4
@ecore_remove_vlan_mac = common dso_local global i32 0, align 4
@ecore_optimize_vlan_mac = common dso_local global i32 0, align 4
@ecore_execute_vlan_mac = common dso_local global i32 0, align 4
@ecore_exeq_get_vlan_mac = common dso_local global i32 0, align 4
@ecore_set_one_vlan_mac_e2 = common dso_local global i32 0, align 4
@ecore_check_move = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES = common dso_local global i32 0, align 4
@CLASSIFY_RULES_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_init_vlan_mac_obj(%struct.bxe_softc* %0, %struct.ecore_vlan_mac_obj* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32 %7, i64* %8, i32 %9, %struct.ecore_credit_pool_obj* %10, %struct.ecore_credit_pool_obj* %11) #0 {
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
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @ecore_put_credit_vlan_mac, align 4
  %44 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %45 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ecore_get_cam_offset_mac, align 4
  %47 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %48 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ecore_put_cam_offset_mac, align 4
  %50 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %51 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  %53 = call i64 @CHIP_IS_E1(%struct.bxe_softc* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %12
  %56 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %57 = call i32 (...) @ECORE_BUG()
  br label %116

58:                                               ; preds = %12
  %59 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  %60 = call i64 @CHIP_IS_E1H(%struct.bxe_softc* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load i32, i32* @ecore_set_one_vlan_mac_e1h, align 4
  %64 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %65 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** @ecore_check_vlan_mac_del, align 8
  %67 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %68 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @ecore_check_vlan_mac_add, align 8
  %70 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %71 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @ecore_check_move_always_err, align 4
  %73 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %74 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @RAMROD_CMD_ID_ETH_SET_MAC, align 4
  %76 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %77 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  %79 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %80 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %79, i32 0, i32 0
  %81 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %25, align 8
  %82 = load i32, i32* @ecore_validate_vlan_mac, align 4
  %83 = load i32, i32* @ecore_remove_vlan_mac, align 4
  %84 = load i32, i32* @ecore_optimize_vlan_mac, align 4
  %85 = load i32, i32* @ecore_execute_vlan_mac, align 4
  %86 = load i32, i32* @ecore_exeq_get_vlan_mac, align 4
  %87 = call i32 @ecore_exe_queue_init(%struct.bxe_softc* %78, i32* %80, i32 1, %union.ecore_qable_obj* %81, i32 %82, i32 %83, i32 %84, i32 %85, i32 %86)
  br label %115

88:                                               ; preds = %58
  %89 = load i32, i32* @ecore_set_one_vlan_mac_e2, align 4
  %90 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %91 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** @ecore_check_vlan_mac_del, align 8
  %93 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %94 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** @ecore_check_vlan_mac_add, align 8
  %96 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %97 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load i32, i32* @ecore_check_move, align 4
  %99 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %100 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @RAMROD_CMD_ID_ETH_CLASSIFICATION_RULES, align 4
  %102 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %103 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.bxe_softc*, %struct.bxe_softc** %13, align 8
  %105 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %14, align 8
  %106 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %105, i32 0, i32 0
  %107 = load i32, i32* @CLASSIFY_RULES_COUNT, align 4
  %108 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %25, align 8
  %109 = load i32, i32* @ecore_validate_vlan_mac, align 4
  %110 = load i32, i32* @ecore_remove_vlan_mac, align 4
  %111 = load i32, i32* @ecore_optimize_vlan_mac, align 4
  %112 = load i32, i32* @ecore_execute_vlan_mac, align 4
  %113 = load i32, i32* @ecore_exeq_get_vlan_mac, align 4
  %114 = call i32 @ecore_exe_queue_init(%struct.bxe_softc* %104, i32* %106, i32 %107, %union.ecore_qable_obj* %108, i32 %109, i32 %110, i32 %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %88, %62
  br label %116

116:                                              ; preds = %115, %55
  ret void
}

declare dso_local i32 @ecore_init_vlan_mac_common(%struct.ecore_vlan_mac_obj*, i32, i32, i32, i8*, i32, i32, i64*, i32, %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj*) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_ERR(i8*) #1

declare dso_local i32 @ECORE_BUG(...) #1

declare dso_local i64 @CHIP_IS_E1H(%struct.bxe_softc*) #1

declare dso_local i32 @ecore_exe_queue_init(%struct.bxe_softc*, i32*, i32, %union.ecore_qable_obj*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
