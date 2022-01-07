; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_optimize_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_optimize_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%union.ecore_qable_obj = type { %struct.ecore_vlan_mac_obj }
%struct.ecore_vlan_mac_obj = type { i32 (%struct.ecore_vlan_mac_obj*)*, i32 (%struct.ecore_vlan_mac_obj*)*, %struct.ecore_exe_queue_obj }
%struct.ecore_exe_queue_obj = type { i32, %struct.ecore_exeq_elem* (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)* }
%struct.ecore_exeq_elem = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ECORE_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Failed to return the credit for the optimized ADD command\0A\00", align 1
@ECORE_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Failed to recover the credit from the optimized DEL command\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Optimizing %s command\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %union.ecore_qable_obj*, %struct.ecore_exeq_elem*)* @ecore_optimize_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_optimize_vlan_mac(%struct.bxe_softc* %0, %union.ecore_qable_obj* %1, %struct.ecore_exeq_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca %union.ecore_qable_obj*, align 8
  %7 = alloca %struct.ecore_exeq_elem*, align 8
  %8 = alloca %struct.ecore_exeq_elem, align 4
  %9 = alloca %struct.ecore_exeq_elem*, align 8
  %10 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %11 = alloca %struct.ecore_exe_queue_obj*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store %union.ecore_qable_obj* %1, %union.ecore_qable_obj** %6, align 8
  store %struct.ecore_exeq_elem* %2, %struct.ecore_exeq_elem** %7, align 8
  %12 = load %union.ecore_qable_obj*, %union.ecore_qable_obj** %6, align 8
  %13 = bitcast %union.ecore_qable_obj* %12 to %struct.ecore_vlan_mac_obj*
  store %struct.ecore_vlan_mac_obj* %13, %struct.ecore_vlan_mac_obj** %10, align 8
  %14 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %10, align 8
  %15 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %14, i32 0, i32 2
  store %struct.ecore_exe_queue_obj* %15, %struct.ecore_exe_queue_obj** %11, align 8
  %16 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %17 = call i32 @ECORE_MEMCPY(%struct.ecore_exeq_elem* %8, %struct.ecore_exeq_elem* %16, i32 12)
  %18 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %19 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %8, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 128, i32* %26, align 4
  br label %32

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %8, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 129, i32* %30, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %96

32:                                               ; preds = %27, %23
  %33 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %34 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %33, i32 0, i32 1
  %35 = load %struct.ecore_exeq_elem* (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)*, %struct.ecore_exeq_elem* (%struct.ecore_exe_queue_obj*, %struct.ecore_exeq_elem*)** %34, align 8
  %36 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %37 = call %struct.ecore_exeq_elem* %35(%struct.ecore_exe_queue_obj* %36, %struct.ecore_exeq_elem* %8)
  store %struct.ecore_exeq_elem* %37, %struct.ecore_exeq_elem** %9, align 8
  %38 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %9, align 8
  %39 = icmp ne %struct.ecore_exeq_elem* %38, null
  br i1 %39, label %40, label %95

40:                                               ; preds = %32
  %41 = load i32, i32* @ECORE_DONT_CONSUME_CAM_CREDIT, align 4
  %42 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %9, align 8
  %43 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = call i32 @ECORE_TEST_BIT(i32 %41, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %76, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %8, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 129
  br i1 %53, label %54, label %64

54:                                               ; preds = %48
  %55 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %10, align 8
  %56 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %55, i32 0, i32 1
  %57 = load i32 (%struct.ecore_vlan_mac_obj*)*, i32 (%struct.ecore_vlan_mac_obj*)** %56, align 8
  %58 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %10, align 8
  %59 = call i32 %57(%struct.ecore_vlan_mac_obj* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %63, i32* %4, align 4
  br label %96

64:                                               ; preds = %54, %48
  %65 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %10, align 8
  %66 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %65, i32 0, i32 0
  %67 = load i32 (%struct.ecore_vlan_mac_obj*)*, i32 (%struct.ecore_vlan_mac_obj*)** %66, align 8
  %68 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %10, align 8
  %69 = call i32 %67(%struct.ecore_vlan_mac_obj* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %64
  %72 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @ECORE_INVAL, align 4
  store i32 %73, i32* %4, align 4
  br label %96

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %78 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %7, align 8
  %79 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 129
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %86 = call i32 @ECORE_MSG(%struct.bxe_softc* %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %9, align 8
  %88 = getelementptr inbounds %struct.ecore_exeq_elem, %struct.ecore_exeq_elem* %87, i32 0, i32 0
  %89 = load %struct.ecore_exe_queue_obj*, %struct.ecore_exe_queue_obj** %11, align 8
  %90 = getelementptr inbounds %struct.ecore_exe_queue_obj, %struct.ecore_exe_queue_obj* %89, i32 0, i32 0
  %91 = call i32 @ECORE_LIST_REMOVE_ENTRY(i32* %88, i32* %90)
  %92 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %93 = load %struct.ecore_exeq_elem*, %struct.ecore_exeq_elem** %9, align 8
  %94 = call i32 @ecore_exe_queue_free_elem(%struct.bxe_softc* %92, %struct.ecore_exeq_elem* %93)
  store i32 1, i32* %4, align 4
  br label %96

95:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %95, %76, %71, %61, %31
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ECORE_MEMCPY(%struct.ecore_exeq_elem*, %struct.ecore_exeq_elem*, i32) #1

declare dso_local i32 @ECORE_TEST_BIT(i32, i32*) #1

declare dso_local i32 @ECORE_ERR(i8*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i8*) #1

declare dso_local i32 @ECORE_LIST_REMOVE_ENTRY(i32*, i32*) #1

declare dso_local i32 @ecore_exe_queue_free_elem(%struct.bxe_softc*, %struct.ecore_exeq_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
