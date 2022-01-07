; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_validate_vlan_mac_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%union.ecore_qable_obj = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i64 (%struct.ecore_vlan_mac_obj*)*, i64 (%struct.ecore_vlan_mac_obj*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj*, i32*)*, %struct.ecore_exe_queue_obj }
%struct.bxe_softc.0 = type opaque
%struct.ecore_exe_queue_obj = type { i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)* }
%struct.ecore_exeq_elem = type opaque
%struct.ecore_exeq_elem.1 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.ecore_vlan_mac_obj* }

@.str = private unnamed_addr constant [64 x i8] c"MOVE command is not allowed considering current registry state\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@ECORE_VLAN_MAC_DEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"There is a pending DEL command on the source queue already\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"There is a pending MOVE command already\0A\00", align 1
@ECORE_EXISTS = common dso_local global i32 0, align 4
@ECORE_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"There is a pending ADD command on the destination queue already\0A\00", align 1
@ECORE_DONT_CONSUME_CAM_CREDIT_DEST = common dso_local global i32 0, align 4
@ECORE_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem.1*)* @ecore_validate_vlan_mac_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_validate_vlan_mac_move(%struct.bxe_softc* %0, %union.ecore_qable_obj* %1, %struct.ecore_exeq_elem.1* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %union.ecore_qable_obj*, align 8
  %7 = alloca %struct.ecore_exeq_elem.1*, align 8
  %8 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %9 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %10 = alloca %struct.ecore_exeq_elem.1, align 8
  %11 = alloca %struct.ecore_exe_queue_obj*, align 8
  %12 = alloca %struct.ecore_exe_queue_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %union.ecore_qable_obj* %1, %union.ecore_qable_obj** %6, align 8
  store %struct.ecore_exeq_elem.1* %2, %struct.ecore_exeq_elem.1** %7, align 8
  %13 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %14 = bitcast %union.ecore_qable_obj* %13 to %struct.ecore_vlan_mac_obj*
  store %struct.ecore_vlan_mac_obj* %14, %struct.ecore_vlan_mac_obj** %8, align 8
  %15 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %16 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 3
  %19 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %18, align 8
  store %struct.ecore_vlan_mac_obj* %19, %struct.ecore_vlan_mac_obj** %9, align 8
  %20 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %21 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %20, i32 0, i32 3
  store %struct.ecore_exe_queue_obj* %21, %struct.ecore_exe_queue_obj** %11, align 8
  %22 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %23 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %22, i32 0, i32 3
  store %struct.ecore_exe_queue_obj* %23, %struct.ecore_exe_queue_obj** %12, align 8
  %24 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %25 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %24, i32 0, i32 2
  %26 = load i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj*, i32*)*, i32 (%struct.bxe_softc.0*, %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj*, i32*)** %25, align 8
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %28 = bitcast %struct.bxe_softc* %27 to %struct.bxe_softc.0*
  %29 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %30 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %31 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %32 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = call i32 %26(%struct.bxe_softc.0* %28, %struct.ecore_vlan_mac_obj* %29, %struct.ecore_vlan_mac_obj* %30, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %3
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %39 = call i32 @ECORE_MSG(%struct.bxe_softc* %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %127

41:                                               ; preds = %3
  %42 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %43 = call i32 @ECORE_MEMCPY(%struct.ecore_exeq_elem.1* %10, %struct.ecore_exeq_elem.1* %42, i32 24)
  %44 = load i32, i32* @ECORE_VLAN_MAC_DEL, align 4
  %45 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %10, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %49 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %48, i32 0, i32 0
  %50 = load i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)*, i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)** %49, align 8
  %51 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %52 = bitcast %struct.ecore_exeq_elem.1* %10 to %struct.ecore_exeq_elem*
  %53 = call i64 %50(%struct.ecore_exe_queue_obj* %51, %struct.ecore_exeq_elem* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %57, i32* %4, align 4
  br label %127

58:                                               ; preds = %41
  %59 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %60 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %59, i32 0, i32 0
  %61 = load i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)*, i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)** %60, align 8
  %62 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %63 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %64 = bitcast %struct.ecore_exeq_elem.1* %63 to %struct.ecore_exeq_elem*
  %65 = call i64 %61(%struct.ecore_exe_queue_obj* %62, %struct.ecore_exeq_elem* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %69 = call i32 @ECORE_MSG(%struct.bxe_softc* %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ECORE_EXISTS, align 4
  store i32 %70, i32* %4, align 4
  br label %127

71:                                               ; preds = %58
  %72 = load i32, i32* @ECORE_VLAN_MAC_ADD, align 4
  %73 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %10, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %12, align 8
  %77 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %76, i32 0, i32 0
  %78 = load i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)*, i64 (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)** %77, align 8
  %79 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %12, align 8
  %80 = bitcast %struct.ecore_exeq_elem.1* %10 to %struct.ecore_exeq_elem*
  %81 = call i64 %78(%struct.ecore_exe_queue_obj* %79, %struct.ecore_exeq_elem* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %85, i32* %4, align 4
  br label %127

86:                                               ; preds = %71
  %87 = load i32, i32* @ECORE_DONT_CONSUME_CAM_CREDIT_DEST, align 4
  %88 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %89 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = call i64 @ECORE_TEST_BIT(i32 %87, i32* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %86
  %95 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %96 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %95, i32 0, i32 1
  %97 = load i64 (%struct.ecore_vlan_mac_obj*)*, i64 (%struct.ecore_vlan_mac_obj*)** %96, align 8
  %98 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %99 = call i64 %97(%struct.ecore_vlan_mac_obj* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %102, i32* %4, align 4
  br label %127

103:                                              ; preds = %94, %86
  %104 = load i32, i32* @ECORE_DONT_CONSUME_CAM_CREDIT, align 4
  %105 = load %struct.ecore_exeq_elem.1*, %struct.ecore_exeq_elem.1** %7, align 8
  %106 = getelementptr inbounds %struct.ecore_exeq_elem.1, %struct.ecore_exeq_elem.1* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = call i64 @ECORE_TEST_BIT(i32 %104, i32* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %103
  %112 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %113 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %112, i32 0, i32 0
  %114 = load i64 (%struct.ecore_vlan_mac_obj*)*, i64 (%struct.ecore_vlan_mac_obj*)** %113, align 8
  %115 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %8, align 8
  %116 = call i64 %114(%struct.ecore_vlan_mac_obj* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %120 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %119, i32 0, i32 0
  %121 = load i64 (%struct.ecore_vlan_mac_obj*)*, i64 (%struct.ecore_vlan_mac_obj*)** %120, align 8
  %122 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %9, align 8
  %123 = call i64 %121(%struct.ecore_vlan_mac_obj* %122)
  %124 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %124, i32* %4, align 4
  br label %127

125:                                              ; preds = %111, %103
  %126 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %118, %101, %83, %67, %55, %37
  %128 = load i32, i32* %4, align 4
  ret i32 %128
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
